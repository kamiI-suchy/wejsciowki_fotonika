#!/usr/bin/env python3
"""
Skrypt do analizy danych doświadczenia PLANCK – Wyznaczanie stałej Plancka metodą optyczną.

Oblicza:
  - centralną długość fali i połówkową szerokość widma (FWHM) dla każdej diody LED
  - napięcie progowe na podstawie charakterystyk I-U
  - stałą Plancka metodą regresji liniowej i jako średnią wartości indywidualnych

Autor: skrypt wygenerowany na potrzeby sprawozdania z ćwiczenia 06_PLANCK
Data:  marzec 2026
"""

import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from scipy.signal import savgol_filter
import os

# ─── Ścieżka robocza ─────────────────────────────────────────────────────────
WORKDIR = os.path.dirname(os.path.abspath(__file__))

# ─── Stałe fizyczne ──────────────────────────────────────────────────────────
C_LIGHT = 2.998e8   # m/s
E_CHARGE = 1.602e-19  # C
H_LITERATURE = 6.626e-34  # J·s


# ─── Pomocnicze funkcje ──────────────────────────────────────────────────────

def parse_spectrum_file(filepath: str):
    """Wczytaj plik spektrometru – zwróć tablice długości fali i natężenia."""
    wavelengths, intensities = [], []
    in_data = False
    with open(filepath, encoding='utf-8') as fh:
        for line in fh:
            line = line.strip()
            if line == '===START===':
                in_data = True
                continue
            if line == '===END===':
                break
            if in_data and line:
                parts = line.split('\t')
                if len(parts) == 2:
                    try:
                        wavelengths.append(float(parts[0]))
                        intensities.append(float(parts[1]))
                    except ValueError:
                        pass
    return np.array(wavelengths), np.array(intensities)


def find_peak_and_fwhm(wavelengths: np.ndarray, intensities: np.ndarray,
                       bg_percentile: int = 10):
    """
    Wyznacz centralną długość fali (maximum wygładzonego widma)
    i połówkową szerokość widma (FWHM) po odjęciu tła.

    Parametry
    ---------
    wavelengths   – tablica długości fal [nm]
    intensities   – tablica natężeń [j.u.]
    bg_percentile – percentyl do wyznaczenia tła (domyślnie 10)

    Zwraca
    ------
    (lambda_c, fwhm, lambda_left, lambda_right, background, smooth_signal)
    """
    background = np.percentile(intensities, bg_percentile)
    signal = np.maximum(intensities - background, 0)
    smooth = np.maximum(savgol_filter(signal, window_length=21, polyorder=3), 0)

    peak_idx = int(np.argmax(smooth))
    peak_wl = wavelengths[peak_idx]
    half_max = smooth[peak_idx] / 2.0

    # Lewa połowa
    left_idx = peak_idx
    for i in range(peak_idx, -1, -1):
        if smooth[i] <= half_max:
            left_idx = i
            break

    # Prawa połowa
    right_idx = peak_idx
    for i in range(peak_idx, len(smooth)):
        if smooth[i] <= half_max:
            right_idx = i
            break

    # Interpolacja liniowa dla dokładności
    def interp_cross(i_lo, i_hi, target):
        x1, x2 = wavelengths[i_lo], wavelengths[i_hi]
        y1, y2 = smooth[i_lo], smooth[i_hi]
        if abs(y2 - y1) < 1e-12:
            return (x1 + x2) / 2
        return x1 + (target - y1) * (x2 - x1) / (y2 - y1)

    if left_idx < peak_idx:
        lambda_left = interp_cross(left_idx, left_idx + 1, half_max)
    else:
        lambda_left = wavelengths[left_idx]

    if right_idx > peak_idx and right_idx < len(wavelengths):
        lambda_right = interp_cross(right_idx - 1, right_idx, half_max)
    else:
        lambda_right = wavelengths[right_idx]

    return (peak_wl, lambda_right - lambda_left,
            lambda_left, lambda_right, background, smooth)


# ─── Dane spektralne ─────────────────────────────────────────────────────────
COLOR_CFG = {
    'czerwony': {
        'filename':   'dane rozkładu czerwonego.txt',
        'label':      'Czerwona (R)',
        'plot_color': '#CC0000',
        'wl_range':   (570, 700),
    },
    'zielony': {
        'filename':   'dane rozkładu zielonego.txt',
        'label':      'Zielona (G)',
        'plot_color': '#008800',
        'wl_range':   (510, 620),
    },
    'niebieski': {
        'filename':   'dane rozkładu niebieskiego.txt',
        'label':      'Niebieska (B)',
        'plot_color': '#0033CC',
        'wl_range':   (430, 530),
    },
}

# ─── Dane I-U (z pliku PDF: wyniki pomiarów napięcia i natężenia.pdf) ────────
IV_DATA = {
    'czerwony': {
        'U': [1.67, 1.76, 1.83, 1.91, 1.97, 2.02],
        'I': [1, 4, 8, 15, 20, 25],   # mA
    },
    'zielony': {
        'U': [1.80, 1.86, 1.93, 2.00, 2.16, 2.22],
        'I': [1, 3, 6, 12, 24, 30],   # mA
    },
    'niebieski': {
        'U': [2.60, 2.68, 2.87, 3.00, 3.19, 3.27],
        'I': [0.1, 0.2, 0.75, 1.5, 3.0, 4.0],   # mA
    },
}


# ═══════════════════════════════════════════════════════════════════════════════
# 1.  ANALIZA WIDM
# ═══════════════════════════════════════════════════════════════════════════════

print("=" * 60)
print("1. ANALIZA WIDM DIOD LED")
print("=" * 60)

spectral_results = {}
fig, axes = plt.subplots(1, 3, figsize=(16, 5))

for ax, (key, cfg) in zip(axes, COLOR_CFG.items()):
    filepath = os.path.join(WORKDIR, cfg['filename'])
    wl, inten = parse_spectrum_file(filepath)
    lam_c, fwhm, lam_l, lam_r, bg, smooth = find_peak_and_fwhm(wl, inten)

    spectral_results[key] = dict(peak_wl=lam_c, fwhm=fwhm, lam_left=lam_l,
                                  lam_right=lam_r, background=bg, label=cfg['label'])

    print(f"\n  {cfg['label']}:")
    print(f"    λ_c  = {lam_c:.1f} nm")
    print(f"    FWHM = {fwhm:.1f} nm  ({lam_l:.1f} – {lam_r:.1f} nm)")
    print(f"    Tło  = {bg:.1f} j.u.")

    # Rysowanie
    lo, hi = cfg['wl_range']
    mask = (wl >= lo) & (wl <= hi)
    clr = cfg['plot_color']
    half_max_abs = (smooth[np.argmax(smooth)] / 2.0) + bg

    ax.plot(wl[mask], inten[mask], color=clr, alpha=0.35, lw=1, label='Dane surowe')
    ax.plot(wl[mask], smooth[mask] + bg, color=clr, lw=2.0, label='Wygładzone')
    ax.axvline(lam_c, color='black',  ls='--', lw=1.5, label=rf'$\lambda_c={lam_c:.0f}$ nm')
    ax.axhline(half_max_abs, color='gray', ls=':', lw=1.2, label='½ maks.')
    ax.axvline(lam_l, color='purple', ls='-.', lw=1.2, alpha=0.8)
    ax.axvline(lam_r, color='purple', ls='-.', lw=1.2, alpha=0.8,
               label=rf'FWHM $={fwhm:.0f}$ nm')
    ax.set_xlabel(r'Długość fali $\lambda$ [nm]', fontsize=10)
    ax.set_ylabel('Natężenie [j.u.]', fontsize=10)
    ax.set_title(f'Dioda {cfg["label"]}', fontsize=11)
    ax.legend(fontsize=7.5, loc='upper right')
    ax.grid(alpha=0.3)

plt.tight_layout()
out_spectra = os.path.join(WORKDIR, 'wykres_widm.pdf')
plt.savefig(out_spectra, bbox_inches='tight', dpi=150)
plt.savefig(out_spectra.replace('.pdf', '.png'), bbox_inches='tight', dpi=150)
plt.close()
print(f"\n  Wykres widm zapisano: {out_spectra}")


# ═══════════════════════════════════════════════════════════════════════════════
# 2.  CHARAKTERYSTYKI I-U – WYZNACZENIE NAPIĘCIA PROGOWEGO
# ═══════════════════════════════════════════════════════════════════════════════

print("\n" + "=" * 60)
print("2. CHARAKTERYSTYKI I-U – NAPIĘCIE PROGOWE")
print("=" * 60)

threshold_voltages = {}
fig, axes = plt.subplots(1, 3, figsize=(16, 5))

for ax, (key, cfg) in zip(axes, COLOR_CFG.items()):
    U = np.array(IV_DATA[key]['U'])
    I = np.array(IV_DATA[key]['I'])
    clr = cfg['plot_color']

    # Regresja liniowa na ostatnich 4 punktach (region liniowy)
    coeffs = np.polyfit(U[-4:], I[-4:], 1)
    U_prog = -coeffs[1] / coeffs[0]
    threshold_voltages[key] = U_prog

    # Linia ekstrapolacji
    U_fit = np.linspace(U_prog - 0.05, U[-1] + 0.02, 200)
    I_fit = np.polyval(coeffs, U_fit)
    mask_pos = I_fit >= 0

    ax.plot(U, I, 'o', color=clr, ms=7, zorder=5, label='Pomiary')
    ax.plot(U_fit[mask_pos], I_fit[mask_pos], '--', color=clr, lw=2,
            label='Regresja liniowa')
    ax.axvline(U_prog, color='black', ls=':', lw=1.5,
               label=rf'$U_{{prog}}={U_prog:.3f}$ V')
    ax.axhline(0, color='gray', lw=0.7)
    ax.set_xlabel('Napięcie $U$ [V]', fontsize=10)
    ax.set_ylabel('Prąd $I$ [mA]', fontsize=10)
    ax.set_title(f'Dioda {cfg["label"]}', fontsize=11)
    ax.legend(fontsize=8)
    ax.grid(alpha=0.3)
    ax.set_xlim(U[0] - 0.05, U[-1] + 0.05)
    ax.set_ylim(-2, I[-1] + 2)

    print(f"\n  {cfg['label']}:  U_prog = {U_prog:.3f} V")

plt.tight_layout()
out_iv = os.path.join(WORKDIR, 'wykres_IU.pdf')
plt.savefig(out_iv, bbox_inches='tight', dpi=150)
plt.savefig(out_iv.replace('.pdf', '.png'), bbox_inches='tight', dpi=150)
plt.close()
print(f"\n  Wykresy I-U zapisano: {out_iv}")


# ═══════════════════════════════════════════════════════════════════════════════
# 3.  WYZNACZENIE STAŁEJ PLANCKA
# ═══════════════════════════════════════════════════════════════════════════════

print("\n" + "=" * 60)
print("3. WYZNACZENIE STAŁEJ PLANCKA")
print("=" * 60)

COLORS_ORDER = ['czerwony', 'zielony', 'niebieski']
h_individual = []
nu_list = []
U_list = []

print("\n  Wartości indywidualne:")
print(f"  {'Dioda':<14} {'λ_c [nm]':>9} {'U_prog [V]':>11} {'ν [10¹⁴ Hz]':>13} {'h [10⁻³⁴ J·s]':>15}")
print("  " + "-" * 68)
for key in COLORS_ORDER:
    lam = spectral_results[key]['peak_wl'] * 1e-9  # m
    U = threshold_voltages[key]
    nu = C_LIGHT / lam
    h_i = E_CHARGE * U * lam / C_LIGHT
    h_individual.append(h_i)
    nu_list.append(nu)
    U_list.append(U)
    lbl = spectral_results[key]['label']
    print(f"  {lbl:<14} {lam*1e9:>9.1f} {U:>11.3f} {nu/1e14:>13.4f} {h_i/1e-34:>15.4f}")

h_arr = np.array(h_individual)
nu_arr = np.array(nu_list)
U_arr = np.array(U_list)

h_mean = float(np.mean(h_arr))
h_std = float(np.std(h_arr, ddof=1))
h_sem = h_std / np.sqrt(len(h_arr))

# Regresja liniowa przez początek układu (model fizyczny: U_g = (h/e)·ν)
slope_0 = float(np.sum(U_arr * nu_arr) / np.sum(nu_arr ** 2))
h_regression = slope_0 * E_CHARGE

print(f"\n  Średnia h        = ({h_mean/1e-34:.4f} ± {h_sem/1e-34:.4f}) × 10⁻³⁴ J·s")
print(f"  Odch. std.       =  {h_std/1e-34:.4f} × 10⁻³⁴ J·s")
print(f"  h regresja (0)   =  {h_regression/1e-34:.4f} × 10⁻³⁴ J·s")
print(f"  h literatura     =  {H_LITERATURE/1e-34:.4f} × 10⁻³⁴ J·s")
print(f"  Błąd (średnia)   = {abs(h_mean-H_LITERATURE)/H_LITERATURE*100:.1f}%")
print(f"  Błąd (regresja)  = {abs(h_regression-H_LITERATURE)/H_LITERATURE*100:.1f}%")

# Wykres Vg(ν)
fig, ax = plt.subplots(figsize=(8, 6))
PLOT_COLORS = ['#CC0000', '#008800', '#0033CC']

for i, key in enumerate(COLORS_ORDER):
    lbl = spectral_results[key]['label']
    ax.plot(nu_arr[i] / 1e14, U_arr[i], 'o',
            color=PLOT_COLORS[i], ms=10, zorder=5,
            label=f'Dioda {lbl}\n({spectral_results[key]["peak_wl"]:.0f} nm)')

nu_fit = np.linspace(min(nu_arr) * 0.90, max(nu_arr) * 1.05, 300)
ax.plot(nu_fit / 1e14, slope_0 * nu_fit, 'k--', lw=2,
        label=(rf'Regresja: $U_{{prog}} = \frac{{h}}{{e}}\nu$'
               '\n'
               rf'$h = {h_regression/1e-34:.3f} \times 10^{{-34}}$ J·s'))

ax.set_xlabel(r'Częstotliwość $\nu$ [$\times 10^{14}$ Hz]', fontsize=12)
ax.set_ylabel(r'Napięcie progowe $U_{prog}$ [V]', fontsize=12)
ax.set_title('Wyznaczanie stałej Plancka metodą optyczną', fontsize=13)
ax.legend(fontsize=9)
ax.grid(alpha=0.3)
ax.set_xlim(nu_arr.min() / 1e14 * 0.90, nu_arr.max() / 1e14 * 1.05)
ax.set_ylim(0, U_arr.max() * 1.15)

out_planck = os.path.join(WORKDIR, 'wykres_Plancka.pdf')
plt.savefig(out_planck, bbox_inches='tight', dpi=150)
plt.savefig(out_planck.replace('.pdf', '.png'), bbox_inches='tight', dpi=150)
plt.close()
print(f"\n  Wykres Plancka zapisany: {out_planck}")

# ─── Zapis wyników numerycznych ──────────────────────────────────────────────
out_txt = os.path.join(WORKDIR, 'wyniki_numeryczne.txt')
with open(out_txt, 'w', encoding='utf-8') as fh:
    fh.write("WYNIKI ANALIZY – STAŁA PLANCKA METODĄ OPTYCZNĄ\n")
    fh.write("=" * 52 + "\n\n")
    fh.write("1. Widma – centralna długość fali i FWHM\n")
    fh.write("-" * 52 + "\n")
    for key in COLORS_ORDER:
        r = spectral_results[key]
        fh.write(f"  {r['label']:16s}  λ_c = {r['peak_wl']:.1f} nm,  "
                 f"FWHM = {r['fwhm']:.1f} nm\n")
    fh.write("\n2. Napięcia progowe\n")
    fh.write("-" * 52 + "\n")
    for key in COLORS_ORDER:
        lbl = spectral_results[key]['label']
        fh.write(f"  {lbl:16s}  U_prog = {threshold_voltages[key]:.3f} V\n")
    fh.write("\n3. Stała Plancka\n")
    fh.write("-" * 52 + "\n")
    for i, key in enumerate(COLORS_ORDER):
        lbl = spectral_results[key]['label']
        fh.write(f"  {lbl:16s}  h = {h_arr[i]/1e-34:.4f} × 10^-34 J·s\n")
    fh.write(f"\n  Średnia:          h = ({h_mean/1e-34:.4f} ± {h_sem/1e-34:.4f}) × 10^-34 J·s\n")
    fh.write(f"  Regresja (0):     h = {h_regression/1e-34:.4f} × 10^-34 J·s\n")
    fh.write(f"  Literatura:       h = {H_LITERATURE/1e-34:.4f} × 10^-34 J·s\n")
    fh.write(f"  Błąd względny:    {abs(h_mean-H_LITERATURE)/H_LITERATURE*100:.1f}% (średnia)\n")
    fh.write(f"                    {abs(h_regression-H_LITERATURE)/H_LITERATURE*100:.1f}% (regresja)\n")

print(f"\n  Wyniki zapisano: {out_txt}")
print("\nAnaliza zakończona pomyślnie.")

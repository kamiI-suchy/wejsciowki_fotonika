import matplotlib.pyplot as plt
import numpy as np

plt.rcParams.update({
    "font.family": "serif",
    "font.size": 11,
    "axes.titlesize": 13,
    "axes.labelsize": 12,
    "figure.dpi": 150,
    "savefig.dpi": 150,
    "savefig.bbox": "tight",
})

OUT = "wyniki_pomiarow/"

# ── Data from tabele.md ──────────────────────────────────────────────

# Table 1: varying w10 (f=75, d1=400)
w10_vals = np.array([0.25, 0.10, 0.15, 0.20, 0.30])
t1_w_wy = np.array([0.041735, 0.022812, 0.032737, 0.039387, 0.040732])
t1_d2 = np.array([84.057203, 91.913277, 90.480156, 87.604670, 80.991086])
t1_h2 = np.array([9.057203, 16.913277, 15.480156, 12.604670, 5.991086])
t1_theta_rad = np.array([0.004828, 0.008832, 0.006155, 0.005116, 0.004947])
t1_theta_deg = np.array([0.276759, 0.506321, 0.352826, 0.293254, 0.283573])

# Table 2: varying f (w10=0.25, d1=400)
f_vals = np.array([75, 25, 50, 125, 200])
t2_w_wy = np.array([0.041735, 0.012843, 0.026728, 0.075385, 0.135473])
t2_d2 = np.array([84.057203, 25.989583, 54.000601, 150.004783, 258.729768])
t2_h2 = np.array([9.057203, 0.989583, 4.000601, 25.004783, 58.729768])
t2_theta_rad = np.array([0.004828, 0.015689, 0.007539, 0.002673, 0.001487])
t2_theta_deg = np.array([0.276759, 0.899389, 0.432145, 0.153219, 0.085260])

# Table 3: varying d1 (w10=0.25, f=75)
d1_vals = np.array([400, 100, 200, 800, 1200])
t3_w_wy = np.array([0.041735, 0.060252, 0.056066, 0.023777, 0.016067])
t3_d2 = np.array([84.057203, 76.452106, 81.286764, 81.558136, 79.646739])
t3_h2 = np.array([9.057203, 1.452106, 6.286764, 6.558136, 4.646739])
t3_theta_rad = np.array([0.004828, 0.003344, 0.003594, 0.008474, 0.012541])
t3_theta_deg = np.array([0.276759, 0.191703, 0.206015, 0.485777, 0.718886])

# ── Figure 1: Series w10 ─────────────────────────────────────────────

fig, axs = plt.subplots(2, 2, figsize=(10, 8))
fig.suptitle("Seria 1: Wpływ promienia przewężenia wejściowego $w_{10}$\n($f=75$ mm, $d_1=400$ mm)", y=1.01)

axs[0, 0].plot(w10_vals, t1_w_wy, "ko-", markersize=7)
axs[0, 0].set_xlabel("$w_{10}$ [μm]")
axs[0, 0].set_ylabel("$w_{wy}$ [μm]")
axs[0, 0].grid(True, alpha=0.3)

axs[0, 1].plot(w10_vals, t1_d2, "ks-", markersize=7)
axs[0, 1].set_xlabel("$w_{10}$ [μm]")
axs[0, 1].set_ylabel("$d_2$ [mm]")
axs[0, 1].grid(True, alpha=0.3)

axs[1, 0].plot(w10_vals, t1_h2, "k^-", markersize=7)
axs[1, 0].set_xlabel("$w_{10}$ [μm]")
axs[1, 0].set_ylabel("$h_2$ [mm]")
axs[1, 0].grid(True, alpha=0.3)

axs[1, 1].plot(w10_vals, t1_theta_deg, "kD-", markersize=7)
axs[1, 1].set_xlabel("$w_{10}$ [μm]")
axs[1, 1].set_ylabel("$\\theta_{wy}$ [°]")
axs[1, 1].grid(True, alpha=0.3)

plt.tight_layout()
fig.savefig(OUT + "wykres_seria_w10.png")
plt.close()

# ── Figure 2: Series f ───────────────────────────────────────────────

fig, axs = plt.subplots(2, 2, figsize=(10, 8))
fig.suptitle("Seria 2: Wpływ ogniskowej $f$\n($w_{10}=0{,}25$ μm, $d_1=400$ mm)", y=1.01)

axs[0, 0].plot(f_vals, t2_w_wy, "ko-", markersize=7)
axs[0, 0].set_xlabel("$f$ [mm]")
axs[0, 0].set_ylabel("$w_{wy}$ [μm]")
axs[0, 0].grid(True, alpha=0.3)

axs[0, 1].plot(f_vals, t2_d2, "ks-", markersize=7)
axs[0, 1].set_xlabel("$f$ [mm]")
axs[0, 1].set_ylabel("$d_2$ [mm]")
axs[0, 1].grid(True, alpha=0.3)

axs[1, 0].plot(f_vals, t2_h2, "k^-", markersize=7)
axs[1, 0].set_xlabel("$f$ [mm]")
axs[1, 0].set_ylabel("$h_2$ [mm]")
axs[1, 0].grid(True, alpha=0.3)

axs[1, 1].plot(f_vals, t2_theta_deg, "kD-", markersize=7)
axs[1, 1].set_xlabel("$f$ [mm]")
axs[1, 1].set_ylabel("$\\theta_{wy}$ [°]")
axs[1, 1].grid(True, alpha=0.3)

plt.tight_layout()
fig.savefig(OUT + "wykres_seria_f.png")
plt.close()

# ── Figure 3: Series d1 ──────────────────────────────────────────────

fig, axs = plt.subplots(2, 2, figsize=(10, 8))
fig.suptitle("Seria 3: Wpływ odległości przewężenia od soczewki $d_1$\n($w_{10}=0{,}25$ μm, $f=75$ mm)", y=1.01)

axs[0, 0].plot(d1_vals, t3_w_wy, "ko-", markersize=7)
axs[0, 0].set_xlabel("$d_1$ [mm]")
axs[0, 0].set_ylabel("$w_{wy}$ [μm]")
axs[0, 0].grid(True, alpha=0.3)

axs[0, 1].plot(d1_vals, t3_d2, "ks-", markersize=7)
axs[0, 1].set_xlabel("$d_1$ [mm]")
axs[0, 1].set_ylabel("$d_2$ [mm]")
axs[0, 1].grid(True, alpha=0.3)

axs[1, 0].plot(d1_vals, t3_h2, "k^-", markersize=7)
axs[1, 0].set_xlabel("$d_1$ [mm]")
axs[1, 0].set_ylabel("$h_2$ [mm]")
axs[1, 0].grid(True, alpha=0.3)

axs[1, 1].plot(d1_vals, t3_theta_deg, "kD-", markersize=7)
axs[1, 1].set_xlabel("$d_1$ [mm]")
axs[1, 1].set_ylabel("$\\theta_{wy}$ [°]")
axs[1, 1].grid(True, alpha=0.3)

plt.tight_layout()
fig.savefig(OUT + "wykres_seria_d1.png")
plt.close()

# ── Figure 4: Beam profile simulation (MATLAB equivalent) ─────────────

lambda_nm = 0.633e-3  # mm
w10 = 0.25             # μm
z10 = (np.pi / lambda_nm) * w10**2
theta1 = lambda_nm / (np.pi * w10)
d1 = 400.0
f = 75.0

w20 = np.sqrt((f**2 * w10**2) / ((f - d1)**2 + z10**2))
z20 = (np.pi / lambda_nm) * w20**2
d2 = f + f**2 * (d1 - f) / ((f - d1)**2 + z10**2)
theta2 = lambda_nm / (np.pi * w20)

z = np.linspace(0, d1, 500)
w1 = w10 * np.sqrt(1 + z**2 / z10**2)

zz = np.linspace(d1, 2 * d1, 500)
w2 = w20 * np.sqrt(1 + (zz - d1 - d2)**2 / z20**2)

fig, ax = plt.subplots(figsize=(12, 5))
ax.plot(z, w1, "k", linewidth=2, label="$w(z)$ przed soczewką")
ax.plot(z, -w1, "k", linewidth=2)
ax.plot(zz, w2, "k", linewidth=2, label="$w(z)$ za soczewką")
ax.plot(zz, -w2, "k", linewidth=2)
ax.plot(z, z * 0, "k:", linewidth=0.8)
ax.plot(zz, zz * 0, "k:", linewidth=0.8)

ly = 1.0
line_y = np.linspace(-ly, ly, 10)
ax.plot(np.full_like(line_y, d1), line_y, "k", linewidth=3, label="Soczewka")
ax.plot(np.full_like(line_y, d1 + f), line_y, "k:", linewidth=2, label="Ognisko $f$")

ax.set_ylim(-ly, ly)
ax.set_xlabel("[mm]")
ax.set_ylabel("[μm]")
ax.set_title("Profil wiązki gaussowskiej przed i za soczewką skupiającą\n($\\lambda=0{,}633$ nm, $w_{10}=0{,}25$ μm, $f=75$ mm, $d_1=400$ mm)")
ax.legend(loc="upper right", fontsize=9)
ax.grid(True, alpha=0.2)
plt.tight_layout()
fig.savefig(OUT + "profil_wiazki_domyslny.png")
plt.close()

# ── Figure 5: Comparison profiles for extreme parameters ──────────────

# w10 extremes
params_w10 = [
    (0.10, 75, 400, "w10=0,10"),
    (0.30, 75, 400, "w10=0,30"),
]

fig, axs = plt.subplots(1, 2, figsize=(12, 5))
for idx, (w, fl, d1l, label) in enumerate(params_w10):
    zr_local = (np.pi / lambda_nm) * w**2
    w2_local = np.sqrt((fl**2 * w**2) / ((fl - d1l)**2 + zr_local**2))
    zr2_local = (np.pi / lambda_nm) * w2_local**2
    d2_local = fl + fl**2 * (d1l - fl) / ((fl - d1l)**2 + zr_local**2)

    zl = np.linspace(0, d1l, 500)
    w1l = w * np.sqrt(1 + zl**2 / zr_local**2)
    zzl = np.linspace(d1l, 2 * d1l, 500)
    w2l = w2_local * np.sqrt(1 + (zzl - d1l - d2_local)**2 / zr2_local**2)

    axs[idx].plot(zl, w1l, "k", linewidth=1.5)
    axs[idx].plot(zl, -w1l, "k", linewidth=1.5)
    axs[idx].plot(zzl, w2l, "k", linewidth=1.5)
    axs[idx].plot(zzl, -w2l, "k", linewidth=1.5)
    axs[idx].plot(zl, zl * 0, "k:", linewidth=0.8)
    axs[idx].plot(zzl, zzl * 0, "k:", linewidth=0.8)
    axs[idx].plot([d1l, d1l], [-ly, ly], "k", linewidth=3)
    axs[idx].plot([d1l + fl, d1l + fl], [-ly, ly], "k:", linewidth=2)
    axs[idx].set_ylim(-ly, ly)
    axs[idx].set_xlabel("[mm]")
    axs[idx].set_ylabel("[μm]")
    axs[idx].set_title(f"${label}$ μm")
    axs[idx].grid(True, alpha=0.2)

fig.suptitle("Profil wiązki dla skrajnych wartości $w_{10}$ ($f=75$ mm, $d_1=400$ mm)", y=1.02)
plt.tight_layout()
fig.savefig(OUT + "profil_w10_skrajne.png")
plt.close()

# ── Figure 6: Comparison profiles for extreme f ───────────────────────

params_f = [
    (0.25, 25, 400, "f=25"),
    (0.25, 200, 400, "f=200"),
]

fig, axs = plt.subplots(1, 2, figsize=(12, 5))
for idx, (w, fl, d1l, label) in enumerate(params_f):
    zr_local = (np.pi / lambda_nm) * w**2
    w2_local = np.sqrt((fl**2 * w**2) / ((fl - d1l)**2 + zr_local**2))
    zr2_local = (np.pi / lambda_nm) * w2_local**2
    d2_local = fl + fl**2 * (d1l - fl) / ((fl - d1l)**2 + zr_local**2)

    zl = np.linspace(0, d1l, 500)
    w1l = w * np.sqrt(1 + zl**2 / zr_local**2)
    zzl = np.linspace(d1l, 2 * d1l, 500)
    w2l = w2_local * np.sqrt(1 + (zzl - d1l - d2_local)**2 / zr2_local**2)

    axs[idx].plot(zl, w1l, "k", linewidth=1.5)
    axs[idx].plot(zl, -w1l, "k", linewidth=1.5)
    axs[idx].plot(zzl, w2l, "k", linewidth=1.5)
    axs[idx].plot(zzl, -w2l, "k", linewidth=1.5)
    axs[idx].plot(zl, zl * 0, "k:", linewidth=0.8)
    axs[idx].plot(zzl, zzl * 0, "k:", linewidth=0.8)
    axs[idx].plot([d1l, d1l], [-ly, ly], "k", linewidth=3)
    axs[idx].plot([d1l + fl, d1l + fl], [-ly, ly], "k:", linewidth=2)
    axs[idx].set_ylim(-ly, ly)
    axs[idx].set_xlabel("[mm]")
    axs[idx].set_ylabel("[μm]")
    axs[idx].set_title(f"${label}$ mm")
    axs[idx].grid(True, alpha=0.2)

fig.suptitle("Profil wiązki dla skrajnych wartości $f$ ($w_{10}=0{,}25$ μm, $d_1=400$ mm)", y=1.02)
plt.tight_layout()
fig.savefig(OUT + "profil_f_skrajne.png")
plt.close()

print("All plots generated successfully.")
for name in ["wykres_seria_w10.png", "wykres_seria_f.png", "wykres_seria_d1.png",
             "profil_wiazki_domyslny.png", "profil_w10_skrajne.png", "profil_f_skrajne.png"]:
    print(f"  {OUT}{name}")

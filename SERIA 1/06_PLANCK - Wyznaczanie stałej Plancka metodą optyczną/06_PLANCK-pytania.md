# Wejściówka 06 – PLANCK – Wyznaczanie stałej Plancka z użyciem diod LED

## Pytanie 1: Co to jest stała Plancka?

**Stała Plancka** ($h$) to fundamentalna stała fizyczna będąca kwantem działania.
Wprowadzona przez Maxa Plancka w 1900 roku, stanowi podstawę mechaniki kwantowej.

Wartość stałej Plancka:

$$h = 6{,}626 \times 10^{-34}\ \text{J·s}$$

Stała Plancka wyraża związek między energią fotonu $E$ a jego częstotliwością $\nu$:

$$E = h\nu = \frac{hc}{\lambda}$$

gdzie:
- $\nu$ – częstotliwość promieniowania elektromagnetycznego,
- $\lambda$ – długość fali,
- $c \approx 3 \times 10^8\ \text{m/s}$ – prędkość światła w próżni.

Stała Plancka pojawia się w opisie zjawisk kwantowych takich jak: promieniowanie ciała
doskonale czarnego, efekt fotoelektryczny, emisja i absorpcja fotonów, mechanika falowa.

---

## Pytanie 2: Co to jest i jak działa dioda elektroluminescencyjna (LED)?

### Konstrukcja złącza PN

Dioda LED (*Light Emitting Diode* – dioda elektroluminescencyjna) zbudowana jest na
bazie złącza PN wykonanego z **półprzewodnika z prostą przerwą energetyczną**
(np. GaAs, GaN, GaP, InGaN).

**Budowa złącza PN:**

```
 Półprzewodnik typ P  │  Półprzewodnik typ N
 (większościowe nośniki: dziury)  │  (większościowe nośniki: elektrony)
─────────────────────┼─────────────────────
       [+]  [+]  [+] │ [-]  [-]  [-]
                     │
              Warstwa zubożona
              (złącze PN)
```

- Strona **P** domieszkowana akceptorami → nadmiar dziur (ładunek „+").
- Strona **N** domieszkowana donorami → nadmiar elektronów (ładunek „−").
- Na granicy P–N tworzy się warstwa zubożona (bariera potencjału).

### Zasada działania LED

Gdy złącze PN polaryzujemy **w kierunku przewodzenia** (napięcie dodatnie na anodzie):
bariera potencjału jest obniżona, elektrony z obszaru N i dziury z obszaru P są
wstrzykiwane do warstwy złącza, gdzie dochodzi do **rekombinacji promienistej**.

### Model pasmowy złącza PN – mechanizm rekombinacji promienistej

```
   Pasmo         Obszar P │ Obszar N
   przewodnictwa           │
   ─────────────     ──────┤──────────────
   EC                      │        ●  ●  ●  (elektrony)
                           │   ↓↓↓ (rekombinacja → foton hν)
   ─────────────     ──────┤──────────────
   EV               ○ ○ ○  │
   (pasmo walencyjne)  (dziury)
```

Schemat słowny:
1. Elektron swobodny (w paśmie przewodnictwa, energia $E_C$) przechodzi do pasma
   walencyjnego (energia $E_V$), łącząc się z dziurą.
2. Różnica energii $\Delta E = E_C - E_V = E_G$ (przerwa energetyczna) zostaje wyemitowana
   jako foton:

$$h\nu = \frac{hc}{\lambda} \approx E_G$$

3. Długość fali emitowanego światła zależy od materiału półprzewodnika:
   - GaAs ($E_G \approx 1{,}42\ \text{eV}$) → podczerwień (~870 nm),
   - GaP ($E_G \approx 2{,}26\ \text{eV}$) → zielony (~550 nm),
   - GaN ($E_G \approx 3{,}4\ \text{eV}$) → fiolet/UV (~365 nm),
   - InGaN (skład kompozycji) → niebieski/zielony.

Symbol graficzny diody LED: trójkąt z poprzeczką i dwiema strzałkami symbolizującymi
emitowane promieniowanie.

---

## Pytanie 3: Wyznaczanie napięcia progowego $V_g$ diody LED z charakterystyki I-U

Prąd przez diodę LED opisuje zmodyfikowane równanie Shockleya:

$$I = I_0 \left[\exp\!\left(\frac{V - V_g}{V_T}\right) - \exp\!\left(-\frac{V_g}{V_T}\right)\right]$$

gdzie:
- $V_g = E_G/q$ – napięcie odpowiadające przerwie energetycznej,
- $V_T = k_B T/q \approx 26\ \text{mV}$ (w temperaturze 300 K) – napięcie termiczne,
- $I_0$ – prąd nasycenia,
- $q$ – elementarny ładunek elektryczny.

### Graficzna metoda wyznaczania $V_g$

Na wykresie charakterystyki prądowo-napięciowej $I(U)$:

```
   I [mA]
    │                       /
    │                      /  ← styczna do części
    │                     /      liniowej
    │                    /
    │                   /
  0 ├──────────────────/─────────────→ U [V]
                      ↑
                      Vg
```

**Procedura:**
1. Zmierzyć charakterystykę $I(U)$ diody (zwiększając napięcie od zera i rejestrując prąd).
2. Znaleźć **część liniową** krzywej (przy wyższych prądach).
3. Poprowadzić **styczną** do tej części liniowej.
4. Odczytać punkt przecięcia stycznej z osią napięcia (osią $U$) – jest to $V_g$.

**Metoda przybliżona:** $V_g$ można oszacować jako napięcie, przy którym dioda wyraźnie
się zaświeca (dla diod R, Y, G – przy prądzie ~1 mA; dla diody B – przy ~0,1 mA).

Typowe wartości $V_g$:
| Kolor | $\lambda_0$ [nm] | $V_g$ [V] |
|-------|-----------------|-----------|
| Czerwony (R) | ~650 | ~1,8 |
| Żółty (Y)    | ~590 | ~2,0 |
| Zielony (G)  | ~530 | ~2,2 |
| Niebieski (B)| ~460 | ~2,7 |

---

## Pytanie 4: Wyznaczanie stałej Plancka z użyciem diod LED

### Zasada metody

Z równania wiążącego energię fotonu z przerwą energetyczną i napięciem progowym:

$$h\nu = \frac{hc}{\lambda} \approx E_G = qV_g$$

wynika zależność liniowa między napięciem progowym $V_g$ a częstotliwością emitowanego
światła $\nu$:

$$V_g = \frac{h}{q} \cdot \nu = K \cdot \nu$$

gdzie $K = h/q$ jest współczynnikiem proporcjonalności (nachyleniem prostej).

### Procedura doświadczalna

1. **Pomiar widm diod LED** – za pomocą spektrometru wyznaczyć centralną długość
   fali $\lambda_0$ dla każdej diody (R, Y, G, B). Obliczyć częstotliwość: $\nu = c/\lambda_0$.

2. **Pomiar charakterystyk I-U** – dla każdej diody zmierzyć charakterystykę
   prądowo-napięciową i graficznie wyznaczyć napięcie progowe $V_g$ (metodą stycznej).

3. **Wyznaczenie współczynnika $K = h/q$** – wykonać wykres $V_g(\nu)$ i dopasować
   prostą metodą regresji liniowej. Współczynnik nachylenia $K$ prostej odpowiada $h/q$.

4. **Obliczenie stałej Plancka:**

$$h = K \cdot q = \frac{h}{q} \cdot q$$

   gdzie $q = 1{,}6 \times 10^{-19}\ \text{C}$.

### Przykład

Jeśli z regresji liniowej wyznaczono $K = 4{,}0 \times 10^{-15}\ \text{V·s}$, to:

$$h = K \cdot q = 4{,}0 \times 10^{-15}\ \text{V·s} \times 1{,}6 \times 10^{-19}\ \text{C}
    = 6{,}4 \times 10^{-34}\ \text{J·s}$$

Wartość tablicowa: $h = 6{,}626 \times 10^{-34}\ \text{J·s}$.

# Wejściówka 06 – Projektowanie warstw odbiciowych

## Pytanie 1: Pojęcie zespolonego współczynnika załamania światła. Jaką informację niesie jego część rzeczywista, a jaką urojona?

### Definicja

Dla materiałów absorbujących (metale, półprzewodniki powyżej przerwy energetycznej)
wprowadza się **zespolony współczynnik załamania**:

$$\boxed{\tilde{n} = n + i\kappa}$$

gdzie:
- $n$ — **część rzeczywista** (zwykły współczynnik załamania),
- $\kappa$ — **część urojona** (współczynnik ekstynkcji, ang. *extinction coefficient*),
- $i = \sqrt{-1}$ — jednostka urojona.

Inna konwencja zapisu: $\tilde{n} = n(1 + i\kappa)$ lub $\tilde{n} = n - i\kappa$
(w zależności od przyjętej konwencji znaku w czynniku $e^{-i\omega t}$ vs $e^{+i\omega t}$).
Tutaj przyjmujemy $\tilde{n} = n + i\kappa$ z czynnikiem $e^{-i\omega t}$.

### Znaczenie fizyczne części rzeczywistej $n$

$n$ określa **prędkość fazową** fali w materiale:

$$v = \frac{c}{n}$$

oraz decyduje o **załamaniu** światła na granicy ośrodków (prawo Snelliusa):

$$n_1 \sin\theta_1 = n_2 \sin\theta_2$$

$n$ wynika ze sprężystej odpowiedzi elektronów na pole elektryczne fali (polaryzacja
bezstratna).

### Znaczenie fizyczne części urojonej $\kappa$

$\kappa$ opisuje **absorpcję** (tłumienie) fali w materiale. Natężenie fali płaskiej
maleje wykładniczo z odległością $z$ według **prawa Bouguera-Lamberta-Beera**:

$$I(z) = I_0\, e^{-\alpha z}$$

gdzie $\alpha$ to **współczynnik absorpcji**:

$$\alpha = \frac{4\pi \kappa}{\lambda_0}$$

Amplituda pola elektrycznego zanika jak:

$$E(z) = E_0\, e^{-\alpha z/2} = E_0\, e^{-2\pi\kappa z / \lambda_0}$$

### Głębokość wnikania

Odległość, na której natężenie spada $e$-krotnie (do $\sim 37\%$):

$$\delta = \frac{1}{\alpha} = \frac{\lambda_0}{4\pi\kappa}$$

### Przykładowe wartości

| Materiał | $n$ | $\kappa$ | $\alpha$ [m⁻¹] (dla $\lambda = 633$ nm) | Charakter |
|----------|-----|----------|----------------------------------------|-----------|
| Szkło BK7 | ~1.52 | $\sim 0$ | $\sim 0$ | dielektryk, bezstratny |
| Krzem ($\lambda = 633$ nm) | ~3.88 | ~0.02 | $\sim 4 \times 10^5$ | półprzewodnik, słaba absorpcja |
| Srebro ($\lambda = 633$ nm) | ~0.14 | ~4.0 | $\sim 8 \times 10^7$ | metal, silna absorpcja |
| German ($\lambda = 633$ nm) | ~5.5 | ~0.6 | $\sim 1.2 \times 10^7$ | półprzewodnik |

### Związek ze stałą dielektryczną

Zespolony współczynnik załamania wiąże się z zespoloną stałą dielektryczną:

$$\tilde{\varepsilon} = \varepsilon_1 + i\varepsilon_2 = \tilde{n}^2 = (n + i\kappa)^2 = (n^2 - \kappa^2) + i(2n\kappa)$$

Stąd:

$$\varepsilon_1 = n^2 - \kappa^2, \qquad \varepsilon_2 = 2n\kappa$$

### Znaczenie dla warstw odbiciowych

- **Dielektryki** ($\kappa \approx 0$): stosowane w wielowarstwowych zwierciadłach
  Bragga — wysoka selektywność spektralna, brak absorpcji, $R$ bliskie 100%.
- **Metale** ($\kappa \gg 0$): szerokopasmowe zwierciadła metaliczne — wysokie $R$
  w całym zakresie widzialnym, ale z absorpcją (część energii jest tracona).

---

## Pytanie 2: Interferencja światła

### Zasada

Interferencja to nakładanie się fal o stałej różnicy faz, prowadzące do przestrzennej
modyfikacji natężenia — wzmocnienia (interferencja konstruktywna) lub osłabienia
(interferencja destruktywna).

### Różnica faz i drogi optycznej

Dla dwóch fal o tej samej częstotliwości i różnicy faz $\Delta \varphi$:

$$I_{\text{wyp}} = I_1 + I_2 + 2\sqrt{I_1 I_2} \cos(\Delta \varphi)$$

Różnica faz wynika z różnicy dróg optycznych:

$$\Delta \varphi = \frac{2\pi}{\lambda_0} \cdot \Delta(\text{OPD})$$

### Znaczenie w warstwach odbiciowych

W wielowarstwowych zwierciadłach dielektrycznych (Bragga) wykorzystuje się
**interferencję konstruktywną** między wiązkami odbitymi od kolejnych granic
warstw. Każda warstwa ma grubość optyczną $\lambda_0/4$, co zapewnia, że wszystkie
wiązki odbite są **w fazie** — ich amplitudy sumują się, dając $R \approx 1$.

Przy $N$ parach warstw (HL) można osiągnąć $R > 99.9\%$ dla długości fali $\lambda_0$.

### Porównanie z warstwami antyodbiciowymi

| Cel | Typ interferencji | Grubość | Pożądane $n$ warstwy |
|-----|-------------------|---------|---------------------|
| **AR** (antyodbiciowa) | destruktywna | $\lambda/4$ | $n_1 = \sqrt{n_0 n_s}$ |
| **HR** (odbiciowa) | konstruktywna | $\lambda/4$ | duży kontrast $n_H \gg n_L$ |

---

## Pytanie 3: Co to jest całkowite wewnętrzne odbicie i kiedy zachodzi?

**Całkowite wewnętrzne odbicie** (TIR) występuje, gdy światło pada na granicę od strony
ośrodka optycznie gęstszego ($n_1 > n_2$) pod kątem większym niż kąt graniczny:

$$\sin\theta_{\text{gr}} = \frac{n_2}{n_1}$$

Warunki: (1) $n_1 > n_2$, (2) $\theta_1 > \theta_{\text{gr}}$.

Przy TIR światło nie przechodzi do drugiego ośrodka — $R = 1$. Zjawisko to jest
podstawą działania światłowodów i falowodów planarnych. Przy powierzchni granicznej
po stronie rzadszego ośrodka istnieje **fala ewanescentna** — pole zanikające
wykładniczo z odległością od granicy.

**Uwaga:** TIR nie jest mechanizmem stosowanym w warstwach odbiciowych typu Bragga —
tam odbicie wynika z interferencji konstruktywnej wielu częściowych odbić na granicach
cienkich warstw, przy kątach mniejszych od granicznego.

---

## Pytanie 4: Natężeniowy współczynnik odbicia

Natężeniowy współczynnik odbicia $R$ to stosunek natężenia światła odbitego do padającego:

$$R = \frac{I_r}{I_i}, \qquad 0 \leq R \leq 1$$

### Padanie normalne — granica dielektryk-dielektryk

$$R = \left(\frac{n_1 - n_2}{n_1 + n_2}\right)^2$$

### Padanie normalne — granica z materiałem absorbującym ($\tilde{n}_2 = n_2 + i\kappa_2$)

$$R = \left|\frac{n_1 - \tilde{n}_2}{n_1 + \tilde{n}_2}\right|^2 = \frac{(n_1 - n_2)^2 + \kappa_2^2}{(n_1 + n_2)^2 + \kappa_2^2}$$

### Wzory Fresnela — przypadek ogólny (kąty)

Dla polaryzacji **TE** (s):

$$r_{\text{TE}} = \frac{n_1 \cos\theta_1 - n_2 \cos\theta_2}{n_1 \cos\theta_1 + n_2 \cos\theta_2}, \qquad R_{\text{TE}} = |r_{\text{TE}}|^2$$

Dla polaryzacji **TM** (p):

$$r_{\text{TM}} = \frac{n_2 \cos\theta_1 - n_1 \cos\theta_2}{n_2 \cos\theta_1 + n_1 \cos\theta_2}, \qquad R_{\text{TM}} = |r_{\text{TM}}|^2$$

### Współczynnik odbicia układu wielowarstwowego

Dla układu $N$ warstw cienkich oblicza się wypadkowy współczynnik odbicia metodą
**macierzy charakterystycznych** (formalism Abelesa):

$$\begin{bmatrix} B \\ C \end{bmatrix} =
\left( \prod_{j=1}^N \begin{bmatrix}
\cos\delta_j & \frac{i}{Y_j} \sin\delta_j \\
i Y_j \sin\delta_j & \cos\delta_j
\end{bmatrix} \right)
\begin{bmatrix} 1 \\ Y_s \end{bmatrix}$$

gdzie $\delta_j = 2\pi n_j d_j \cos\theta_j / \lambda_0$ to grubość fazowa warstwy $j$,
a $Y_j$ to admitancja optyczna. Wypadkowy współczynnik odbicia:

$$R = \left|\frac{Y_0 B - C}{Y_0 B + C}\right|^2$$

---

## Pytanie 5: Jaki warunek grubości i wsp. załamania musi spełniać warstwa dielektryka, aby pełnić funkcję warstwy odbiciowej?

### Zasada działania

Warstwa odbiciowa (HR, ang. *high-reflection coating*) maksymalizuje odbicie poprzez
**interferencję konstruktywną** fal odbitych od wszystkich granic w układzie
wielowarstwowym.

### Pojedyncza warstwa odbiciowa

Układ: **powietrze ($n_0$) | warstwa ($n_1$, $d$) | podłoże ($n_s$)**

Aby zmaksymalizować odbicie:

1. **Warunek fazowy:** $n_1 d = \lambda_0/4$ — fale odbite od obu granic są **w fazie**
   (konstruktywna interferencja).

2. **Warunek amplitudowy:** $n_1$ powinno być możliwie różne od $n_0$ i $n_s$, tzn.:
   - Dla maksymalnego odbicia na podłożu o $n_s > n_0$: $n_1 \gg n_s$ lub $n_1 \ll n_s$.

W praktyce pojedyncza warstwa $\lambda/4$ daje jedynie skromne zwiększenie $R$.
Wysoką refleksję uzyskuje się przez **układy wielowarstwowe**.

### Wielowarstwowe zwierciadło dielektryczne (Bragga)

Struktura: $(HL)^N$ lub $(HL)^N H$ — naprzemienne warstwy o wysokim ($n_H$) i niskim
($n_L$) współczynniku załamania.

Każda warstwa: $n_H d_H = n_L d_L = \lambda_0/4$.

Dzięki interferencji konstruktywnej od $2N$ (lub $2N+1$) granic, współczynnik odbicia
dąży do 100% przy rosnącej liczbie par $N$:

$$\boxed{R \approx 1 - 4\left(\frac{n_L}{n_H}\right)^{2N} \frac{n_s}{n_0}}$$

Dla $n_H = 2.3$ ($\text{TiO}_2$), $n_L = 1.38$ ($\text{SiO}_2$), $N = 10$ par:

$$R \approx 1 - 4\left(\frac{1.38}{2.3}\right)^{20} \frac{1.5}{1} \approx 1 - 6 \cdot 3.7 \times 10^{-5} \approx 0.9998 = 99.98\%$$

### Warunki dla dobrego zwierciadła dielektrycznego

| Parametr | Wymaganie |
|----------|-----------|
| Grubość optyczna każdej warstwy | $\lambda_0/4$ |
| Stosunek $n_H / n_L$ | możliwie duży |
| Liczba par $N$ | im więcej, tym wyższe $R$ |
| Materiały | bezstratne dielektryki ($\kappa \approx 0$) |
| Kontrast $n$ | wysoki kontrast = mniej warstw potrzebnych do danego $R$ |

### Zwierciadła metaliczne

Alternatywą dla zwierciadeł dielektrycznych są szerokopasmowe zwierciadła metaliczne
(np. srebrne, aluminiowe, złote). Działają one nie przez interferencję, lecz dzięki
wysokiemu $R$ wynikającemu z dużego $\kappa$ metalu:

Dla granicy powietrze-metal ($\tilde{n} = n + i\kappa$):

$$R = \frac{(1 - n)^2 + \kappa^2}{(1 + n)^2 + \kappa^2}$$

Dla srebra przy $\lambda = 633$ nm ($n \approx 0.14$, $\kappa \approx 4.0$):

$$R = \frac{(0.86)^2 + 4^2}{(1.14)^2 + 4^2} = \frac{0.74 + 16}{1.30 + 16} \approx 0.967 = 96.7\%$$

Zwierciadła metaliczne mają szersze pasmo, ale niższe $R$ i większą absorpcję niż
wielowarstwowe dielektryczne.

---

## Pytanie 6: Reflektor Bragga. Wzór na okres struktury periodycznej reflektora Bragga

### Co to jest reflektor Bragga?

**Reflektor Bragga** (zwierciadło Bragga, DBR — *Distributed Bragg Reflector*) to
periodyczna struktura wielowarstwowa o naprzemiennych współczynnikach załamania,
w której zachodzi **braggowska dyfrakcja** światła. Dzięki konstruktywnej interferencji
wiązek odbitych od kolejnych granic, dla pewnego zakresu długości fal (tzw.
*fotonowa przerwa wzbroniona*) współczynnik odbicia jest bliski 100%.

Struktura: $n_1, n_2, n_1, n_2, \ldots$ o grubościach $d_1, d_2$ i okresie $\Lambda = d_1 + d_2$.

### Wzór na okres struktury — warunek Bragga

Dla padania normalnego ($\theta = 0$):

$$\boxed{\Lambda = d_1 + d_2 = \frac{\lambda_B}{2 n_{\text{eff}}}}$$

gdzie często przyjmuje się $n_{\text{eff}} \approx (n_1 d_1 + n_2 d_2) / \Lambda$.

W najprostszym przypadku, gdy obie warstwy mają jednakową grubość optyczną
$n_1 d_1 = n_2 d_2 = \lambda_B / 4$:

$$\Lambda = d_1 + d_2 = \frac{\lambda_B}{4n_1} + \frac{\lambda_B}{4n_2} = \frac{\lambda_B}{4} \cdot \frac{n_1 + n_2}{n_1 n_2}$$

### Warunek Bragga w ogólnej postaci

$$\boxed{2 \Lambda \sin\theta = m \lambda_0}$$

lub równoważnie:

$$2 \Lambda \, n_{\text{eff}} \cos\theta = m \lambda_B$$

gdzie:
- $\Lambda$ — okres struktury (suma grubości pary warstw),
- $\theta$ — kąt padania w ośrodku,
- $m = 1, 2, \ldots$ — rząd dyfrakcji (zwykle $m = 1$),
- $\lambda_B$ — długość fali Bragga (środek pasma odbiciowego) w próżni.

Dla padania normalnego ($\theta = 0$) w pierwszym rzędzie ($m=1$):

$$\boxed{\lambda_B = 2 (n_1 d_1 + n_2 d_2) = 2 n_{\text{eff}} \Lambda}$$

### Szerokość pasma odbiciowego (stopband)

Szerokość spektralna pasma wysokiego odbicia (fotonowej przerwy wzbronionej) zależy
od kontrastu współczynników załamania:

$$\frac{\Delta \lambda}{\lambda_B} \approx \frac{4}{\pi} \arcsin\!\left(\frac{n_H - n_L}{n_H + n_L}\right)$$

Dla małego kontrastu ($n_H \approx n_L$):

$$\frac{\Delta \lambda}{\lambda_B} \approx \frac{2}{\pi} \frac{n_H - n_L}{n_H + n_L}$$

Im większy kontrast $n_H / n_L$, tym szersze pasmo odbiciowe.

### Zastosowania

- **Lustra laserowe** — zwierciadła wnęki rezonatora (wymagane $R > 99\%$).
- **Filtry interferencyjne** — wąskopasmowe (bandpass), krawędziowe (edge filters).
- **Lasery VCSEL** — DBR jako zwierciadła górne i dolne.
- **Światłowody Bragga** — siatki Bragga we włóknach (FBG — *Fiber Bragg Grating*).
- **Kryształy fotoniczne 1D** — najprostsza forma kryształów fotonicznych.

### Porównanie — reflektor Bragga vs pojedyncza warstwa $\lambda/4$

| Własność | Pojedyncza warstwa $\lambda/4$ | Reflektor Bragga $(HL)^N$ |
|----------|-------------------------------|--------------------------|
| Liczba warstw | 1 | $2N$ (lub $2N+1$) |
| $R$ maksymalne | $\sim 30-50\%$ (zależy od $n$) | $> 99.9\%$ (dla $N \ge 10$) |
| Szerokość pasma | szerokie, łagodne maksimum | płaskie w paśmie, strome krawędzie |
| Zależność od $n$ | $R$ rośnie z kontrastem | $R \to 1$ nawet przy małym kontraście |
| Złożoność | prosta | wymaga precyzyjnej kontroli grubości |

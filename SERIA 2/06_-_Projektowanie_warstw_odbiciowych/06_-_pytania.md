# Wejściówka 06 – Projektowanie warstw odbiciowych

## Pytanie 1: Pojęcie zespolonego współczynnika załamania światła. Jaką informację niesie jego część rzeczywista, a jaką urojona?

### Definicja

**Zespolony współczynnik załamania** $\widetilde{n}$ rozszerza rzeczywisty
współczynnik załamania o człon opisujący absorpcję:

$$\widetilde{n} = n + i\kappa$$

gdzie:
- $n$ — **(rzeczywisty) współczynnik załamania**, część rzeczywista
- $\kappa$ — **współczynnik ekstynkcji** (wsp. absorpcji), część urojona
- $i$ — jednostka urojona ($i^2 = -1$)

W niektórych konwencjach używa się zapisu $\widetilde{n} = n(1 + i\kappa)$
lub $\widetilde{n} = n + ik$.

### Znaczenie części rzeczywistej $n$

| Informacja | Opis |
|------------|------|
| Prędkość fazowa | $v = c/n$ — jak szybko fala się porusza |
| Załamanie (refrakcja) | Prawo Snella: $n_1 \sin\theta_1 = n_2 \sin\theta_2$ |
| Dyspersja chromatyczna | $n(\lambda)$ — zależność od długości fali |

$n$ odpowiada za **propagację** fali — jej prędkość i kierunek rozchodzenia się.

### Znaczenie części urojonej $\kappa$

| Informacja | Opis |
|------------|------|
| Absorpcja (tłumienie) | Fala zanika wykładniczo w materiale |
| Współczynnik absorpcji | $\alpha = 4\pi\kappa / \lambda_0$ |
| Głębokość wnikania | $\delta = 1/\alpha = \lambda_0/(4\pi\kappa)$ |

$\kappa$ odpowiada za **tłumienie** fali — zamianę energii elektromagnetycznej
na ciepło.

### Prawo Bouguera-Lamberta-Beera

Natężenie fali w ośrodku absorbującym zanika wykładniczo:

$$I(z) = I_0 \cdot e^{-\alpha z}$$

gdzie $\alpha = \dfrac{4\pi\kappa}{\lambda_0}$ to współczynnik absorpcji.

### Przykładowe wartości $\kappa$

| Materiał | $\lambda$ | $n$ | $\kappa$ | Charakterystyka |
|----------|-----------|-----|----------|-----------------|
| Szkło BK7 | 550 nm | 1.52 | $\sim 0$ | Przezroczysty dielektryk |
| Krzem (Si) | 550 nm | 4.0 | $\sim 0.03$ | Słabo absorbujący |
| Srebro (Ag) | 550 nm | 0.13 | 3.9 | Silnie odbijający metal |
| Aluminium (Al) | 550 nm | 0.96 | 6.0 | Dobre zwierciadło |

### Znaczenie w projektowaniu warstw odbiciowych

- **Dielektryki**: $\kappa \approx 0$ w paśmie przezroczystości → warstwy
  odbiciowe oparte wyłącznie na interferencji, bez strat absorpcyjnych
- **Metale**: $\kappa$ duże → wysokie $R$ już przy cienkiej warstwie,
  ale występują straty (absorpcja części energii)

---

## Pytanie 2: Interferencja światła

### Definicja

**Interferencja** to zjawisko nakładania się fal prowadzące do wzmocnienia
(konstruktywna) lub osłabienia (destrukcyjna) wypadkowego pola.

### Warunek koherencji

Fale muszą mieć stałą w czasie różnicę faz — są wtedy **koherentne**.
W układach warstwowych uzyskuje się to, ponieważ fale pochodzą z podziału
amplitudy tej samej fali padającej.

### Interferencja w układzie wielowarstwowym

W wielowarstwowym układzie dielektrycznym każda granica generuje falę odbitą.
Wszystkie te fale interferują ze sobą:

```
   n0                     n1     n2                     n3
powietrze    granica 1    L     granica 2    H     granica 3   podłoże
    ↓  →      ╱   ↑ r1          ╱   ↑ r2          ╱   ↑ r3
              ╱                ╱                ╱
```

### Różnica faz między odbiciami od sąsiednich granic

Dla światła padającego normalnie ($\theta = 0$), po przejściu warstwy
o grubości $d$ i współczynniku $n$ w obie strony:

$$\delta = \frac{4\pi n d}{\lambda_0}$$

### Warunek na wzmocnienie odbicia (interferencja konstruktywna)

Aby wszystkie fale odbite były w fazie (wysokie $R$):

$$2 n d = m\frac{\lambda_0}{2}, \qquad m = 1, 2, 3, \ldots$$

lub dla warstwy ćwierćfalowej ($d = \lambda_0/(4n)$):

$$\delta = \pi \quad \Rightarrow \quad \text{fale w fazie po przejściu w obie strony}$$

W praktyce przy projektowaniu zwierciadeł Bragga każda warstwa ma grubość
optyczną $\lambda_0/4$, co zapewnia konstruktywną interferencję wszystkich
fal odbitych.

---

## Pytanie 3: Co to jest całkowite wewnętrzne odbicie i kiedy zachodzi?

### Definicja

**Całkowite wewnętrzne odbicie** (TIR) to zjawisko zachodzące przy padaniu
światła od strony ośrodka gęstszego optycznie ($n_1 > n_2$) na granicę
z ośrodkiem rzadszym, pod kątem większym niż kąt graniczny. Światło nie
przechodzi do drugiego ośrodka — cała energia jest odbijana.

### Kąt graniczny

$$\theta_{gr} = \arcsin\!\left(\frac{n_2}{n_1}\right)$$

### Warunki

1. $n_1 > n_2$
2. $\theta_1 > \theta_{gr}$

### Fala zanikająca

$$E(x) = E_0 \cdot e^{-x/d_p}, \qquad d_p = \frac{\lambda_0}{2\pi\sqrt{n_1^2\sin^2\theta_1 - n_2^2}}$$

### Znaczenie dla warstw odbiciowych

W przeciwieństwie do falowodów, zwierciadła dielektryczne pracują zazwyczaj
przy padaniu normalnym lub bliskim normalnemu, gdzie TIR nie występuje.
Wysokie odbicie uzyskuje się tu przez **interferencję konstruktywną** fal
odbitych od wielu granic, a nie przez TIR. Jednak w niektórych zastosowaniach
(np. pryzmaty, falowody) TIR jest preferowanym mechanizmem niskostratnego odbicia.

---

## Pytanie 4: Natężeniowy współczynnik odbicia

### Definicja

**Natężeniowy współczynnik odbicia** (reflektancja) $R$:

$$R = \frac{I_{\text{odbite}}}{I_{\text{padające}}}, \qquad 0 \leq R \leq 1$$

### Dla pojedynczej granicy (padanie normalne)

Ze wzorów Fresnela:

$$R = \left( \frac{n_1 - n_2}{n_1 + n_2} \right)^2$$

Dla granicy **szkło ($n = 1.5$)–powietrze ($n = 1.0$)**: $R = 4\%$

### Dla układu warstw dielektrycznych

Wypadkowy współczynnik odbicia zależy od liczby warstw, ich współczynników
załamania i grubości. Dla $N$ par warstw o grubości $\lambda/4$ na przemian
z materiału o wysokim $n_H$ i niskim $n_L$:

$$R_{2N} = \left[ \frac{1 - (n_H/n_L)^{2N} \cdot (n_1/n_2)}{1 + (n_H/n_L)^{2N} \cdot (n_1/n_2)} \right]^2$$

Przy dostatecznie dużej liczbie par $R \to 1$ (teoretycznie; w praktyce
ograniczeniem są defekty i absorpcja).

### Dla metali

Metale mają wysoki współczynnik odbicia już przy pojedynczej granicy dzięki
dużemu $\kappa$:

$$R = \frac{(n - 1)^2 + \kappa^2}{(n + 1)^2 + \kappa^2}$$

Dla srebra przy $\lambda = 550$ nm ($n \approx 0.13$, $\kappa \approx 3.9$): $R \approx 0.95$

---

## Pytanie 5: Jaki warunek grubości i wsp. załamania musi spełniać warstwa dielektryka, aby pełnić funkcję warstwy odbiciowej?

### Cel warstwy odbiciowej

Celem jest **maksymalizacja odbicia** ($R \to 1$) dla zadanej długości fali.

### Warunek na współczynnik załamania — kontrast

Dla maksymalnego odbicia potrzebny jest **duży kontrast współczynnika
załamania** między warstwą a otoczeniem:

- Na granicy 1 (ośrodek wejściowy → warstwa): $n_f$ jak najbardziej
  **różne od $n_1$**
- Na granicy 2 (warstwa → podłoże): $n_f$ jak najbardziej **różne od $n_2$**

Maksymalny współczynnik odbicia od pojedynczej granicy:

$$R_{\max} = \left( \frac{|n_1 - n_f|}{n_1 + n_f} \right)^2$$

Im większa różnica, tym większe $R$. Dla pojedynczej warstwy na podłożu
optymalna sytuacja to $n_f \gg n_1$ i $n_f \gg n_2$ lub $n_f \ll n_1$.

### Warunek na grubość — $\lambda/4$

Dla uzyskania **interferencji konstruktywnej** fal odbitych od obu granic
warstwy, grubość optyczna musi wynosić $\lambda_0/4$ (lub nieparzystą
wielokrotność):

$$n_f d = \frac{\lambda_0}{4} \quad \Rightarrow \quad d = \frac{\lambda_0}{4 n_f}$$

Pełna różnica dróg optycznych = $2 n_f d = \lambda_0/2$, co przy odpowiednich
przesunięciach fazowych przy odbiciu daje zgodność faz fal odbitych → wzmocnienie.

### Zestawienie warunków

| Parametr | Warunek dla pojedynczej warstwy | Warunek dla wielowarstwy (Bragga) |
|----------|-------------------------------|-----------------------------------|
| **$n_f$** | $n_f$ znacząco różne od $n_1$ i $n_2$ | Naprzemiennie $n_H$ (wysokie) i $n_L$ (niskie) |
| **Grubość** | $d = \lambda_0/(4 n_f)$ | Każda warstwa: $d_i = \lambda_0/(4 n_i)$ |
| **Materiał** | Nieabsorbujący ($\kappa \approx 0$) | Nieabsorbujący ($\kappa \approx 0$) |

### Dlaczego pojedyncza warstwa daje małe $R$?

$$R \approx \left( \frac{n_1 n_2 - n_f^2}{n_1 n_2 + n_f^2} \right)^2$$

Nawet jeśli $n_f$ znacznie różni się od $n_1$ i $n_2$, pojedyncza warstwa
nie daje wysokiego $R$. Przykładowo dla $n_1 = 1$, $n_f = 2.3$, $n_2 = 1.5$:
$R \approx 0.36$ (tylko 36%).

Potrzeba **wielu warstw**, aby $R \to 1$.

---

## Pytanie 6: Reflektor Bragga. Wzór na okres struktury periodycznej reflektora Bragga.

### Definicja reflektora Bragga

**Reflektor Bragga** (zwierciadło Bragga, DBR — Distributed Bragg Reflector) to
periodyczna struktura składająca się z naprzemiennych warstw dielektrycznych
o **wysokim** ($n_H$) i **niskim** ($n_L$) współczynniku załamania. Każda
warstwa ma grubość optyczną równą $\lambda_0/4$:

```
... |  H   |  L   |  H   |  L   |  H   |  L   | ...
      λ/4    λ/4    λ/4    λ/4    λ/4    λ/4
     (nH)   (nL)   (nH)   (nL)   (nH)   (nL)
```

### Zasada działania

Na każdej granicy między warstwami H i L następuje częściowe odbicie (wzór
Fresnela). Dzięki precyzyjnie dobranej grubości $\lambda/4$, wszystkie fale
odbite od kolejnych granic są **w fazie** — interferują konstruktywnie, dając
bardzo wysokie całkowite odbicie.

### Okres struktury periodycznej

**Okresem** $\Lambda$ reflektora Bragga nazywa się sumę grubości jednej pary
warstw (H + L):

$$\Lambda = d_H + d_L$$

gdzie:
- $d_H = \dfrac{\lambda_0}{4 n_H}$ — grubość warstwy o wysokim $n$
- $d_L = \dfrac{\lambda_0}{4 n_L}$ — grubość warstwy o niskim $n$

### Wzór Bragga dla reflektorów dielektrycznych

Warunek Bragga dla maksymalnego odbicia przy padaniu normalnym:

$$m \cdot \frac{\lambda_0}{2} = n_H d_H + n_L d_L$$

Dla warstw ćwierćfalowych ($n_H d_H = n_L d_L = \lambda_0/4$) i $m = 1$:

$$\lambda_0 = 2 (n_H d_H + n_L d_L) = 2 \cdot (n_{\text{eff}} \cdot \Lambda)$$

W ogólnej postaci, warunek Bragga dla reflektora dielektrycznego:

$$m\lambda_0 = 2 (n_H d_H + n_L d_L)$$

lub w terminach okresu i efektywnego współczynnika załamania:

$$m\lambda_0 = 2 n_{\text{eff}} \Lambda$$

gdzie $m = 1, 2, 3, \ldots$ to rząd odbicia.

### Reflektor Bragga w światłowodach (FBG)

W światłowodach z siatką Bragga (FBG — Fiber Bragg Grating) okres $\Lambda$
to odległość między kolejnymi modulacjami współczynnika załamania w rdzeniu.
Warunek Bragga dla FBG:

$$\lambda_B = 2 n_{\text{eff}} \Lambda$$

gdzie $n_{\text{eff}}$ to efektywny współczynnik załamania modu prowadzonego.

### Właściwości reflektora Bragga

| Właściwość | Opis |
|------------|------|
| **Wysokie $R$ w paśmie odbicia** | Nawet $R > 99.9\%$ dla kilkunastu par |
| **Selektywność spektralna** | Odbija wąskie pasmo wokół $\lambda_0$ |
| **Szerokość pasma (stop-band)** | $\Delta\lambda \propto \lambda_0 \cdot \frac{n_H - n_L}{n_H + n_L}$ |
| **Kąt padania** | Warunek Bragga zależy od kąta; przy zwiększaniu kąta $\lambda_0$ przesuwa się ku krótszym falom |

### Szerokość pasma odbicia (stop-band)

$$\frac{\Delta\lambda}{\lambda_0} \approx \frac{4}{\pi} \cdot \frac{n_H - n_L}{n_H + n_L}$$

Im większy kontrast $n_H - n_L$, tym szersze pasmo odbicia.

### Typowe materiały

| Materiał | $n$ (przy 550 nm) | Rola w DBR |
|----------|-------------------|------------|
| SiO$_2$ | 1.46 | $n_L$ (niski) |
| TiO$_2$ | 2.4–2.6 | $n_H$ (wysoki) |
| Ta$_2$O$_5$ | 2.1 | $n_H$ (wysoki) |
| MgF$_2$ | 1.38 | $n_L$ (niski) |
| ZnS | 2.35 | $n_H$ (wysoki) |

---

## Podsumowanie — porównanie warstwy antyodbiciowej i odbiciowej

| Cecha | Warstwa AR (antyodbiciowa) | Warstwa odbiciowa (DBR) |
|-------|---------------------------|------------------------|
| Cel | $R \to 0$ | $R \to 1$ |
| $n_f$ | $n_f = \sqrt{n_1 n_2}$ | Duży kontrast $n_H/n_L$ |
| Grubość | $\lambda_0/(4 n_f)$ | $\lambda_0/(4 n_i)$ dla każdej warstwy |
| Liczba warstw | 1–4 | Wiele (kilka–kilkadziesiąt) |
| Zasada | Interferencja destrukcyjna | Interferencja konstrukcyjna |
| Struktura | Pojedyncza lub gradientowa | Periodyczna (H, L, H, L, ...) |
| Okres | — | $\Lambda = d_H + d_L$ |
| Wzór Bragga | — | $m\lambda_0 = 2 n_{\text{eff}} \Lambda$ |

---

## Co zawrzeć w sprawozdaniu

1. **Strona tytułowa** — nazwa ćwiczenia, przedmiot, data, skład zespołu,
   prowadzący, miejsce na podpis
2. **Krótki wstęp teoretyczny** — zespolony współczynnik załamania, wzory
   Fresnela, interferencja, zasada działania reflektora Bragga
3. **Opis metody projektowania** — dobór materiałów ($n_H$, $n_L$), obliczenie
   grubości $\lambda/4$, warunek Bragga
4. **Obliczenia projektowe** — dla wybranej długości fali $\lambda_0$:
   - Grubości warstw H i L
   - Okres $\Lambda$
   - Liczba par do osiągnięcia założonego $R$
5. **Wyniki symulacji** (jeśli wykonywane) — charakterystyka $R(\lambda)$
   dla zaprojektowanego reflektora
6. **Wnioski** — wpływ liczby warstw i kontrastu $n_H/n_L$ na $R_{\max}$
   i szerokość pasma odbicia, porównanie z warstwą antyodbiciową

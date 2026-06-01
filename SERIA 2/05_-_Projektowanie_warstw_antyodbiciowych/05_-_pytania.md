# Wejściówka 05 – Projektowanie warstw antyodbiciowych

## Pytanie 1: Co to jest współczynnik załamania światła w materiale?

### Definicja

**Współczynnik załamania** $n$ to bezwymiarowa wielkość określająca stosunek
prędkości światła w próżni $c$ do prędkości fazowej $v$ w danym ośrodku:

$$n = \frac{c}{v}$$

### Podstawowe zależności

| Wielkość | Związek z $n$ |
|----------|---------------|
| Prędkość fazowa | $v = c/n$ |
| Długość fali w ośrodku | $\lambda = \lambda_0 / n$ |
| Liczba falowa | $k = n k_0 = 2\pi n / \lambda_0$ |
| Przenikalność dielektryczna | $\varepsilon = n^2$ (dla $\mu \approx 1$) |
| Impedancja falowa ośrodka | $Z = Z_0 / n$ |

### Dyspersja

Współczynnik załamania zależy od długości fali (dyspersja). Dla materiałów
przezroczystych w zakresie widzialnym typowa jest dyspersja normalna — $n$
maleje ze wzrostem $\lambda$. Jest to istotne przy projektowaniu warstw
antyodbiciowych dla konkretnej długości fali.

### Zespolony współczynnik załamania (wprowadzenie)

W materiałach absorbujących używa się zapisu zespolonego:

$$\widetilde{n} = n + i\kappa$$

gdzie $\kappa$ (lub $k$) to współczynnik ekstynkcji, związany z absorpcją.
Dla warstw antyodbiciowych kluczowe jest, aby materiał warstwy był
**nieabsorbujący** ($\kappa \approx 0$) w zakresie pracy.

---

## Pytanie 2: Interferencja światła

### Definicja

**Interferencja** to nakładanie się dwóch lub więcej fal prowadzące do
przestrzennego rozkładu natężenia innego niż suma natężeń fal składowych.

### Warunek koherencji

Aby interferencja była obserwowalna, nakładające się fale muszą być
**koherentne** (stała różnica faz w czasie).

### Interferencja w cienkich warstwach

W warstwie dielektrycznej o grubości $d$ i współczynniku $n_f$, umieszczonej
między ośrodkami o $n_1$ i $n_2$, fala odbija się od obu granic:

```
  ośrodek 1 (n1)     granica 1    warstwa (nf)     granica 2    ośrodek 2 (n2)
       ↓ padanie  →    ╱ r1        ←  →            ╱ r2
       ↑ r1 (odbicie) ╱            ←  →           ╱
                                       ↑ r2
```

Różnica dróg optycznych między falą odbitą od pierwszej i drugiej granicy:

$$\Delta = 2 n_f d \cos\theta_f$$

gdzie $\theta_f$ to kąt załamania w warstwie.

### Warunki interferencji (dla padania normalnego, $\theta = 0$)

**Interferencja konstruktywna** (wzmocnienie odbicia):

$$2 n_f d = m\lambda_0, \qquad m = 1, 2, 3, \ldots$$

**Interferencja destrukcyjna** (wygaszenie odbicia):

$$2 n_f d = \left(m + \frac{1}{2}\right)\lambda_0, \qquad m = 0, 1, 2, \ldots$$

lub równoważnie:

$$2 n_f d = \frac{(2m+1)\lambda_0}{2}$$

### Przesunięcie fazowe przy odbiciu

Przy odbiciu od ośrodka gęstszego optycznie ($n_1 < n_2$) fala doznaje
przesunięcia fazowego o $\pi$ (odpowiada to dodatkowej różnicy dróg $\lambda_0/2$).
Należy to uwzględnić przy ustalaniu warunków interferencji.

---

## Pytanie 3: Co to jest całkowite wewnętrzne odbicie i kiedy zachodzi?

### Definicja

**Całkowite wewnętrzne odbicie** (TIR) występuje, gdy światło pada na granicę
dwóch ośrodków od strony ośrodka gęstszego optycznie ($n_1 > n_2$) pod kątem
większym niż kąt graniczny $\theta_{gr}$. Wówczas cała energia fali zostaje
odbita z powrotem do ośrodka 1.

### Kąt graniczny

$$\theta_{gr} = \arcsin\!\left(\frac{n_2}{n_1}\right)$$

### Warunki wystąpienia

1. $n_1 > n_2$ — światło przechodzi z ośrodka gęstszego do rzadszego
2. $\theta_1 > \theta_{gr}$ — kąt padania przekracza kąt graniczny

### Fala zanikająca

Przy TIR pole wnika do drugiego ośrodka na głębokość rzędu długości fali,
tworząc falę zanikającą (ewanescentną):

$$E(x) = E_0 \cdot e^{-x/d_p}$$

$$d_p = \frac{\lambda_0}{2\pi\sqrt{n_1^2\sin^2\theta_1 - n_2^2}}$$

### Znaczenie w kontekście warstw dielektrycznych

Dla układów warstwowych projektowanych przy padaniu normalnym całkowite
wewnętrzne odbicie nie zachodzi (chyba że rozważamy falowody planarne).
Natomiast mechanizm odbicia Fresnela na każdej granicy, wzmocniony przez
interferencję wielowiązkową, pozwala osiągnąć bardzo wysokie lub bardzo niskie
współczynniki odbicia.

---

## Pytanie 4: Natężeniowy współczynnik odbicia

### Definicja

**Natężeniowy współczynnik odbicia** (reflektancja) $R$ to stosunek natężenia
(mocy) fali odbitej do natężenia fali padającej:

$$R = \frac{I_{\text{odbite}}}{I_{\text{padające}}}$$

$R$ przyjmuje wartości od 0 (brak odbicia) do 1 (całkowite odbicie).

### Dla pojedynczej granicy (padanie normalne)

Ze wzorów Fresnela dla $\theta = 0^\circ$:

$$R = \left( \frac{n_1 - n_2}{n_1 + n_2} \right)^2$$

Im większa różnica $n_1 - n_2$, tym większe odbicie.

**Przykład (szkło–powietrze):**

$$R = \left( \frac{1.5 - 1.0}{1.5 + 1.0} \right)^2 = \left( \frac{0.5}{2.5} \right)^2 = 0.04 = 4\%$$

### Dla układu warstwowego (wielokrotne odbicia)

Dla pojedynczej warstwy dielektrycznej na podłożu, przy padaniu normalnym,
wypadkowy współczynnik odbicia jest wynikiem interferencji fal odbitych od
obu granic:

$$R = \left| \frac{r_1 + r_2 e^{-i\delta}}{1 + r_1 r_2 e^{-i\delta}} \right|^2$$

gdzie:
- $r_1 = \dfrac{n_1 - n_f}{n_1 + n_f}$ — współczynnik odbicia na granicy 1
- $r_2 = \dfrac{n_f - n_2}{n_f + n_2}$ — współczynnik odbicia na granicy 2
- $\delta = \dfrac{4\pi n_f d}{\lambda_0}$ — przesunięcie fazowe po przejściu
  warstwy w obie strony

### Transmitancja

$$T = 1 - R \quad \text{(dla warstwy nieabsorbującej)}$$

---

## Pytanie 5: Jaki warunek grubości i wsp. załamania musi spełniać warstwa dielektryka, aby pełnić funkcję warstwy antyodbiciowej?

### Cel warstwy antyodbiciowej (AR – Anti-Reflection)

Celem jest **minimalizacja odbicia** ($R \to 0$) na granicy dwóch ośrodków
(np. powietrze–szkło) dla zadanej długości fali $\lambda_0$.

### Warunek amplitudowy — współczynnik załamania warstwy

Aby amplitudy fal odbitych od obu granic były równe:

$$n_f = \sqrt{n_1 \cdot n_2}$$

Wtedy $|r_1| = |r_2|$.

Dla typowego przypadku **powietrze ($n_1 \approx 1$)–szkło ($n_2 \approx 1.5$)**:

$$n_f = \sqrt{1.0 \cdot 1.5} \approx 1.22$$

W praktyce najbliższym materiałem jest MgF$_2$ ($n \approx 1.38$).

### Warunek fazowy — grubość warstwy

Aby odbite fale interferowały destrukcyjnie (przeciwne fazy), optyczna grubość
warstwy musi wynosić $\lambda_0/4$ (lub nieparzystą wielokrotność):

$$n_f d = \frac{\lambda_0}{4}$$

czyli:

$$d = \frac{\lambda_0}{4 n_f}$$

Różnica dróg optycznych = $2 n_f d = \lambda_0/2$, a przy odpowiednich
przesunięciach fazowych przy odbiciu daje to interferencję destrukcyjną.

### Pełny warunek na pojedynczą warstwę AR

| Parametr | Warunek | Opis |
|----------|---------|------|
| Współczynnik załamania | $n_f = \sqrt{n_1 n_2}$ | Równe amplitudy odbić |
| Grubość optyczna | $n_f d = \lambda_0/4$ | Przeciwne fazy — wygaszenie |
| Materiał | Nieabsorbujący ($\kappa \approx 0$) | Unikamy strat |

### Dla jakiego kąta?

Standardowo projektuje się dla **padania normalnego** ($\theta = 0^\circ$).
Dla innych kątów grubość efektywna zmienia się o czynnik $\cos\theta_f$.

### Przykład obliczeniowy

Dla $\lambda_0 = 550$ nm (środek zakresu widzialnego), podłoże szklane $n_2 = 1.52$,
powietrze $n_1 = 1.0$:

- $n_f \approx \sqrt{1.52} \approx 1.23$ (MgF$_2$ o $n = 1.38$ jest akceptowalny)
- $d = \dfrac{550}{4 \cdot 1.38} \approx 99.6$ nm

### Charakterystyka spektralna

Pojedyncza warstwa $\lambda/4$ daje $R \approx 0$ tylko dla jednej długości fali.
Reflektancja rośnie wraz z oddalaniem się od $\lambda_0$ — warstwa ma kształt
litery V na wykresie $R(\lambda)$.

### Rozszerzenie — warstwy wielowarstwowe (stacki AR)

Aby uzyskać szerokopasmowe antyodbicie, stosuje się układy kilku warstw
o różnych $n_f$ i $d$, np. układ $\lambda/4 - \lambda/2 - \lambda/4$ daje
charakterystykę w kształcie litery W (szerokopasmową).

---

## Podsumowanie — projektowanie warstwy antyodbiciowej krok po kroku

1. Określić ośrodki: $n_1$ (zwykle powietrze) i $n_2$ (podłoże)
2. Wyznaczyć docelową długość fali $\lambda_0$
3. Obliczyć $n_f = \sqrt{n_1 n_2}$ i znaleźć dostępny materiał o zbliżonym $n$
4. Obliczyć grubość $d = \lambda_0 / (4 n_f)$
5. (Opcjonalnie) Zoptymalizować numerycznie dla szerszego pasma

---

## Co zawrzeć w sprawozdaniu

1. **Strona tytułowa** — nazwa ćwiczenia, przedmiot, data, skład zespołu,
   prowadzący, miejsce na podpis
2. **Krótki wstęp teoretyczny** — wzory Fresnela, interferencja w cienkich
   warstwach, warunek $\lambda/4$
3. **Opis metody projektowania** — wyprowadzenie warunku $n_f = \sqrt{n_1 n_2}$
   i $d = \lambda_0 / (4 n_f)$ z warunku interferencji destrukcyjnej
4. **Obliczenia projektowe** — dla wybranej długości fali i materiałów
5. **Wyniki symulacji** (jeśli wykonywane) — charakterystyka $R(\lambda)$
   dla zaprojektowanej warstwy
6. **Wnioski** — skuteczność warstwy, ograniczenia pojedynczej warstwy $\lambda/4$,
   kompromis materiałowy ($n_f$ dostępny vs idealny)

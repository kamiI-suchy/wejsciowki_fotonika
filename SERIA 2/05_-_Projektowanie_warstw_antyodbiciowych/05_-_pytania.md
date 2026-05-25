# Wejściówka 05 – Projektowanie warstw antyodbiciowych

## Pytanie 1: Co to jest współczynnik załamania światła w materiale?

**Współczynnik załamania** $n$ to bezwymiarowa wielkość fizyczna określająca stosunek
prędkości światła w próżni do prędkości światła w danym ośrodku:

$$n = \frac{c}{v}$$

- $c \approx 3 \times 10^8 \text{ m/s}$ — prędkość światła w próżni,
- $v$ — prędkość światła w materiale.

Fizycznie $n$ jest miarą **gęstości optycznej** ośrodka i wynika z oddziaływania fali
elektromagnetycznej z elektronami w materiale (polaryzacja ośrodka). Dla próżni $n=1$,
dla typowych dielektryków $n \in (1.3; 4.0)$, dla półprzewodników $n \in (3; 5)$.

**Dyspersja** — zależność $n(\lambda)$ — oznacza, że $n$ zmienia się z długością fali.
W obszarze normalnej dyspersji $n$ maleje ze wzrostem $\lambda$. Matematycznie opisuje
to np. równanie Sellmeiera:

$$n^2(\lambda) = 1 + \sum_k \frac{B_k \lambda^2}{\lambda^2 - C_k}$$

Zależność ta ma znaczenie przy projektowaniu warstw, bo warunek interferencyjny
(grubość $\lambda/4$) jest spełniony ściśle tylko dla jednej długości fali.

---

## Pytanie 2: Interferencja światła

### Zasada superpozycji

Interferencja to zjawisko nakładania się dwóch lub więcej fal świetlnych w tym samym
punkcie przestrzeni, prowadzące do wzmocnienia lub osłabienia wypadkowego natężenia.

### Warunek koherencji

Aby interferencja była obserwowalna, fale muszą być **koherentne** — mieć stałą
w czasie różnicę faz. W praktyce w cienkich warstwach interferują ze sobą wiązki
pochodzące z tego samego źródła, rozdzielone przez odbicie na kolejnych granicach
warstwy.

### Interferencja konstruktywna i destruktywna

Dla dwóch fal o jednakowym natężeniu i różnicy faz $\Delta \varphi$:

- **Konstruktywna** (wzmocnienie): $\Delta \varphi = 2m\pi,\; m = 0, 1, 2, \ldots$

  Fale są w fazie, amplitudy się dodają: $I_{\text{max}} = 4I_0$.

- **Destruktywna** (wygaszenie): $\Delta \varphi = (2m + 1)\pi$

  Fale są w przeciwfazie: $I_{\text{min}} = 0$ (dla idealnie równych amplitud).

### Różnica faz w cienkiej warstwie

Różnica faz między falą odbitą od górnej i dolnej powierzchni warstwy o grubości $d$
i współczynniku załamania $n$ przy kącie padania $\theta$ (w warstwie):

$$\Delta \varphi = \frac{4\pi}{\lambda_0}\, n d \cos\theta + \Delta \varphi_{\text{skok}}$$

gdzie $\Delta \varphi_{\text{skok}}$ to dodatkowa zmiana fazy przy odbiciu (skok fazy
o $\pi$ przy odbiciu od ośrodka gęstszego optycznie).

Dla padania normalnego ($\theta = 0$):

$$\Delta \varphi = \frac{4\pi n d}{\lambda_0} + \Delta \varphi_{\text{skok}}$$

### Optyczna różnica drogi (OPD)

$$\text{OPD} = 2 n d \cos\theta$$

Interferencja zależy od **grubości optycznej** $nd$, a nie od grubości geometrycznej $d$.

### Zastosowanie w warstwach antyodbiciowych

W warstwie antyodbiciowej wykorzystuje się **interferencję destruktywną** między
wiązkami odbitymi od górnej i dolnej granicy warstwy. Jeśli amplitudy tych dwóch
odbitych wiązek są równe i ich fazy przeciwne, odbicie zostaje całkowicie wygaszone
(zerowe dla jednej długości fali).

---

## Pytanie 3: Co to jest całkowite wewnętrzne odbicie i kiedy zachodzi?

**Całkowite wewnętrzne odbicie** (ang. *total internal reflection*, TIR) występuje, gdy
światło pada na granicę dwóch ośrodków od strony optycznie **gęstszej** ($n_1 > n_2$)
pod kątem większym od **kąta granicznego** $\theta_{\text{gr}}$.

Kąt graniczny wynika z prawa Snelliusa:

$$n_1 \sin\theta_1 = n_2 \sin\theta_2$$

Przy $\theta_2 = 90^\circ$:

$$\sin\theta_{\text{gr}} = \frac{n_2}{n_1}$$

**Dwa warunki konieczne TIR:**
1. $n_1 > n_2$ (światło przechodzi z gęstszego do rzadszego ośrodka),
2. $\theta_1 > \theta_{\text{gr}}$ (kąt padania większy od granicznego).

Przy TIR światło nie przechodzi do drugiego ośrodka — energia w całości wraca do
ośrodka pierwszego. Współczynnik odbicia $R = 1$ (100%).

**Fala ewanescentna** — przy TIR pole elektromagnetyczne częściowo wnika do ośrodka
rzadszego na głębokość rzędu długości fali. Amplituda tej fali maleje wykładniczo
z odległością od granicy.

**Znaczenie dla warstw:** W warstwach antyodbiciowych i odbiciowych TIR nie jest
głównym mechanizmem — odbicie zachodzi przy kątach mniejszych od granicznego. TIR
jest natomiast kluczowe dla działania światłowodów i falowodów planarnych.

---

## Pytanie 4: Natężeniowy współczynnik odbicia

### Definicja

**Natężeniowy współczynnik odbicia** $R$ to stosunek natężenia światła odbitego $I_r$
do natężenia światła padającego $I_i$:

$$R = \frac{I_r}{I_i}$$

Jest to wielkość bezwymiarowa, $0 \leq R \leq 1$ (lub $0\% \leq R \leq 100\%$).

### Wzory Fresnela — padanie normalne

Dla padania normalnego ($\theta = 0^\circ$) na granicę dwóch ośrodków o $n_1$ i $n_2$:

$$R = |r|^2 = \left(\frac{n_1 - n_2}{n_1 + n_2}\right)^2$$

$$T = 1 - R = \frac{4 n_1 n_2}{(n_1 + n_2)^2}$$

### Wzory Fresnela — przypadek ogólny (kąty $\theta_1$, $\theta_2$)

Dla polaryzacji **TE** (s, pole E prostopadłe do płaszczyzny padania):

$$r_{\text{TE}} = \frac{n_1 \cos\theta_1 - n_2 \cos\theta_2}{n_1 \cos\theta_1 + n_2 \cos\theta_2}, \qquad R_{\text{TE}} = |r_{\text{TE}}|^2$$

Dla polaryzacji **TM** (p, pole E równoległe do płaszczyzny padania):

$$r_{\text{TM}} = \frac{n_2 \cos\theta_1 - n_1 \cos\theta_2}{n_2 \cos\theta_1 + n_1 \cos\theta_2}, \qquad R_{\text{TM}} = |r_{\text{TM}}|^2$$

Kąt $\theta_2$ wyznacza się z prawa Snelliusa: $n_1 \sin\theta_1 = n_2 \sin\theta_2$.

### Kąt Brewstera

Dla polaryzacji TM istnieje kąt, przy którym $R_{\text{TM}} = 0$ — światło odbite jest
całkowicie spolaryzowane (tylko składowa TE). Kąt Brewstera:

$$\tan\theta_B = \frac{n_2}{n_1}$$

### Przykład — granica powietrze-szkło

Dla $n_1 = 1$ (powietrze), $n_2 = 1.5$ (szkło), padanie normalne:

$$R = \left(\frac{1 - 1.5}{1 + 1.5}\right)^2 = \left(\frac{-0.5}{2.5}\right)^2 = 0.04 = 4\%$$

Bez pokrycia antyodbiciowego szkło odbija ~4% padającego światła na każdej powierzchni.
Dla układu wieloelementowego (np. obiektyw z 10 soczewkami = 20 powierzchni) sumaryczne
straty sięgają ~56%, co pokazuje znaczenie warstw antyodbiciowych.

---

## Pytanie 5: Jaki warunek grubości i wsp. załamania musi spełniać warstwa dielektryka, aby pełnić funkcję warstwy antyodbciowej?

### Zasada działania

Warstwa antyodbiciowa (AR, ang. *anti-reflection coating*) eliminuje odbicie od
powierzchni poprzez **interferencję destruktywną** fal odbitych od górnej i dolnej
granicy warstwy.

Układ: **powietrze ($n_0$) | warstwa AR ($n_1$, $d$) | podłoże ($n_s$)**

Dwie fale odbite (od granicy $n_0/n_1$ i od granicy $n_1/n_s$) muszą się wygaszać.

### Warunek fazowy (grubościowy) — $\lambda/4$

Aby wiązki odbite od górnej i dolnej granicy były w przeciwfazie, podwójne przejście
przez warstwę musi dawać różnicę drogi optycznej równą $(2m+1)\lambda_0/2$ (przy
uwzględnieniu ewentualnych skoków fazy). Dla padania normalnego i $n_1$ pomiędzy
$n_0$ a $n_s$ (oba odbicia dają skok fazy $\pi$):

$$\boxed{n_1 d = \frac{\lambda_0}{4}}$$

gdzie $\lambda_0$ to długość fali w próżni, dla której projektuje się warstwę.

Jest to tzw. **warstwa ćwierćfalowa** (*quarter-wave layer*) — jej grubość optyczna
równa jest jednej czwartej długości fali. Geometryczna grubość:

$$d = \frac{\lambda_0}{4 n_1}$$

### Warunek amplitudowy — współczynnik załamania

Aby amplitudy obu odbitych fal były równe (całkowite wygaszenie), musi zachodzić:

$$\boxed{n_1 = \sqrt{n_0 \, n_s}}$$

lub równoważnie:

$$r_{01} = r_{1s} \quad\Longrightarrow\quad \frac{n_0 - n_1}{n_0 + n_1} = \frac{n_1 - n_s}{n_1 + n_s}$$

### Przykład — szkło ($n_s = 1.5$) w powietrzu ($n_0 = 1$)

$$n_1 = \sqrt{1 \times 1.5} = \sqrt{1.5} \approx 1.22$$

Idealny materiał AR dla szkła powinien mieć $n \approx 1.22$. Najbliższe dostępne
materiały:
- $\text{MgF}_2$ — $n \approx 1.38$ (najczęściej stosowany),
- $\text{SiO}_2$ — $n \approx 1.46$.

Przy $n_1 = 1.38$ (MgF₂), refleksja resztkowa dla $\lambda_0$:

$$R = \left(\frac{n_0 n_s - n_1^2}{n_0 n_s + n_1^2}\right)^2 = \left(\frac{1.5 - 1.9044}{1.5 + 1.9044}\right)^2 \approx 1.3\%$$

(zamiast 4% bez warstwy).

### Oba warunki łącznie

| Warunek | Wzór | Znaczenie |
|---------|------|-----------|
| **Fazowy** | $n_1 d = \lambda_0/4$ | Fale w przeciwfazie (interferencja destruktywna) |
| **Amplitudowy** | $n_1 = \sqrt{n_0 n_s}$ | Równe amplitudy (całkowite wygaszenie) |

Gdy oba warunki są spełnione: $R = 0$ dla danej $\lambda_0$.

### Charakterystyka spektralna

Warstwa $\lambda/4$ daje $R = 0$ tylko dla jednej długości fali $\lambda_0$.
Dla innych długości fali refleksja rośnie — powstaje charakterystyczna krzywa
w kształcie litery **V** (dla jednej warstwy) lub **W** (dla układów dwuwarstwowych).

### Rozszerzanie pasma — warstwy wielowarstwowe

Aby uzyskać niską refleksję w szerszym zakresie spektralnym, stosuje się układy
wielowarstwowe (2, 3 lub więcej warstw) o stopniowanych współczynnikach załamania:

$$n_0 < n_1 < n_2 < \cdots < n_s$$

Każda warstwa ma grubość optyczną $\lambda_0/4$, a współczynniki załamania dobiera się
tak, aby zminimalizować $R$ w całym zakresie (broadband AR coating).

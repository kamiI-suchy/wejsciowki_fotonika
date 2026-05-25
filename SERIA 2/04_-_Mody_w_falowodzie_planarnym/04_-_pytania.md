# Wejściówka 04 – Mody w falowodzie planarnym

## Pytanie 1: Pojęcie modu w falowodzie planarnym. Mody TE i TM

### Definicja modu

**Mod** to ustalony rozkład pola elektromagnetycznego w przekroju poprzecznym falowodu,
który propaguje się wzdłuż osi falowodu (kierunek $z$) bez zmiany swojego kształtu
poprzecznego. Matematycznie, pole modu ma postać:

$$\mathbf{E}(x, y, z) = \mathbf{E}_m(x, y)\, e^{-i\beta_m z}$$

$$\mathbf{H}(x, y, z) = \mathbf{H}_m(x, y)\, e^{-i\beta_m z}$$

gdzie:
- $\mathbf{E}_m(x, y)$, $\mathbf{H}_m(x, y)$ – rozkład poprzeczny (profil) modu $m$-tego,
- $\beta_m$ – stała propagacji modu $m$-tego,
- $m = 0, 1, 2, \ldots$ – numer (rząd) modu.

Każdy mod ma swoją własną stałą propagacji $\beta_m$ i efektywny współczynnik załamania
$n_{\text{eff},m} = \beta_m / k_0$, gdzie $k_0 = 2\pi/\lambda_0$.

### Warunek prowadzenia modu

Aby mod był **prowadzony**, stała propagacji musi spełniać:

$$k_0 n_s < \beta_m < k_0 n_f$$

lub równoważnie dla efektywnego współczynnika załamania:

$$n_s < n_{\text{eff},m} < n_f$$

Mod o $\beta_m$ bliskim $k_0 n_f$ jest **silnie prowadzony** (daleko od odcięcia).
Mod o $\beta_m$ bliskim $k_0 n_s$ jest **blisko odcięcia** — przy $\beta = k_0 n_s$
mod przestaje być prowadzony i energia ucieka do podłoża (mod podłożowy/radiacyjny).

### Mody TE (Transverse Electric)

W modach TE pole elektryczne jest **prostopadłe** do płaszczyzny padania (kierunku
propagacji i normalnej do granicy), czyli ma tylko składową $E_y$:

- $\mathbf{E} = (0, E_y, 0)$ — jedna składowa elektryczna, poprzeczna.
- $\mathbf{H} = (H_x, 0, H_z)$ — dwie składowe magnetyczne.

W falowodzie planarnym (oś $x$ — normalna do warstw, $z$ — kierunek propagacji):
pole $E_y$ jest równoległe do płaszczyzn granicznych warstw.

**Równanie własne dla modów TE** w symetrycznym falowodzie planarnym:

$$\tan\!\left(\frac{\kappa d}{2}\right) =
\begin{cases}
\displaystyle\frac{\gamma}{\kappa} & \text{dla modów parzystych} \\[12pt]
-\displaystyle\frac{\kappa}{\gamma} & \text{dla modów nieparzystych}
\end{cases}$$

gdzie:
- $\kappa = \sqrt{k_0^2 n_f^2 - \beta^2}$ — poprzeczna stała propagacji w rdzeniu,
- $\gamma = \sqrt{\beta^2 - k_0^2 n_s^2}$ — stała zaniku w płaszczu,
- $d$ — grubość warstwy prowadzącej.

### Mody TM (Transverse Magnetic)

W modach TM pole magnetyczne jest **prostopadłe** do płaszczyzny padania — ma tylko
składową $H_y$:

- $\mathbf{E} = (E_x, 0, E_z)$ — dwie składowe elektryczne.
- $\mathbf{H} = (0, H_y, 0)$ — jedna składowa magnetyczna, poprzeczna.

**Równanie własne dla modów TM**:

$$\tan\!\left(\frac{\kappa d}{2}\right) =
\begin{cases}
\displaystyle\left(\frac{n_f}{n_s}\right)^2 \frac{\gamma}{\kappa} & \text{dla modów parzystych} \\[12pt]
-\displaystyle\left(\frac{n_s}{n_f}\right)^2 \frac{\kappa}{\gamma} & \text{dla modów nieparzystych}
\end{cases}$$

### Różnice TE vs TM

| Własność | TE | TM |
|----------|-----|-----|
| Pole poprzeczne | $E_y$ | $H_y$ |
| Równanie własne | prostsze (bez współczynników $n$) | zawiera $(n_f/n_s)^2$ |
| Stała propagacji $\beta$ | nieco większa | nieco mniejsza (dla tego samego modu) |
| Polaryzacja | elektryczna równoległa do granic | magnetyczna równoległa do granic |

---

## Pytanie 2: Od czego zależy ilość modów propagujących się w falowodzie?

### Czynniki wpływające na liczbę modów

Liczba modów prowadzonych w falowodzie planarnym zależy od czterech parametrów:

#### 1. Grubość warstwy prowadzącej $d$

Im **grubsza** warstwa prowadząca, tym więcej modów może się w niej rozchodzić.
W bardzo cienkiej warstwie ($d \ll \lambda$) może istnieć tylko mod podstawowy ($m=0$)
lub żaden.

#### 2. Kontrast współczynnika załamania $\Delta n = n_f - n_s$

Im **większa różnica** między współczynnikiem załamania rdzenia a płaszcza, tym więcej
modów jest prowadzonych. Falowód o małym kontraście (np. $\Delta n \approx 0.01$) prowadzi
zwykle tylko jeden lub kilka modów.

#### 3. Długość fali $\lambda$ w próżni

Krótsza długość fali → większa znormalizowana stała falowa $V$ → więcej modów.
Przy danej strukturze falowodu, zmniejszanie $\lambda$ zwiększa liczbę modów — powyżej
pewnej $\lambda$ falowód staje się jednomodowy, a poniżej pewnej $\lambda$ — wielomodowy.

#### 4. Asymetria falowodu (różnica $n_s$ i $n_c$)

W falowodzie asymetrycznym ($n_s \neq n_c$) warunek odcięcia modu podstawowego jest
niezerowy — mod $m=0$ też ma swoją częstość odcięcia (w przeciwieństwie do
falowodu symetrycznego, gdzie mod podstawowy nie ma odcięcia).

### Wzór na liczbę modów

Dla falowodu symetrycznego skokowego:

$$M = \left\lfloor \frac{2V}{\pi} \right\rfloor$$

gdzie $\lfloor \cdot \rfloor$ oznacza część całkowitą (zaokrąglenie w dół), a $V$ to
znormalizowana stała falowa.

### Przykład liczbowy

Dla falowodu z ćwiczenia: $n_f = 3.28$, $n_s = 3.27$, $d = 4\text{ µm}$, $\lambda = 1500\text{ nm}$:

$$V = \frac{2\pi \cdot 4}{1.5} \sqrt{3.28^2 - 3.27^2} = \frac{8\pi}{1.5} \sqrt{0.6559 - 0.6329} \approx \frac{8\pi}{1.5} \cdot 0.1517 \approx 2.54$$

$$M = \left\lfloor \frac{2 \cdot 2.54}{\pi} \right\rfloor = \lfloor 1.62 \rfloor = 1$$

Falowód jest **jednomodowy** — propaguje się tylko mod podstawowy $m=0$.

---

## Pytanie 3: Znormalizowana liczba falowa V – definicja, znaczenie

### Definicja

Znormalizowana stała falowa $V$ (zwana też **parametrem V**, częstością znormalizowaną
lub liczbą falową falowodu) dla planarnego falowodu symetrycznego:

$$\boxed{V = k_0 d \sqrt{n_f^2 - n_s^2} = \frac{2\pi}{\lambda_0}\, d \sqrt{n_f^2 - n_s^2}}$$

gdzie:
- $k_0 = 2\pi / \lambda_0$ — liczba falowa w próżni,
- $d$ — grubość warstwy prowadzącej (rdzenia),
- $n_f$ — współczynnik załamania rdzenia,
- $n_s$ — współczynnik załamania podłoża/płaszcza (w falowodzie symetrycznym $n_c = n_s$).

W falowodzie asymetrycznym $n_s$ zastępuje się większym z $(n_s, n_c)$.

### Fizyczne znaczenie

Parametr $V$ jest **bezwymiarową miarą zdolności falowodu do prowadzenia światła**.
Im większe $V$, tym "silniejszy" optycznie jest falowód — prowadzi więcej modów
i silniej je więzi w rdzeniu.

$V$ łączy w sobie trzy kluczowe cechy geometryczne i materiałowe:
- $d$ — geometrię (grubość),
- $\Delta n = \sqrt{n_f^2 - n_s^2}$ — kontrast optyczny,
- $\lambda_0$ — skalę dyfrakcyjną.

### Znaczenie praktyczne

#### 1. Określenie liczby modów

Dla falowodu symetrycznego skokowego:

$$M = \left\lfloor \frac{2V}{\pi} \right\rfloor$$

#### 2. Warunki odcięcia modów

Każdy mod $m$ ma swoją wartość graniczną $V_{\text{cut},m}$, powyżej której zaczyna
się propagować (dla falowodu symetrycznego):

$$V_{\text{cut},m} = m \cdot \frac{\pi}{2}$$

| Mod $m$ | $V_{\text{cut}}$ | Opis |
|---------|------------------|------|
| 0 | 0 | Mod podstawowy — zawsze prowadzony (w fal. symetrycznym) |
| 1 | $\pi/2 \approx 1.57$ | Pierwszy mod wyższego rzędu |
| 2 | $\pi \approx 3.14$ | Drugi mod wyższego rzędu |

#### 3. Warunek jednomodowości

Falowód jest **jednomodowy** gdy:

$$V < \frac{\pi}{2}$$

Wówczas propaguje się tylko mod podstawowy $m=0$.

#### 4. Znormalizowany efektywny współczynnik załamania

Wprowadza się także tzw. **znormalizowany współczynnik załamania** (parametr $b$):

$$b = \frac{n_{\text{eff}}^2 - n_s^2}{n_f^2 - n_s^2} = \frac{\beta^2/k_0^2 - n_s^2}{n_f^2 - n_s^2}$$

Parametr $b$ przyjmuje wartości od 0 (mod na granicy odcięcia, $n_{\text{eff}} \to n_s$)
do 1 (mod silnie prowadzony, $n_{\text{eff}} \to n_f$).

#### 5. Uniwersalność opisu

Dwa różne falowody o tym samym $V$ mają tę samą liczbę modów i podobne własności
prowadzenia — parametr $V$ uniezależnia analizę od konkretnych wartości $d$, $\lambda$,
$n_f$, $n_s$.

### Podsumowanie — interpretacja $V$

| Wartość $V$ | Reżim pracy | Liczba modów (sym.) |
|-------------|-------------|---------------------|
| $V \ll 1$ | słabe prowadzenie | mod podstawowy słabo związany z rdzeniem |
| $V < \pi/2$ | jednomodowy | 1 |
| $V > \pi/2$ | wielomodowy | $\geq 2$ |
| $V \gg 1$ | silnie wielomodowy | wiele modów |

---

## Równania własne a mody — ujęcie matematyczne

### Rozkład pola w przekroju poprzecznym

W falowodzie planarnym pole modu ma postać (dla modów TE):

$$E_y(x) = \begin{cases}
A \cos(\kappa x) & \text{w rdzeniu } (-d/2 < x < d/2) \quad\text{(mody parzyste)} \\
A \sin(\kappa x) & \text{w rdzeniu } (-d/2 < x < d/2) \quad\text{(mody nieparzyste)} \\
B\, e^{-\gamma (|x| - d/2)} & \text{w płaszczu } (|x| > d/2)
\end{cases}$$

gdzie:
- $\kappa = \sqrt{k_0^2 n_f^2 - \beta^2}$ — składowa poprzeczna w rdzeniu,
- $\gamma = \sqrt{\beta^2 - k_0^2 n_s^2}$ — stała zaniku w płaszczu,
- $A, B$ — stałe wyznaczone z warunków ciągłości na granicach.

Warunek ciągłości $E_y$ i $H_z \propto \partial E_y/\partial x$ na granicach $x = \pm d/2$
prowadzi do równania własnego.

### Fizyczna interpretacja $\kappa$ i $\gamma$

- $\kappa$ — im większa, tym więcej oscylacji pola mieści się w rdzeniu (tym wyższy rząd modu).
- $\gamma$ — im większa, tym silniej pole jest związane z rdzeniem (szybciej zanika
  w płaszczu, mniej strat na zgięciach, mniejszy ogon ewane scentny).

### Krzywe dyspersyjne

Dla danego falowodu wykreśla się zależność $\beta(\omega)$ — to tzw. krzywe dyspersyjne
modów. Każdy mod ma osobną krzywą. Mod podstawowy ($m=0$) ma największe $\beta$, każdy
kolejny mod ma $\beta$ coraz bliższe $k_0 n_s$.

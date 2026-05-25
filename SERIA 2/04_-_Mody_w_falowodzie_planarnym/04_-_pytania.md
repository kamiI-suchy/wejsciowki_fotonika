# Wejściówka 04 – Mody w falowodzie planarnym

## Pytanie 1: Co to są mody w falowodzie planarnym?

### Definicja

**Mod** to ustalony rozkład pola elektromagnetycznego, który propaguje się wzdłuż
falowodu bez zmiany swojego kształtu poprzecznego (poza skalowaniem amplitudy
i ewentualnym przesunięciem fazowym).

Matematycznie, mody są rozwiązaniami równania falowego z warunkami brzegowymi
narzuconymi przez strukturę falowodu. Dla falowodu planarnego (niezmienniczość
w kierunku $y$) pole elektryczne można zapisać jako:

$$\vec{E}(x, y, z, t) = \vec{E}(x) \cdot e^{i(\beta z - \omega t)}$$

gdzie $\beta = k_0 n_{\text{eff}}$ to stała propagacji, a $E(x)$ to profil poprzeczny modu.

### Mody TE i TM

W falowodzie planarnym wyróżnia się dwie polaryzacje:

| Oznaczenie | Nazwa | Składowe niezerowe | Warunek brzegowy |
|-----------|-------|-------------------|-----------------|
| **TE** (s = 0) | Transverse Electric | $E_y, H_x, H_z$ | Ciągłość $E_y$ i $\partial E_y/\partial x$ |
| **TM** (s = 1) | Transverse Magnetic | $H_y, E_x, E_z$ | Ciągłość $H_y$ i $\varepsilon^{-1} \cdot \partial H_y/\partial x$ |

W kodzie `mody_falowod.m` wybór polaryzacji realizuje zmienna `s` (linia 31):
- `s=0` → mody TE
- `s=1` → mody TM (dodatkowe człony z pochodną $\varepsilon(x)$ w operatorze)

### Równanie własne

Dla modów TE w falowodzie skokowym (trzy warstwy jednorodne) równanie Helmholtza
w każdej warstwie ma postać:

$$\frac{d^2 E_y}{dx^2} + \left[k_0^2 n^2(x) - \beta^2\right] E_y = 0$$

gdzie $n(x)$ to profil współczynnika załamania (skokowy — wartość $n_c$, $n_f$, $n_s$
odpowiednio w pokryciu, warstwie prowadzącej i podłożu).

Rozwiązania w każdej warstwie są kombinacjami funkcji wykładniczych (w pokryciu
i podłożu — fale zanikające) oraz funkcji harmonicznych (w rdzeniu — fala stojąca).

### Mody prowadzone i promieniowania

- **Mody prowadzone**: $\max(n_s, n_c) < n_{\text{eff}} < n_f$
  Pole zanika wykładniczo w pokryciu i podłożu. Energia jest skupiona w warstwie
  prowadzącej i transportowana wzdłuż osi $z$.
- **Mody podłożowe/promieniowania**: $n_{\text{eff}} < \max(n_s, n_c)$
  Pole nie zanika w co najmniej jednej z warstw zewnętrznych. Energia "wycieka"
  z falowodu.

W programie warunek na mod prowadzony jest sprawdzany przez porównanie wartości
własnej z $\max(n_s^2, n_c^2)$ — patrz zmienna `eps = ns^2` w kodzie.

---

## Pytanie 2: Co to jest efektywny współczynnik załamania $n_{\text{eff}}$?

### Definicja

**Efektywny współczynnik załamania** $n_{\text{eff}}$ to stosunek stałej propagacji
$\beta$ do liczby falowej w próżni $k_0$:

$$n_{\text{eff}} = \frac{\beta}{k_0} = \frac{\beta \lambda}{2\pi}$$

### Interpretacja fizyczna

- $n_{\text{eff}}$ mówi, z jaką prędkością fazową porusza się dany mod:
  $v_f = c / n_{\text{eff}}$
- Dla modów prowadzonych: $\max(n_s, n_c) < n_{\text{eff}} < n_f$
- Im $n_{\text{eff}}$ jest bliższe $n_f$, tym mod jest **silniej prowadzony**
  (bardziej skupiony w rdzeniu)
- Im $n_{\text{eff}}$ jest bliższe $\max(n_s, n_c)$, tym mod jest **słabiej
  prowadzony** (więcej pola wnika do płaszcza/podłoża) — mod bliski odcięcia
- Różnica $n_f - n_{\text{eff}}$ określa, jak "ciasno" mod jest związany z falowodem

W programie `mody_falowod.m` wartości $n_{\text{eff}}$ są wypisywane po obliczeniu
wartości własnych macierzy `L`:

```matlab
b = diag(eval);
d = b(b>eps, 1);    % tylko mody prowadzone (b > ns^2)
neff = sqrt(d);     % efektywne współczynniki załamania
```

---

## Pytanie 3: Od czego zależy liczba modów prowadzonych?

### Parametr V (znormalizowana częstotliwość)

Liczba modów prowadzonych w falowodzie planarnym zależy od **znormalizowanej
częstotliwości** $V$ (zwanej też parametrem falowodu):

$$V = \frac{2\pi}{\lambda} \cdot h \cdot \sqrt{n_f^2 - n_s^2} = k_0 h \, \text{NA}$$

gdzie $\text{NA} = \sqrt{n_f^2 - n_s^2}$ to apertura numeryczna falowodu.

### Od czego zależy $V$?

| Parametr | Symbol | Zależność | Wpływ na liczbę modów |
|----------|--------|-----------|----------------------|
| Długość fali | $\lambda$ | $V \propto 1/\lambda$ | Krótsza fala → więcej modów |
| Szerokość falowodu | $h$ | $V \propto h$ | Szerszy falowód → więcej modów |
| Kontrast współczynnika | $\Delta n = n_f - n_s$ | $V \propto \sqrt{\Delta n}$ | Większy kontrast → więcej modów |

### Liczba modów TE w falowodzie symetrycznym

Dla symetrycznego falowodu skokowego ($n_s = n_c$):

$$M_{\text{TE}} = \left\lfloor \frac{V}{\pi} \right\rfloor + 1$$

gdzie $\lfloor\cdot\rfloor$ to podłoga (zaokrąglenie w dół). Fundamentalny mod TE₀
istnieje zawsze (brak odcięcia w falowodzie symetrycznym), nawet dla $V \to 0$.

### Częstotliwość odcięcia modu

Mod przestaje być prowadzony, gdy $n_{\text{eff}}$ spada do wartości $\max(n_s, n_c)$.
Dla falowodu **asymetrycznego** ($n_s \neq n_c$) nawet mod fundamentalny ma
niezerową częstotliwość odcięcia — poniżej pewnej wartości $V$ żaden mod nie jest
prowadzony.

### Wnioski praktyczne

- Zmieniając $\lambda$ (długość fali) przy ustalonej geometrii falowodu, zmieniamy
  liczbę modów — im krótsza fala, tym więcej modów
- **Falowód jednomodowy** propaguje tylko mod fundamentalny — wymaga odpowiednio
  małego $V$ (czyli dużej $\lambda$, małego $h$ lub małego kontrastu)
- W pomiarach będziemy badać zależność $LM = f(\lambda)$ dla falowodu symetrycznego
  i niesymetrycznego, szukając długości fali odcięcia

---

## Struktura falowodu planarnego w programie

Falowód planarny składa się z trzech warstw:

| Warstwa | Oznaczenie w kodzie | Współczynnik załamania | Rola |
|---------|---------------------|------------------------|------|
| **Pokrycie** (cladding/cover) | `nc` | $n_c$ | Górna warstwa zewnętrzna |
| **Warstwa prowadząca** (film/core) | `nf` | $n_f$ | Rdzeń — prowadzi światło |
| **Podłoże** (substrate) | `ns` | $n_s$ | Dolna warstwa zewnętrzna |

Warunek prowadzenia fali: $n_f > n_s$ oraz $n_f > n_c$.

### Domyślne parametry w programie

| Zmienna | Znaczenie | Wartość domyślna |
|---------|-----------|-----------------|
| `nc` | Wsp. załamania pokrycia | 1.49 |
| `nf` | Wsp. załamania warstwy prowadzącej | 1.50 |
| `ns` | Wsp. załamania podłoża | 1.49 |
| `h` | Szerokość (grubość) falowodu | 4 µm |
| `lambda` | Długość fali | 7.12 µm |
| `s` | Polaryzacja (0=TE, 1=TM) | 0 |
| `xmin` | Początek okna obliczeniowego | -h |
| `xmax` | Koniec okna obliczeniowego | 3h |
| `N` | Liczba punktów siatki | 300 |

Domyślnie $n_c = n_s = 1.49$, $n_f = 1.50$ — jest to **falowód symetryczny**
z bardzo małym kontrastem współczynnika załamania ($\Delta n = 0.01$).

---

## Metoda różnic skończonych w obliczaniu modów

Program `mody_falowod.m` rozwiązuje problem własny dla modów metodą **różnic
skończonych** (ang. *Finite Difference Method*, FDM).

### Idea metody

Zamiast rozwiązywać analityczne równanie przestępne (które dla falowodu
trójwarstwowego jest skomplikowane, szczególnie dla modów TM), metoda FDM:

1. **Dyskretyzuje** poprzeczny wymiar $x$ na siatkę $N$ punktów
2. **Przybliża** operator różniczkowy $\partial^2/\partial x^2$ za pomocą
   ilorazów różnicowych (trójdiagonalna macierz)
3. **Sprowadza** problem do algebraicznego równania własnego:
   $$\mathbf{L} \cdot \vec{\psi} = n_{\text{eff}}^2 \cdot \vec{\psi}$$
   gdzie $\mathbf{L}$ to macierz operatora, $\vec{\psi}$ to wektor próbek pola,
   a $n_{\text{eff}}^2$ to wartości własne

### Konstrukcja macierzy operatora (krok po kroku)

```matlab
p = 1/(k0*dx)^2;           % współczynnik skalujący od dyskretyzacji

% Człony diagonalne:
B = -2*p*ones(N,1) + ep;   % druga pochodna + profil epsilon

% Człony pozadiagonalne:
A1 = p*(ones(N-1,1) + a1*s);  % pod diagonalą
A2 = p*(ones(N-1,1) - a2*s);  % nad diagonalą

L = diag(A1, -1) + diag(B, 0) + diag(A2, 1);  % macierz trójdiagonalna
```

Dla modów **TE** ($s=0$): $A_1 = A_2 = p$ — standardowy laplasjan dyskretny
(przybliżenie drugiej pochodnej: $\psi''(x_i) \approx (\psi_{i+1} - 2\psi_i +
\psi_{i-1})/(\Delta x)^2$).

Dla modów **TM** ($s=1$): dodatkowe człony $a_1$, $a_2$ uwzględniają pochodną
$\varepsilon(x)$ wynikającą z warunków ciągłości składowej $H_y$ na granicach
ośrodków. Pochodna $\varepsilon'(x)$ jest przybliżana przez różnice skończone:

$$a_1 = \frac{1}{4}\frac{\varepsilon_{i+2} - \varepsilon_i}{\varepsilon_{i+1}}, \quad
  a_2 = \frac{1}{4}\frac{\varepsilon_{i+1} - \varepsilon_{i-1}}{\varepsilon_i}$$

### Algorytm

1. Zadaj parametry: $\lambda$, $n_c$, $n_f$, $n_s$, $h$
2. Zbuduj profil $n(x)$ i $\varepsilon(x) = n^2(x)$ na siatce $x_i$
3. Skonstruuj macierz operatora $\mathbf{L}$
4. Rozwiąż problem własny: `[evec, eval] = eig(L)`
5. Wybierz wartości własne odpowiadające modom prowadzonym: $b > n_s^2$
6. Oblicz $n_{\text{eff}} = \sqrt{b}$
7. Narysuj rozkłady poprzeczne modów (wektory własne)

---

## Przebieg laboratorium – co robić krok po kroku

### Krok 1 – uruchomienie domyślnej symulacji (mody TE)

1. Otwórz MATLAB i uruchom plik `mody_falowod.m`
2. Program obliczy i wyświetli:
   - **Figura 1** — profil współczynnika załamania $n(x)$
   - **Figura 2** — rozkłady poprzeczne wszystkich modów prowadzonych TE
   - **W konsoli** — wartości $n_{\text{eff}}$ i liczba modów $D$
3. Zanotuj liczbę modów i wartości $n_{\text{eff}}$

### Krok 2 – porównanie modów TE i TM

1. Zmień zmienną `s` z `0` na `1` (linia 31)
2. Uruchom program ponownie
3. Porównaj:
   - Liczbę modów TM vs TE (zwykle taka sama lub mniejsza dla TM)
   - Wartości $n_{\text{eff}}$ — dla TM są nieco mniejsze (słabsze prowadzenie)
   - Kształty rozkładów poprzecznych — dla TM pole "wychodzi" bardziej poza rdzeń

**Dlaczego?** Dla modów TM warunki brzegowe na granicy ośrodków "preferują" pole
w obszarze o mniejszym $\varepsilon$, przez co mody TM są słabiej prowadzone
(mają mniejsze $n_{\text{eff}}$) niż odpowiadające im mody TE.

### Krok 3 – pomiary $LM(\lambda)$ dla falowodu symetrycznego

Dla falowodu **symetrycznego** ($n_c = n_s = 1.49$, $n_f = 1.50$, $h = 4\ \mu\text{m}$)
zmieniaj długość fali $\lambda$ i notuj liczbę modów $LM$:

| $\lambda$ [µm] | 0.4 | 0.5 | 0.6 | 0.7 | 0.8 | 0.9 | 1.0 | 1.1 | 1.2 | 1.3 | 1.4 | 1.5 |
|---------------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **LM** | | | | | | | | | | | | |

**Co obserwować:** Dla małych $\lambda$ (wysoka częstotliwość) falowód jest
wielomodowy. Wraz ze wzrostem $\lambda$ kolejne mody wyższe przestają być
prowadzone (spadają poniżej odcięcia). Dla falowodu symetrycznego mod
fundamentalny istnieje zawsze — LM nigdy nie spada do zera.

### Krok 4 – wyznaczenie $\lambda_0$ (falowód jednomodowy, symetryczny)

Znajdź graniczną długość fali $\lambda_0$, przy której falowód staje się
**jednomodowy** ($LM = 1$). Dla $\lambda > \lambda_0$ prowadzony jest tylko
mod fundamentalny TE₀.

### Krok 5 – pomiary $LM(\lambda)$ dla falowodu niesymetrycznego

Zmień $n_c$ na wartość różną od $n_s$, np. $n_c = 1.0$ (powietrze), tworząc
**falowód niesymetryczny**:

```matlab
nc = 1.0; epc = nc^2;  % pokrycie — powietrze
```

Powtórz pomiary $LM$ w funkcji $\lambda$:

| $\lambda$ [µm] | 0.4 | 0.5 | 0.6 | 0.7 | 0.8 | 0.9 | 1.0 | 1.1 | 1.2 | 1.3 | 1.4 | 1.5 |
|---------------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **LM** | | | | | | | | | | | | |

### Krok 6 – wyznaczenie granic dla falowodu niesymetrycznego

1. **Falowód jednomodowy** — znajdź $\lambda_0$, przy której $LM = 1$
2. **Brak propagacji modowej** — znajdź $\lambda$, przy której $LM = 0$
   (w falowodzie niesymetrycznym nawet mod fundamentalny ma odcięcie!)

---

## Pytania podsumowujące (do sprawozdania)

### 1) Czym różnią się mody TE i TM w falowodzie planarnym?

Mody **TE** (Transverse Electric) mają tylko składową $E_y$ pola elektrycznego
(równoległą do granic warstw). Mody **TM** (Transverse Magnetic) mają tylko
składową $H_y$ pola magnetycznego.

Praktyczne różnice:
- Mody TM mają mniejsze $n_{\text{eff}}$ niż odpowiadające im mody TE tego samego
  rzędu — są słabiej prowadzone (pole bardziej "wychodzi" poza rdzeń)
- Mody TM mają niezerową częstotliwość odcięcia nawet w falowodzie symetrycznym
  (podczas gdy TE₀ nie ma odcięcia)
- Wynika to z dodatkowego członu w równaniu falowym związanego z pochodną
  $\varepsilon(x)$ na granicach ośrodków

### 2) Jak liczba modów zależy od długości fali?

Liczba modów **maleje** ze wzrostem długości fali ($V \propto 1/\lambda$):
- Krótkie fale → duże $V$ → wiele modów (falowód wielomodowy)
- Długie fale → małe $V$ → mało modów
- Dla falowodu symetrycznego: mod fundamentalny istnieje zawsze
- Dla falowodu niesymetrycznego: poniżej pewnego $V$ żaden mod nie jest prowadzony

### 3) Dlaczego falowód jednomodowy jest ważny w zastosowaniach?

Falowód jednomodowy eliminuje **dyspersję międzymodową** — różne mody propagują
się z różnymi prędkościami, co prowadzi do poszerzenia impulsu i degradacji
sygnału. W telekomunikacji światłowodowej stosuje się falowody jednomodowe
dla uzyskania dużych przepływności na długich dystansach.

---

## Co zawrzeć w sprawozdaniu

1. **Strona tytułowa** — nazwa ćwiczenia, przedmiot, data, skład zespołu,
   prowadzący, miejsce na podpis
2. **Krótki wstęp teoretyczny** — mody TE i TM, efektywny współczynnik załamania,
   parametr $V$, częstotliwość odcięcia
3. **Wykresy** — przykładowe profile modów dla falowodu symetrycznego
   (TE i TM), profil współczynnika załamania
4. **Tabele pomiarowe**:
   - $LM(\lambda)$ dla falowodu symetrycznego
   - $LM(\lambda)$ dla falowodu niesymetrycznego
   - Wartości $\lambda_0$ (granica jednomodowości) dla obu przypadków
   - Długość fali odcięcia dla falowodu niesymetrycznego
5. **Wnioski**:
   - Porównanie TE vs TM — różnice w $n_{\text{eff}}$ i liczbie modów
   - Zależność liczby modów od $\lambda$ — interpretacja przez parametr $V$
   - Porównanie falowodu symetrycznego i niesymetrycznego — rola asymetrii
     w istnieniu częstotliwości odcięcia modu fundamentalnego
   - Praktyczne znaczenie falowodów jednomodowych

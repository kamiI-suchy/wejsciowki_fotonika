# Wejściówka 03 – Propagacja światła w falowodzie planarnym

## Pytanie 1: Co to jest współczynnik załamania światła w materiale?

### Definicja

**Współczynnik załamania** $n$ to bezwymiarowa wielkość fizyczna opisująca, ile razy
prędkość światła w danym ośrodku jest mniejsza od prędkości światła w próżni:

$$n = \frac{c}{v}$$

gdzie:
- $c \approx 3 \times 10^8 \text{ m/s}$ – prędkość światła w próżni,
- $v$ – prędkość światła w danym materiale.

### Własności

- Dla próżni: $n = 1$ (umownie).
- Dla powietrza: $n \approx 1{,}0003$ (w przybliżeniu też 1).
- Dla typowych materiałów optycznych: $n \in (1{,}3; 4{,}0)$.
- Im większy $n$, tym ośrodek jest **optycznie gęstszy** — światło porusza się w nim wolniej.

### Zależność od długości fali (dyspersja)

Współczynnik załamania zależy od długości fali — zjawisko to nazywa się **dyspersją**.
Zazwyczaj $n$ maleje ze wzrostem $\lambda$ (dyspersja normalna). Matematycznie opisuje
się to np. równaniem Sellmeiera:

$$n^2(\lambda) = 1 + \sum_k \frac{B_k \lambda^2}{\lambda^2 - C_k}$$

gdzie $B_k$, $C_k$ to stałe doświadczalne dla danego materiału.

---

## Pytanie 2: Jak zachowuje się fala przy przejściu przez granicę ośrodków o różnych współczynnikach załamania?

### Zjawiska na granicy ośrodków

Gdy fala świetlna pada na granicę dwóch ośrodków o różnych $n$, zachodzą trzy zjawiska:

1. **Odbicie** – część fali wraca do ośrodka pierwszego pod tym samym kątem co kąt padania ($\theta_1' = \theta_1$).
2. **Załamanie (refrakcja)** – część fali przechodzi do ośrodka drugiego, zmieniając kierunek.
3. **Częściowe odbicie/transmisja** – stosunek energii fali odbitej do przechodzącej zależy od kąta padania i polaryzacji (wzory Fresnela).

### Prawo Snelliusa

Relację między kątami i współczynnikami załamania określa prawo Snelliusa:

$$n_1 \sin\theta_1 = n_2 \sin\theta_2$$

lub równoważnie:

$$\frac{\sin\theta_1}{\sin\theta_2} = \frac{n_2}{n_1}$$

- **Przejście do gęstszego ośrodka** ($n_2 > n_1$): $\theta_2 < \theta_1$ — fala załamana skręca ku normalnej.
- **Przejście do rzadszego ośrodka** ($n_2 < n_1$): $\theta_2 > \theta_1$ — fala załamana odchyla się od normalnej.

---

## Pytanie 3: Co to jest całkowite wewnętrzne odbicie i kiedy zachodzi?

### Definicja

**Całkowite wewnętrzne odbicie** (ang. *total internal reflection*, TIR) to zjawisko,
w którym fala padająca na granicę ośrodków od strony optycznie gęstszej ($n_1 > n_2$)
pod kątem większym od kąta granicznego **nie przechodzi** do drugiego ośrodka,
lecz w całości odbija się z powrotem.

### Kąt graniczny $\theta_{gr}$

Kąt graniczny to kąt padania, przy którym kąt załamania wynosi dokładnie $90^\circ$:

$$\sin\theta_{gr} = \frac{n_2}{n_1}$$

Wyprowadzenie: podstawiamy $\theta_2 = 90^\circ$ do prawa Snelliusa → $\sin\theta_2 = 1$ → $n_1 \sin\theta_{gr} = n_2$.

### Warunek wystąpienia TIR

Jednocześnie muszą być spełnione **dwa warunki**:

1. Fala przechodzi z ośrodka optycznie **gęstszego** do **rzadszego**: $n_1 > n_2$.
2. Kąt padania jest **większy** od kąta granicznego: $\theta_1 > \theta_{gr}$.

### Praktyczne znaczenie

Całkowite wewnętrzne odbicie jest podstawą działania **światłowodów** i **falowodów
planarnych**. W strukturach tych światło jest pułapkowane w rdzeniu (o wyższym $n$),
odbijając się wielokrotnie od granic z płaszczem (o niższym $n$) i propagując się
wzdłuż falowodu z minimalnymi stratami.

### Fala zanikająca (ewanescentna)

Przy TIR pole elektromagnetyczne nie znika nagle na granicy — część pola wnika do
ośrodka rzadszego na głębokość rzędu długości fali. To tzw. **fala zanikająca**
(ewanescentna), której amplituda wykładniczo maleje z odległością od granicy.

---

## Struktura falowodu planarnego

Falowód planarny składa się z trzech warstw:

| Warstwa | Oznaczenie w kodzie | Współczynnik załamania | Rola |
|---------|---------------------|------------------------|------|
| **Podłoże** (substrate) | `ns` | $n_s$ | Dolna warstwa — optycznie rzadsza |
| **Warstwa prowadząca** (film/core) | `nf` | $n_f$ | Rdzeń — optycznie gęstsza, prowadzi światło |
| **Pokrycie** (cladding/cover) | `nc` | $n_c$ | Górna warstwa — optycznie rzadsza |

Warunek prowadzenia fali w falowodzie symetrycznym: $n_f > n_s$ oraz $n_f > n_c$.

W typowym falowodzie symetrycznym $n_s \approx n_c$, co widać w kodzie:
`ns = 3.27`, `nf = 3.28`, `nc = 3.27` — warstwa prowadząca ma tylko nieznacznie
większy współczynnik załamania niż otoczenie (różnica rzędu $10^{-2}$).

---

## Metoda BPM (Beam Propagation Method)

Oba programy (`BPM_osrodek_jednorodny.m` i `BPM_falowod_symetryczny.m`) wykorzystują
**metodę propagacji wiązki** (BPM, ang. *Beam Propagation Method*) do numerycznej
symulacji rozchodzenia się światła.

### Idea metody

BPM rozwiązuje równanie falowe w przybliżeniu wolnozmiennej obwiedni (ang. *Slowly
Varying Envelope Approximation*, SVEA). Polega ona na:

1. **Podziale propagacji na małe kroki** $\Delta z$ (w kodzie: `dz = ZZ/M`).
2. W każdym kroku naprzemiennie stosuje się:
   - **Propagację w przestrzeni częstości przestrzennych** (człon dyfrakcyjny): mnożenie widma Fouriera przez $\exp(-i \cdot dz \cdot \text{FOL})$, gdzie $\text{FOL} = w^2/(2 n_s k)$.
   - **Działanie niejednorodności ośrodka** (człon refrakcyjny): mnożenie pola przez $\exp(-i \cdot dz \cdot \text{ON})$, gdzie $\text{ON}$ opisuje rozkład współczynnika załamania.

### Algorytm w kodzie

```
1. Zadaj profil wejściowy wiązki Gaussa: y(x)
2. Dla każdego kroku propagacji j = 1..M:
   a. A = A * exp(-i*dz*ON)       ← człon refrakcyjny
   b. Y = fft(A)                  ← transformata Fouriera
   c. YY = ifft(exp(-i*dz*FOL)*Y) ← propagacja dyfrakcyjna
   d. A = YY                      ← nowe pole
3. Zapamiętaj wybrane przekroje do wizualizacji
```

### Różnica między programami

| Element | `BPM_osrodek_jednorodny.m` | `BPM_falowod_symetrycznym.m` |
|---------|---------------------------|------------------------------|
| Profil ON | `ON = 0` (ośrodek jednorodny) | `ON = -Profil` (niejednorodny — struktura falowodu) |
| Parametry | tylko `ns` | `ns`, `nf`, `nc`, `Szer`, `xk1` |
| Wykresy | wiązka wejściowa, wyjściowa, mapa propagacji | to samo + profil współczynnika załamania (czarna linia) |

---

## Przebieg laboratorium – co robić krok po kroku

### Program 1: Ośrodek jednorodny (`BPM_osrodek_jednorodny.m`)

Parametry domyślne w kodzie:

| Zmienna | Znaczenie | Wartość domyślna |
|---------|-----------|-----------------|
| `ns` | Współczynnik załamania ośrodka | 3.4 |
| `LL` | Szerokość okna obliczeniowego | 600 µm |
| `ZZ` | Długość okna obliczeniowego | 5 mm |
| `lambda` | Długość fali | 633 nm |
| `xc` | Położenie środka wiązki wejściowej | 300 µm |
| `wp` | Średnica wiązki wejściowej | 5 µm |
| `N` | Liczba próbek poprzecznych | 1024 |
| `M` | Liczba kroków propagacji | 1200 |

Program rysuje:
- **Figura 1** – rozkład natężenia wiązki wejściowej (żółty `area` plot).
- **Figura 2** – rozkład natężenia wiązki wyjściowej po propagacji (czerwona linia).
- **Figura 3** – mapa propagacji (widok z góry, `mesh` z `view(0,90)`).

### Krok 1 – uruchomienie domyślnej symulacji (ośrodek jednorodny)

1. Otwórz MATLAB i uruchom plik `BPM_osrodek_jednorodny.m`.
2. Zaobserwuj, że w ośrodku jednorodnym wiązka gaussowska po prostu **rozbiega się**
   — jej szerokość rośnie, a maksymalne natężenie maleje wraz z odległością
   (zgodnie z teorią dyfrakcji wiązki gaussowskiej).

### Krok 2 – pomiary $I_{out}/I_{in}$ dla różnych $W_{\!in}$ (ośrodek jednorodny)

Ustaw `ZZ = 5 \text{ mm}` (długość propagacji stała) i zmieniaj tylko `wp` (średnicę
wiązki wejściowej):

| `wp` [µm] |
|-----------|
| 5 |
| 7 |
| 10 |
| 15 |
| 20 |

Dla każdej wartości odczytaj z Figury 2 maksymalne natężenie wiązki wyjściowej.
Oblicz stosunek $I_{out}/I_{in}$ (natężenie wejściowe $I_{in} = 1$ z normalizacji).

**Co obserwować:** Jak zmienia się rozbieżność wiązki? Im węższa wiązka początkowa,
tym szybciej się rozbiega (mniejsza średnica → większy kąt dyfrakcji, zgodnie
z niezmiennikiem $w_0 \theta = \lambda/\pi$).

**Wniosek:** Szersza wiązka wejściowa zachowuje większą część swojego natężenia
na tej samej odległości propagacji — mniejsza rozbieżność → mniejsze straty
geometryczne.

---

### Program 2: Falowód symetryczny (`BPM_falowod_symetrycznym.m`)

Parametry domyślne w kodzie:

| Zmienna | Znaczenie | Wartość domyślna |
|---------|-----------|-----------------|
| `ns` | Wsp. załamania podłoża | 3.27 |
| `nf` | Wsp. załamania warstwy prowadzącej | 3.28 |
| `nc` | Wsp. załamania pokrycia | 3.27 |
| `LL` | Szerokość okna obliczeniowego | 100 µm |
| `ZZ` | Długość okna obliczeniowego | 10 mm |
| `Szer` | Szerokość kanału falowodowego | 4 µm |
| `xk1` | Położenie środka kanału | 50 µm |
| `lambda` | Długość fali | 1500 nm |
| `xc` | Położenie środka wiązki | 50 µm |
| `wp` | Średnica wiązki wejściowej | 5 µm |
| `N` | Liczba próbek poprzecznych | 1024 |
| `M` | Liczba kroków propagacji | 3200 |

Program rysuje:
- **Figura 1** – rozkład wiązki wejściowej + profil falowodu (czarna linia).
- **Figura 2** – rozkład wiązki wyjściowej + profil falowodu.
- **Figura 3** – mapa propagacji.

### Krok 3 – uruchomienie domyślnej symulacji (falowód symetryczny)

1. Uruchom plik `BPM_falowod_symetrycznym.m`.
2. Zaobserwuj, że wiązka **jest prowadzona** w kanale falowodu — jej energia
   pozostaje skupiona w rdzeniu dzięki całkowitemu wewnętrznemu odbiciu
   na granicach $n_f/n_s$ i $n_f/n_c$.

### Krok 4 – pomiary $I_{out}/I_{in}$ dla różnych długości propagacji (falowód)

Ustaw domyślne parametry falowodu i zmieniaj tylko `ZZ` (długość okna):

| `ZZ` [mm] |
|-----------|
| 1 |
| 2 |
| 3 |
| 5 |
| 7 |
| 10 |

Dla każdej wartości odczytaj z Figury 2 maksymalne natężenie wiązki wyjściowej
i oblicz $I_{out}/I_{in}$.

**Co obserwować:** W przeciwieństwie do ośrodka jednorodnego, w falowodzie
wiązkę udaje się prowadzić na znacznie większe odległości. Jednak nawet w idealnym
falowodzie symetrycznym mogą występować niewielkie straty (np. jeśli wiązka nie
jest idealnie dopasowana do modu falowodu).

**Wniosek:** Falowód planarny umożliwia prowadzenie światła z małymi stratami
na odległościach wielokrotnie przekraczających drogę dyfrakcji w ośrodku
jednorodnym.

---

## Pytania podsumowujące (do sprawozdania)

### 1) Jak zachowuje się wiązka światła w ośrodku jednorodnym?

W ośrodku jednorodnym wiązka gaussowska ulega **dyfrakcji** — jej szerokość rośnie
z odległością, a maksymalne natężenie maleje. Zgodnie z teorią dyfrakcji:
- Im węższa wiązka na wejściu ($mniejsze $w_0$), tym większy kąt rozbieżności
  ($\theta = \lambda/(\pi w_0)$) i tym szybciej wiązka się poszerza.
- Im szersza wiązka wejściowa, tym wolniej się rozbiega i zachowuje większe
  natężenie na tej samej odległości.
- Ośrodek jednorodny **nie prowadzi** światła — po odpowiednio długiej drodze
  wiązka rozmyje się do zera.

### 2) Jak zachowuje się wiązka światła prowadzona w światłowodzie bądź falowodzie symetrycznym?

W falowodzie symetrycznym światło jest **prowadzone** dzięki całkowitemu
wewnętrznemu odbiciu na granicach między rdzeniem ($n_f$) a otaczającymi
warstwami ($n_s$, $n_c$):

- Światło pada na granice rdzeń-płaszcz pod kątem większym od kąta granicznego
  ($\theta_{gr} = \arcsin(n_s/n_f)$) → zachodzi TIR.
- Wiązka pozostaje skupiona w obszarze kanału falowodowego.
- Straty propagacji są znacznie mniejsze niż w ośrodku jednorodnym — energia
  nie rozprasza się w całej objętości, lecz jest kierowana wzdłuż falowodu.
- Aby falowód działał efektywnie, wiązka wejściowa musi być **dopasowana
  modalnie** — jej rozmiar i położenie powinny pokrywać się z profilem modu
  prowadzonego falowodu. W przeciwnym razie część energii ucieka do płaszcza
  (straty sprzężenia).

---

## Co zawrzeć w sprawozdaniu

1. **Strona tytułowa** – nazwa ćwiczenia, przedmiot, data, skład zespołu,
   prowadzący, miejsce na podpis.
2. **Krótki wstęp teoretyczny** – współczynnik załamania, prawo Snelliusa,
   całkowite wewnętrzne odbicie, budowa falowodu planarnego, metoda BPM.
3. **Tabele pomiarowe**:
   - Dla ośrodka jednorodnego: $I_{out}/I_{in}$ w funkcji $W_{\!in}$.
   - Dla falowodu symetrycznego: $I_{out}/I_{in}$ w funkcji $Z$.
4. **Przykładowe wykresy z symulacji MATLAB** – mapa propagacji dla ośrodka
   jednorodnego i falowodu, rozkłady wejściowe/wyjściowe.
5. **Wnioski** – porównanie propagacji w ośrodku jednorodnym i falowodzie,
   odpowiedzi na pytania podsumowujące (pkt 5 instrukcji).

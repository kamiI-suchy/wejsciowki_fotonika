# Wejściówka 04 – LAMB – Pomiar stężenia substancji w roztworze

## Pytanie 1: Typy/rodzaje roztworów

### Definicja roztworu

**Roztwór** to jednorodna (homogeniczna) mieszanina dwóch lub więcej składników,
w której jeden składnik (**rozpuszczalnik**) rozprasza na poziomie molekularnym lub
cząsteczkowym drugi składnik (**substancję rozpuszczoną** – solut). Właściwości fizyczne
i optyczne roztworu zależą od rodzaju i stężenia substancji rozpuszczonej.

### Klasyfikacja roztworów wg rozmiaru cząstek

| Typ roztworu | Rozmiar cząstek | Przykłady | Właściwości optyczne |
|---|---|---|---|
| **Roztwór właściwy** (rzeczywisty) | < 1 nm (jony, cząsteczki) | NaCl w wodzie, cukier w wodzie | Przezroczysty, nie rozprasza światła |
| **Układ koloidalny** (koloid, zol) | 1 nm – 1 µm | Mleko, krew, dym | Efekt Tyndalla – rozpraszanie światła |
| **Zawiesina** (suspensja) | > 1 µm | Kreda w wodzie, mąka w wodzie | Mętny, szybko sedymentuje |

### Opis typów

#### Roztwór właściwy (rzeczywisty)

Cząsteczki lub jony substancji rozpuszczonej są **rozdzielone na poziomie molekularnym**.
Roztwór jest makroskopowo jednorodny, optycznie przezroczysty (nie powoduje zmętnienia).
Opisuje go klasyczne prawo Lamberta-Beera (absorpcja).

#### Koloid (układ koloidalny)

Cząstki koloidalne mają rozmiary od 1 nm do 1 µm. Roztwór wykazuje **efekt Tyndalla** –
wiązka światła przepuszczona przez koloid jest widoczna z boku dzięki **rozpraszaniu Mie**
(gdy rozmiar cząstek $D \gtrsim \lambda$) lub **rozpraszaniu Rayleigha** (gdy $D \ll \lambda$).

Przykłady:
- **Mleko** – emulsja kuleczek tłuszczu ($D \approx 1$–$20\ \mu\text{m}$) w wodzie,
- **Mgła** – aerozol (krople wody w powietrzu),
- **Krew** – zawiesina erytrocytów w osoczu.

Koloid z cząstkami $D \gg \lambda$ rozrasza prawie jednakowo wszystkie długości fali
z zakresu widzialnego – dlatego mleko jest **białe**.

#### Zawiesina

Cząstki > 1 µm – nietrwała; cząstki sedymentują grawitacyjnie. Roztwór jest **mętny**.

### Stężenie roztworu

- **Stężenie masowe**: $\rho_s = m_s / V$ [g/L]
- **Stężenie molarne**: $c = n / V$ [mol/L]
- **Stężenie objętościowe**: $C = V_s / V$ (stosunek objętości substancji do całości) – stosowane
  w ćwiczeniu LAMB dla mleka.

---

## Pytanie 2: Optyczne metody pomiaru stężenia roztworów

Optyczne metody pomiaru stężenia opierają się na analizie **oddziaływania światła
z roztworem**: absorpcji, transmisji, rozpraszania lub fluorescencji.

### 1. Spektrofotometria absorpcyjna (kolorymetria)

**Zasada:** Pomiar **transmitancji** $T = P/P_0$ lub **absorbancji** $A = -\log_{10} T$
wiązki świetlnej przechodzącą przez roztwór. Stosuje prawo Lamberta-Beera
(patrz Pytanie 3). Najszerzej stosowana metoda.

**Zastosowanie:** roztwory zabarwione (absorbujące), np. roztwory soli metali, chromofory
biologiczne.

**Urządzenie:** spektrofotometr (lub fotometr filtracyjny).

### 2. Turbidymetria

**Zasada:** Pomiar **osłabienia** wiązki świetlnej przecho­dzącej przez koloid lub zawiesinę
wskutek **rozpraszania** (a nie absorpcji) cząstek. Im więcej cząstek, tym większe tłumienie.

**Mierzona wielkość:** transmitancja $T = P/P_0$ – taka sama aparatura jak w spektrofotometrii,
ale mechanizm tłumienia to rozpraszanie.

### 3. Nefelometria

**Zasada:** Pomiar **natężenia światła rozproszonego** przez zawiesinę pod kątem
$90°$ (lub innym) do wiązki padającej. Czulsza od turbidymetrii przy małych stężeniach.

**Zastosowanie:** pomiar zmętnienia wody, stężeń koloidów w środowisku.

### 4. Refraktometria

**Zasada:** Pomiar **współczynnika załamania** $n$ roztworu, który zależy od stężenia.
Używany refraktometr Abbego lub pryzmatyczny.

**Zastosowanie:** stężenie cukrów (np. w owocach), stężenie elektrolitów,
kontrola jakości olejów.

### 5. Fluorescencja (spektrofluorymetria)

**Zasada:** Substancja pochłania foton (wzbudzenie) i emituje foton o niższej energii
(dłuższa fala – przesunięcie Stokesa). Natężenie fluorescencji $\propto$ stężeniu.
Bardzo czuła metoda (oznaczenia na poziomie $\mu\text{g/L}$).

**Zastosowanie:** biologia molekularna, diagnostyka medyczna, środowiskowa.

### 6. Polarymetria

**Zasada:** Pomiar **skręcenia płaszczyzny polaryzacji** przez roztwory substancji optycznie
czynnych (np. cukry). Skręcenie $\alpha = [\alpha] \cdot c \cdot l$, gdzie $[\alpha]$ – skręcalność właściwa,
$l$ – długość drogi optycznej.

**Zastosowanie:** przemysł spożywczy (cukrownictwo), farmaceutyka.

### Porównanie metod

| Metoda | Mechanizm | Zakres stężeń | Uwagi |
|--------|-----------|---------------|-------|
| Spektrofotometria | Absorpcja | Szeroki | Prosta, powszechna |
| Turbidymetria | Rozpraszanie (transmisja) | Koloidalne | Ćwiczenie LAMB |
| Nefelometria | Rozpraszanie (kąt 90°) | Małe stężenia | Czulsza od turbidymetrii |
| Refraktometria | Załamanie | Umiarkowany | Brak koloru wymagany |
| Fluorescencja | Emisja | Bardzo małe | Bardzo czuła |
| Polarymetria | Skręcenie polaryzacji | Średni | Tylko substancje optycznie czynne |

---

## Pytanie 3: Prawo Lamberta – Beera

### Sformułowanie prawa

**Prawo Lamberta-Beera** (Bougera-Lamberta-Beera) opisuje osłabienie mocy wiązki
świetlnej przecho­dzącej przez ośrodek pochłaniający (lub rozpraszający) w zależności
od stężenia substancji i długości drogi optycznej.

$$\boxed{P(d) = P_0 \exp\!\left(-C \cdot b \cdot d\right)}$$

gdzie:
- $P_0$ – moc wiązki padającej na roztwór [mW],
- $P(d)$ – moc wiązki po przejściu drogi $d$ przez roztwór [mW],
- $C$ – stężenie substancji (objętościowe: $V_s/V$ lub masowe/molarne) [bez wymiaru lub mol/L],
- $b$ – współczynnik ekstynkcji molarnej (lub molowy współczynnik absorpcji), zależy od
  substancji i długości fali; $[b] = \text{cm}^{-1}$ (lub $\text{L}\cdot\text{mol}^{-1}\cdot\text{cm}^{-1}$),
- $d$ – długość drogi optycznej w roztworze [cm].

### Formy równoważne

**Postać logarytmiczna** (liniowa zależność od stężenia):

$$\ln\!\left[\frac{P(d)}{P_0}\right] = -C \cdot b \cdot d$$

**Transmitancja** i **absorbancja** (definicje stosowane w spektrofotometrii):

$$T = \frac{P}{P_0} \in [0,1], \qquad A = -\log_{10} T = \frac{b \cdot c \cdot d}{2{,}303}$$

W konwencji dziesiętkowej prawo Lamberta-Beera zapisuje się:

$$A = \varepsilon \cdot c \cdot d$$

gdzie $\varepsilon$ – molowy współczynnik absorpcji [$\text{L}\cdot\text{mol}^{-1}\cdot\text{cm}^{-1}$].

### Warunki stosowalności

Prawo Lamberta-Beera jest ściśle spełnione, gdy:
1. Wiązka jest **monochromatyczna** (jedna długość fali).
2. Stężenie jest **małe** (brak oddziaływań między cząsteczkami substancji).
3. Ośrodek jest **jednorodny** (brak gradientów stężeń).
4. Brak **fluorescencji, rozpraszania** (lub uwzględniamy je osobno).
5. Brak **efektów nieliniowych** (małe moce, bez nasycenia absorpcji).

Dla **koloidów** (jak mleko w ćwiczeniu) dominuje rozpraszanie, a nie absorpcja,
ale zależność moc–stężenie ma nadal charakter wykładniczy: $P(C) = P_0 e^{-b \cdot d \cdot C}$,
co pozwala stosować formalizm Lamberta-Beera do wyznaczania stężenia.

### Graficzna weryfikacja prawa

Ze wzoru (forma logarytmiczna):

$$\ln\!\left[\frac{P(C)}{P_0}\right] = -b \cdot d \cdot C = \text{const} \cdot C$$

Zależność logarytmu transmitancji od stężenia $C$ powinna być **liniowa**
(prosta przechodząca przez początek układu współrzędnych). Nachylenie prostej
$k = -b \cdot d$ pozwala wyznaczyć współczynnik $b$ (przy znanych $d$ i $C$).

---

## Przebieg ćwiczenia laboratoryjnego

### Stanowisko i sprzęt

Na ławie optycznej ustawione są kolejno:
- **Laser DPSS** zielony, $\lambda = 532\ \text{nm}$, moc kilkanaście mW,
- **P$_1$, P$_2$** – dwa polaryzatory (do regulacji mocy wiązki),
- **Kuweta** z uchwytem na stoliku (kuweta kwarcowa lub szklana; wymiar wewnętrzny $d$),
- **FD** – miernik mocy optycznej (zakres do 15 mW),
- Naczynia miarowe (do przygotowania roztworów), strzykawka, mleko.

---

### Przebieg ćwiczenia krok po kroku

**Co robić:**

1. **Uruchomić miernik mocy** – ustawić długość fali na $\lambda = 550\ \text{nm}$
   (w tym celu nacisnąć „Shift", z klawiatury numerycznej wpisać 550, zatwierdzić klawiszem
   „Clear"). Uwaga: na $\lambda = 532\ \text{nm}$ miernik wykazuje przekroczenie zakresu.

2. **Przygotować układ**: wstawić kuwetę do uchwytu i dokręcić śrubę (kuweta musi
   pozostawać nieruchoma przez cały pomiar). Napełnić kuwetę czystą **wodą** (~3 ml) za
   pomocą strzykawki.

3. **Podłączyć laser** i skierować wiązkę przez kuwetę na detektor. Obrócić jeden
   z polaryzatorów tak, aby miernik wskazywał $P_0 \approx 12$–$14\ \text{mW}$.
   Odczytać i zapisać jako **moc referencyjną** $P_\text{ref} = P_0$.

   > Uwaga: przez cały pomiar nie zmieniać ustawienia kuwety – każde przesunięcie
   > zmienia kąt odbicia i zaburza $P_\text{ref}$.

4. **Oszacować objętość 1 kropli mleka**: korzystając z naczynia z podziałką,
   odliczyć np. 20 kropli i odczytać objętość – objętość 1 kropli:
   $$V_k = \frac{V_{\text{łącznie}}}{n_\text{kropli}} \approx \ldots\ \text{ml}$$

5. **Wykonać pomiary**:
   - Zaczynając od czystej wody ($n = 0$, $C = 0$), zapisać moc $P_0$ (pomiar referencyjny).
   - Dodawać do kuwety kolejno **po 1 kropli mleka** ($n = 1, 2, 3, \ldots, 6$).
   - Po każdym dodaniu odczytać wskazanie miernika $P_n$ i zapisać w tabeli.
   - Obliczyć stężenie objętościowe:
   $$C_n = \frac{n \cdot V_k}{V_\text{wody}}$$
   - Obliczyć transmitancję:
   $$p_n = \frac{P_n}{P_0}$$
   - Powtórzyć pomiary **dwa razy niezależnie** (za każdym razem świeży roztwór
     i nowa wartość $P_0$). Obliczyć **średnią** $\bar{p}_n$ z dwóch pomiarów.

6. **Sporządzić wykresy** (używając programu SciDavis lub innego):

   **Wykres 1** – $p_n = P_n/P_0$ w funkcji liczby kropli $n$ (lub $C_n$):
   - Na osi X: liczba kropli $n$ lub stężenie $C_n$,
   - Na osi Y: transmitancja $p_n$,
   - Dopasować krzywą wykładniczą: **Analysis → Quick Fit → Fit Exponential Decay
     (First Order)**.

   **Wykres 2** – $\ln(p_n)$ w funkcji liczby kropli $n$ (lub $C_n$):
   - W SciDavis dodać nową kolumnę z formułą `ln(col("2"))`,
   - Wykonać wykres punktowy (Scatter),
   - Dopasować prostą: **Analysis → Quick Fit → Fit Linear**.
   - Odczytać współczynnik kierunkowy prostej: $k = -b \cdot d$

7. **Wyznaczyć współczynnik b**:

   Z nachylenia prostej z wykresu 2:
   $$b = \frac{|k|}{d}$$
   gdzie $d$ – wewnętrzna szerokość kuwety [cm] (zmierzyć suwmiarką lub podana przez
   prowadzącego).

8. **Ocenić, czy roztwór mleka spełnia prawo Lamberta-Beera**:
   - Jeśli punkty na wykresie 2 leżą na prostej: zależność jest **wykładnicza** – prawo
     Lamberta-Beera jest zachowane.
   - Podać wynik w postaci $b = \ldots \pm \ldots\ \text{cm}^{-1}$ (niepewność z parametrów
     dopasowania linii prostej).

---

### Podsumowanie – co zapisać w sprawozdaniu

| Czynność | Dane / wynik |
|----------|-------------|
| Pomiar objętości kropli mleka | $V_k = \ldots\ \text{ml}$ |
| Pomiar referencyjny $P_0$ | $P_0 = \ldots\ \text{mW}$ |
| Tabela pomiarów (2 serie × 6 kropli) | $n$, $C_n$, $P_n^{(1)}$, $p_n^{(1)}$, $P_n^{(2)}$, $p_n^{(2)}$, $\bar{p}_n$ |
| Wykres 1: $p_n(C)$ + dopasowanie exp | Parametry dopasowania |
| Wykres 2: $\ln(p_n)(C)$ + dopasowanie liniowe | Nachylenie $k$, wyznaczone $b \pm \Delta b$ |
| Wymiar kuwety $d$ | $d = \ldots\ \text{cm}$ |
| Wynik końcowy | $b = \ldots \pm \ldots\ \text{cm}^{-1}$; wniosek o słuszności prawa Lamberta-Beera |

Sformułować **wniosek**: czy mleko zachowuje się jak układ opisywany prawem
Lamberta-Beera i jaki jest mechanizm tłumienia (absorpcja czy rozpraszanie)?

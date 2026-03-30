# Wejściówka 02 – POLAR – Badanie polaryzacji światła

## Pytanie 1: Co to jest światło spolaryzowane i czym różni się od światła niespolaryzowanego?

Światło jest falą elektromagnetyczną – rozchodzi się jako oscylacje wzajemnie prostopadłych
pól elektrycznego **E** i magnetycznego **B**, obydwa prostopadle do kierunku propagacji.
O **stanie polaryzacji** decyduje zachowanie wektora pola elektrycznego **E** w czasie.

### Światło niespolaryzowane (naturalne)

W świetle **niespolaryzowanym** kierunek drgań wektora **E** zmienia się losowo i chaotycznie
w bardzo krótkich odcinkach czasu (rząd 10⁻⁸ s). Nie istnieje żadna wyróżniona płaszczyzna
drgań – wszystkie kierunki w płaszczyźnie prostopadłej do propagacji są jednakowo
prawdopodobne. Takie światło emitują naturalne źródła (słońce, żarówka, świeca).

### Światło spolaryzowane

W świetle **spolaryzowanym** wektor **E** drga w sposób uporządkowany, ściśle określony.
Wyróżniamy kilka rodzajów polaryzacji (szczegóły w Pytaniu 2).

### Zasadnicza różnica

| Cecha | Światło niespolaryzowane | Światło spolaryzowane liniowo |
|-------|--------------------------|-------------------------------|
| Kierunek drgań **E** | Losowy, zmienny w czasie | Stały – jedna płaszczyzna |
| Wynik testu polaryzatorem | Przy obrocie polaryzatora intensywność **nie zmienia się** | Przy obrocie polaryzatora intensywność zmienia się zgodnie z **prawem Malusa** |
| Źródła | Słońce, żarówka, lampy fluorescencyjne | Laser, światło za polaryzatorem |

**Prawo Malusa** – gdy spolaryzowana liniowo wiązka przechodzi przez analizator
(drugi polaryzator) ustawiony pod kątem $\varphi$ do płaszczyzny polaryzacji:

$$I = I_0 \cos^2\!\varphi$$

Przy $\varphi = 90°$ (analizator prostopadły do polaryzatora) intensywność spada do zera –
wiązka zostaje **wygaszona**.

---

## Pytanie 2: Jakie znamy rodzaje polaryzacji światła?

Wyróżnia się cztery główne rodzaje polaryzacji:

### 1. Polaryzacja liniowa (płaska)

Wektor **E** drga w jednej, niezmiennej płaszczyźnie zawierającej kierunek propagacji.
Koniec wektora **E** zakreśla odcinek (linię) prostopadły do kierunku propagacji.

### 2. Polaryzacja kołowa

Amplituda wektora **E** jest stała, ale jego kierunek obraca się jednostajnie
(z częstotliwością równą częstotliwości fali). Koniec wektora zakreśla **okrąg**.
Wyróżnia się:
- **lewoskrętną** (obrót przeciwny do ruchu wskazówek zegara, patrząc w stronę źródła),
- **prawoskrętną** (obrót zgodny z ruchem wskazówek zegara).

Polaryzacja kołowa powstaje z dwóch składowych liniowych, prostopadłych,
o jednakowych amplitudach i przesuniętych fazowo o $90°$.

### 3. Polaryzacja eliptyczna

Przypadek ogólny – amplituda i kierunek wektora **E** zmieniają się w czasie;
koniec wektora zakreśla **elipsę**. Polaryzacja liniowa i kołowa są przypadkami
szczególnymi polaryzacji eliptycznej.

### 4. Polaryzacja częściowa

Mieszanina światła spolaryzowanego (dowolnego rodzaju) i niespolaryzowanego.
Opisywana **stopniem polaryzacji**:

$$P = \frac{I_{max} - I_{min}}{I_{max} + I_{min}}$$

gdzie $I_{max}$ i $I_{min}$ to maksymalna i minimalna intensywność mierzona przy
obracaniu analizatora ($P = 0$ – niespolaryzowane; $P = 1$ – w pełni spolaryzowane).

### Metody uzyskiwania polaryzacji liniowej

- **Polaryzacja przez odbicie** (efekt Brewstera) – opisana w Pytaniu 3.
- **Polaryzator absorpcyjny (dichroiczny)** – folia polaroidowa; pochłania składową **E**
  prostopadłą do osi transmisji.
- **Pryzmat polaryzacyjny** – np. pryzmat Nicola lub Glan-Thomsona; rozdziela wiązkę na
  dwie ortogonalne składowe spolaryzowane liniowo.
- **Polaryzacja przez rozpraszanie** – np. światło niebieskie nieba.
- **Płytka falowa ($\lambda/2$, $\lambda/4$)** – obraca lub przekształca stan polaryzacji.

---

## Pytanie 3: Na czym polega zjawisko polaryzacji światła przez odbicie od powierzchni dielektryka?

### Współczynniki Fresnela

Gdy wiązka świetlna pada na granicę dielektryka (np. szkła), opisują ją **współczynniki
odbicia Fresnela**, osobne dla dwóch składowych polaryzacji:

- **Składowa s** (TE, wektor **E** prostopadły do płaszczyzny padania):

$$r_s = \frac{n_1\cos\theta_i - n_2\cos\theta_t}{n_1\cos\theta_i + n_2\cos\theta_t}$$

- **Składowa p** (TM, wektor **E** równoległy do płaszczyzny padania):

$$r_p = \frac{n_2\cos\theta_i - n_1\cos\theta_t}{n_2\cos\theta_i + n_1\cos\theta_t}$$

gdzie $\theta_i$ – kąt padania, $\theta_t$ – kąt załamania (wyznaczony z prawa Snella:
$n_1\sin\theta_i = n_2\sin\theta_t$), $n_1$, $n_2$ – współczynniki załamania ośrodków.

### Kąt Brewstera

Dla pewnego kąta padania $\theta_B$ (**kąt Brewstera**) mianownik $r_p$ staje się zerem:

$$r_p = 0 \quad \Leftrightarrow \quad \theta_i + \theta_t = 90°$$

Oznacza to, że wiązka odbita i wiązka załamana są do siebie **prostopadle**.
Z prawa Snella przy $\theta_t = 90° - \theta_B$:

$$n_1 \sin\theta_B = n_2 \sin(90° - \theta_B) = n_2 \cos\theta_B$$

$$\boxed{n = \frac{n_2}{n_1} = \tan\theta_B}$$

(**Prawo Brewstera**). Dla granicy powietrze–szkło ($n_1 = 1$): $n = \tan\theta_B$.

### Efekt fizyczny

Przy padaniu pod kątem Brewstera:
- Wiązka **odbita** jest **w 100% spolaryzowana liniowo** – zawiera wyłącznie
  składową s (wektor **E** drga równolegle do powierzchni dielektryka, pionowo).
- Wiązka **przepuszczona** jest tylko częściowo spolaryzowana – zawiera obie składowe,
  lecz składowa p dominuje (składowa s jest częściowo odbita, a p przepuszczana w całości).

Natężeniowy współczynnik odbicia dla pojedynczej płytki szklanej przy kącie Brewstera
wynosi tylko ok. 8%, dlatego wiązka przepuszczona jest słabo spolaryzowana.

---

## Pytanie 4: W jaki sposób można wyznaczyć współczynnik załamania płytki dielektrycznej oświetlając ją wiązką świetlną spolaryzowaną?

### Zasada metody

Metoda opiera się na **zjawisku Brewstera**. Jeśli na płytkę dielektryczną (np. kwarcową)
padnie wiązka spolaryzowana liniowo w płaszczyźnie padania (polaryzacja p), to przy
kącie Brewstera $\theta_B$ wiązka odbita **zanika** ($r_p = 0$).

Warunek zaniku wiązki odbitej pozwala jednoznacznie wyznaczyć kąt Brewstera $\theta_B$,
a stąd bezpośrednio oblicza się współczynnik załamania:

$$\boxed{n = \tan\theta_B}$$

### Procedura

1. Ustawić **polaryzator liniowy** przed płytką tak, aby oś transmisji była pozioma
   (polaryzacja p – wektor **E** w płaszczyźnie padania).
2. Umieścić płytkę dielektryczną na **stoliku obrotowym**.
3. Ustawić stolik w pozycji zerowej (płytka prostopadle do wiązki) i zablokować.
4. Odblokować stolik i **obracać go powoli**, obserwując wiązkę odbitą na ekranie
   lub mierząc moc wiązki odbitej fotodetektorem.
5. Odnaleźć kąt, przy którym wiązka odbita **zanika** (lub ma minimalne natężenie) –
   jest to kąt Brewstera $\theta_B$.
6. Obliczyć współczynnik załamania:

$$n = \tan\theta_B$$

7. Powtórzyć pomiar kilkakrotnie (5 razy), obliczyć wartość średnią $\bar{\theta}_B$
   i niepewność pomiarową, a następnie podać wynik $n$ z niepewnością.

### Uwagi

- Laser He-Ne jest źródłem światła spolaryzowanego liniowo; dodatkowy polaryzator
  ustawia jego oś transmisji poziomo (polaryzacja p względem płytki).
- Dla kwarcu współczynnik załamania dla światła czerwonego ($\lambda = 633\ \text{nm}$)
  wynosi $n \approx 1{,}54$, co odpowiada $\theta_B \approx 57°$.
- Niepewność współczynnika załamania wyznacza się metodą różniczki:

$$\Delta n = \frac{\Delta\theta_B}{\cos^2\!\theta_B}$$

---

## Pytanie 5: Jaka jest zasada działania stosu polaryzacyjnego (polaryzatora płytkowego)?

### Problem pojedynczej płytki

Przy kącie Brewstera wiązka **odbita** od jednej płytki jest w pełni spolaryzowana (tylko s),
ale wiązka **przepuszczona** zawiera wszystkie składowe p (100%) i część składowej s
(zredukowaną, lecz niezerową). Stopień polaryzacji przepuszczonej wiązki dla jednej
płytki wynosi zaledwie kilkanaście procent.

### Stos polaryzacyjny

**Stos polaryzacyjny** (ang. *pile of plates*) zbudowany jest z wielu ($N = 8$–$15$)
płaskorównoległych płytek szklanych ustawionych pod **kątem Brewstera** i ułożonych
równolegle jedna za drugą.

Przy każdym kolejnym przejściu przez płytkę (cztery powierzchnie na płytkę dla
dwustronnej płytki, dwa odbicia na każdą płytkę):

- Składowa **p** przechodzi przez każdą powierzchnię bez odbicia ($r_p = 0$).
- Część składowej **s** jest odbijana przy każdym przejściu.

Natężeniowy współczynnik przepuszczania składowej s dla jednej powierzchni:
$T_s = 1 - R_s$, gdzie $R_s = r_s^2$.

Po przejściu przez $N$ płytek (każda ma dwie powierzchnie, więc $2N$ odbić):

$$I_s^{(out)} = I_s^{(in)} \cdot (1 - R_s)^{2N}$$

Dla szkła ($n \approx 1{,}5$) przy kącie Brewstera $R_s \approx 0{,}15$; po 15 płytkach:

$$(1 - 0{,}15)^{30} \approx 0{,}0076 \approx 1\%$$

Oznacza to, że po 15 płytkach tylko ~1% składowej s pozostaje w wiązce przepuszczonej –
wiązka jest **prawie w pełni spolaryzowana liniowo** (polaryzacja p, pozioma).

### Stopień polaryzacji stosu

Stopień polaryzacji wiązki przepuszczonej przez stos $N$ płytek:

$$P = \frac{1 - (1-R_s)^{2N}}{1 + (1-R_s)^{2N}}$$

Dla $N = 15$: $P \approx 0{,}985$ (98,5% polaryzacji).

### Porównanie z polaroidem

| Cecha | Stos polaryzacyjny | Polaroid (folia dichroiczna) |
|-------|-------------------|------------------------------|
| Zasada | Wielokrotne odbicie Brewstera | Selektywna absorpcja |
| Straty intensywności | Małe (tylko odbicia ~8% na płytkę) | Duże (~50% intensywności pochłaniane) |
| Trwałość | Bardzo wysoka | Ograniczona (wrażliwy na ciepło) |
| Doskonałość polaryzacji | Wysokie $P$ przy wielu płytkach | Bardzo wysokie $P$ |
| Przepustowość mocy | Wysoka (stosowany w układach laserowych) | Niska przy dużych mocach |

---

## Przebieg ćwiczenia laboratoryjnego

### Stanowisko i sprzęt

Na ławie optycznej ustawione są kolejno:
- **Laser He-Ne** (helowo-neonowy, $\lambda = 632{,}8\ \text{nm}$) – źródło spójnego,
  spolaryzowanego liniowo światła czerwonego.
- **P** – obrotowy polaryzator liniowy (regulacja osi transmisji).
- **Płytka kwarcowa** – próbka dielektryczna na stoliku obrotowym ze skalą kątową.
- **Stos polaryzacyjny** – 15 płytek szklanych ustawionych pod kątem Brewstera.
- **A** – analizator (drugi polaryzator obrotowy).
- **FD** – fotodetektor z miernikiem mocy optycznej.
- **E** – ekran do wizualnej obserwacji plamki.

---

### Część A – Badanie polaryzacji światła lasera (ćwiczenie 6a)

**Co robić:**

1. Zestawić układ: **Laser → Polaryzator P → Ekran/Detektor FD**
   (bez płytki i stosu).
2. Uruchomić laser (przekręcić kluczyk zasilacza w pozycję „ON").
3. **Obracać polaryzator P** o pełny obrót (360°) obserwując plamkę na ekranie
   lub wskazania miernika mocy.
4. Zaobserwować, czy intensywność:
   - **nie zmienia się** – laser emituje światło niespolaryzowane lub kołowo spolaryzowane,
   - **zmienia się, lecz nie zanika** – polaryzacja częściowa,
   - **zanika całkowicie** przy pewnym ustawieniu – laser emituje światło **spolaryzowane liniowo**.
5. Sformułować wniosek odnośnie stanu polaryzacji światła lasera.

> **Oczekiwany wynik:** Większość laserów He-Ne emituje światło spolaryzowane liniowo
> (wygaszenie nastąpi przy obróceniu polaryzatora o 90° względem osi polaryzacji lasera).

---

### Część B – Wyznaczenie kąta Brewstera dla płytki kwarcowej (ćwiczenie 6b.1)

**Co robić:**

1. Zestawić układ: **Laser → Polaryzator P (oś pozioma) → Płytka kwarcowa na stoliku → Ekran/FD**.
2. Ustawić **polaryzator P** tak, aby oś transmisji była pozioma
   (polaryzacja p – **E** równoległy do płaszczyzny padania na płytkę).
3. Pokryć ze sobą kreski zerowe na skalach stolika obrotowego, zablokować stolik śrubą.
   Ustawić płytkę **prostopadle do wiązki** (plamka odbita pokrywa się z padającą).
4. Odblokować stolik i **obracać go powoli** w jednym kierunku, obserwując plamkę
   odbitą na ekranie.
5. Odnaleźć kąt, przy którym plamka odbita **całkowicie zanika** (lub ma minimalną
   moc mierzoną przez FD) – jest to kąt Brewstera $\theta_B$.
6. Odczytać wskazanie skali kątowej stolika i zapisać jako $\theta_{B,1}$.
7. **Powtórzyć pomiar 5 razy** (za każdym razem powrócić do pozycji zerowej i szukać
   zaniku na nowo), zapisując $\theta_{B,1}, \ldots, \theta_{B,5}$ w tabeli.
8. Obliczyć wartość średnią:

$$\bar{\theta}_B = \frac{1}{5}\sum_{i=1}^{5}\theta_{B,i}$$

9. Obliczyć odchylenie standardowe i niepewność przypadkową:

$$\delta\theta_B^{(A)} = \frac{s(\theta_B)}{\sqrt{5}}, \quad s(\theta_B) = \sqrt{\frac{\sum_{i=1}^{5}(\theta_{B,i}-\bar{\theta}_B)^2}{4}}$$

10. Ocenić niepewność systematyczną $\delta\theta_B^{(B)}$ (na podstawie podziałki skali stolika,
    np. $\delta\theta_B^{(B)} = \Delta\theta/\sqrt{3}$).
11. Obliczyć współczynnik załamania płytki kwarcowej:

$$n = \tan\bar{\theta}_B$$

12. Obliczyć niepewność wyznaczenia $n$ (metoda różniczki zupełnej):

$$\Delta n = \frac{\Delta\theta_B}{\cos^2\!\bar{\theta}_B}$$

13. Podać wynik w postaci $n = \bar{n} \pm \Delta n$.

---

### Część C – Badanie stosu polaryzacyjnego (ćwiczenie 6b.2)

**Co robić:**

1. W miejsce płytki kwarcowej wstawić **stos 15 płytek szklanych** i ustawić go
   pod wyznaczonym kątem Brewstera (lub pod kątem typowym dla szkła, ok. 56°).
2. Za stosem umieścić kolejno: **analizator A** i **fotodetektor FD**.
3. Obracając analizator A o pełny obrót (360°) rejestrować wskazania miernika mocy
   optycznej i wyznaczyć:
   - $I_{max}$ – maksymalną moc (analizator równoległy do osi polaryzacji wiązki),
   - $I_{min}$ – minimalną moc (analizator prostopadły).
4. Zanotować kąt ustawienia analizatora przy $I_{min}$ – jest to oś polaryzacji wiązki
   przechodzącej przez stos.
5. Obliczyć stopień polaryzacji:

$$P = \frac{I_{max} - I_{min}}{I_{max} + I_{min}}$$

6. Sformułować wniosek: czy wiązka przepuszczona przez stos jest spolaryzowana
   i jaki jest kierunek jej polaryzacji (poziomy czy pionowy)?

> **Oczekiwany wynik:** Stos polaryzuje wiązkę przepuszczoną **poziomo** (składowa p),
> a wiązka odbita od stosu jest spolaryzowana **pionowo** (składowa s).
> Stopień polaryzacji wiązki przepuszczonej powinien być bliski 1.

---

### Podsumowanie – co zapisać w sprawozdaniu

| Część | Czynność | Tabela / wynik |
|-------|----------|----------------|
| A | Obserwacja wygaszenia wiązki laserowej przy obrocie P | Wniosek o polaryzacji lasera |
| B | 5 pomiarów kąta Brewstera $\theta_B$ dla płytki kwarcowej | Tabela: $\theta_{B,i}$, $\bar{\theta}_B$, $\Delta\theta_B$, $n \pm \Delta n$ |
| C | Pomiar $I_{max}$ i $I_{min}$ za stosem polaryzacyjnym | Wynik $P$; wniosek o polaryzacji |

Dla każdej części podać wyniki z **zapisem niepewności pomiarowej** oraz sformułować
**wnioski fizyczne** dotyczące obserwowanego zjawiska polaryzacji.

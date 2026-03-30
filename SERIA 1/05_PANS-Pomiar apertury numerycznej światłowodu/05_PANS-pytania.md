# Wejściówka 05 – PANS – Pomiar apertury numerycznej światłowodu

## Pytanie 1: Propagacja światła we włóknie światłowodowym

Światłowód to cienkie włókno szklane (lub z tworzywa sztucznego) składające się z rdzenia
(ang. *core*) o współczynniku załamania $n_1$ i płaszcza (ang. *cladding*) o współczynniku
załamania $n_2 < n_1$. Propagacja światła w światłowodzie opiera się na zjawisku
**całkowitego wewnętrznego odbicia** (TIR – *Total Internal Reflection*).

Warunek całkowitego wewnętrznego odbicia:

$$\sin\theta_c = \frac{n_2}{n_1}$$

gdzie $\theta_c$ jest kątem krytycznym. Promień biegnący wewnątrz rdzenia pod kątem
większym niż $\theta_c$ (mierzonym od normalnej do granicy rdzeń–płaszcz) ulega całkowitemu
odbiciu i pozostaje w rdzeniu bez strat na granicy ośrodków.

Wyróżnia się dwa główne typy światłowodów:

- **Światłowód skokowy** (*step-index*) – współczynnik załamania rdzenia jest stały
  i skacze na granicy rdzeń–płaszcz.
- **Światłowód gradientowy** (*graded-index*) – współczynnik załamania maleje stopniowo
  od osi światłowodu ku płaszczowi, co zmniejsza dyspersję modową.

Ze względu na liczbę prowadzonych modów:

- **Wielomodowy** – rdzeń ma duży przekrój (typowo 50 µm lub 62,5 µm), prowadzi wiele
  modów; stosowany na krótkich dystansach.
- **Jednomodowy** – rdzeń bardzo cienki (typowo ~9 µm), prowadzi tylko jeden mod
  podstawowy; stosowany w telekomunikacji dalekiego zasięgu.

---

## Pytanie 2: Definicja apertury numerycznej światłowodu

**Apertura numeryczna** (NA – *Numerical Aperture*) określa kąt akceptacji światłowodu,
czyli maksymalny kąt padania wiązki na wejście światłowodu, przy którym promień
zostanie schwytany i poprowadzony przez włókno.

Definicja:

$$NA = \sin(\alpha_0) = \sqrt{n_1^2 - n_2^2}$$

gdzie:
- $\alpha_0$ – kąt akceptacji (połowa kąta rozwarcia stożka akceptacji),
- $n_1$ – współczynnik załamania rdzenia,
- $n_2$ – współczynnik załamania płaszcza.

Dla światłowodu kwarcowego skokowego ($n_1 = 1{,}48$, $n_2 = 1{,}46$):

$$NA = \sqrt{(1{,}48)^2 - (1{,}46)^2} \approx 0{,}242 \quad (\alpha_0 \approx 14°)$$

Dla światłowodu gradientowego:

$$NA = n_2\sqrt{2\Delta}, \quad \text{gdzie } \Delta = \frac{n_1 - n_2}{n_1}$$

Przykład ($n_2 = 1{,}48$, $\Delta = 0{,}01$):

$$NA = 1{,}48 \cdot \sqrt{2 \cdot 0{,}01} \approx 0{,}208 \quad (\alpha_0 \approx 12°)$$

Dla światłowodów jednomodowych $\alpha_0$ wynosi kilka stopni.

Apertura numeryczna decyduje o:
- zdolności do zbierania światła ze źródła,
- stratach w złączach światłowodowych,
- liczbie modów prowadzonych (parametr V).

---

## Pytanie 3: Sposoby pomiaru apertury numerycznej i jej typowe wartości

### Metoda dalekiego pola (Far-Field Method, IEC 793-1-C6)

Polega na pomiarze kątowego rozkładu natężenia promieniowania wychodzącego z końca
światłowodu (rozkład pola dalekiego). Obszar „dalekiego pola" spełnia warunek $R \gg w^2/\lambda$
(gdzie $w$ – średnica pola modowego).

**Zasada pomiaru:**
1. Wzbudzić światłowód laserem (np. diodą laserową) przez obiektyw mikroskopowy.
2. Rejestrować promieniowanie wychodzące za pomocą ruchomego detektora
   (lub matrycy detektorów) ustawionego na łuku centrowanym na wyjściu włókna.
3. Zmierzyć kąt $\alpha_{max}$, przy którym intensywność spada do wybranego progu.

Zgodnie z normą IEC 793-1-C6 apertura numeryczna „dalekiego pola" $NA_{ff}$ definiowana
jest jako sinus połowy kąta, przy którym intensywność spada do **5% wartości maksymalnej**:

$$NA_{ff} = k \cdot NA_{th}$$

Współczynnik korekcyjny $k$ zależy od długości fali: $k = 0{,}95$ (540 nm), $k = 0{,}96$ (633 nm),
$k = 1$ (850 nm).

### Metoda geometryczna (pomiar plamki na ekranie)

W ćwiczeniu laboratoryjnym stosuje się uproszczoną metodę geometryczną:
1. Laser jest wprowadzany do światłowodu przez obiektyw mikroskopowy.
2. Na ekranie mierzone są średnice plamki wychodzącego stożka światła dla kilku
   różnych odległości $d$ końca światłowodu od ekranu.
3. Apertura wyznaczana jest jako:

$$NA = \sin(\alpha_0) \approx \tan(\alpha_0) = \frac{r}{d}$$

   gdzie $r$ – promień plamki na ekranie, $d$ – odległość ekranu od końca światłowodu.

### Typowe wartości apertury numerycznej

| Typ światłowodu               | NA              |
|-------------------------------|-----------------|
| Jednomodowy (SM, ~9 µm)       | 0,10 – 0,15     |
| Wielomodowy skokowy (MM-SI)   | 0,20 – 0,50     |
| Wielomodowy gradientowy (MM-GI, 50 µm) | ~0,20  |
| Wielomodowy gradientowy (MM-GI, 62,5 µm) | ~0,275 |
| Kwarcowy skokowy (przykład)   | ~0,242          |

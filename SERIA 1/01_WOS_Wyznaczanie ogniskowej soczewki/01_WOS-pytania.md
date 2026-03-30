# Wejściówka 01 – WOS – Wyznaczanie ogniskowej soczewki

## Pytanie 1: Rodzaje soczewek. Bieg światła przez soczewkę. Powstawanie obrazów – konstrukcja geometryczna. Obraz rzeczywisty i pozorny

### Rodzaje soczewek

Soczewka sferyczna to bryła z przezroczystego materiału (np. szkła) ograniczona dwiema
powierzchniami sferycznymi (lub sferyczną i płaską). Jeżeli grubość soczewki jest mała
w porównaniu z jej średnicą i promieniami krzywizn, soczewkę nazywamy **cienką**.

Soczewki dzielą się na dwie główne grupy:

- **Soczewki skupiające (zbierające, dodatnie, wypukłe)** – środek soczewki jest grubszy
  niż brzegi; ogniskowa $f > 0$. Typy: dwuwypukła, płasko-wypukła, wklęsło-wypukła
  (menisk zbierający).
- **Soczewki rozpraszające (ujemne, wklęsłe)** – środek jest cieńszy niż brzegi;
  ogniskowa $f < 0$. Typy: dwuwklęsła, płasko-wklęsła, wypukło-wklęsła (menisk
  rozpraszający).

### Bieg promieni przez soczewkę

Dla **soczewki skupiającej**: równoległe promienie padające na soczewkę po przejściu przez
nią skupiają się w **ognisku rzeczywistym** $F$ po drugiej stronie soczewki.

Dla **soczewki rozpraszającej**: równoległe promienie po przejściu przez soczewkę
rozpraszają się; ich przedłużenia przecinają się po tej samej stronie co padające światło
w **ognisku pozornym** $F'$.

Odległość od środka optycznego soczewki do jej ogniska to **ogniskowa** $f$.

### Konstrukcja geometryczna obrazu (trzy promienie pomocnicze)

Do wyznaczenia obrazu wystarczą dwa z trzech promieni pomocniczych wychodzących
z tego samego punktu przedmiotu:

1. **Promień równoległy do osi optycznej** – po przejściu przez soczewkę skupiającą biegnie
   przez ognisko rzeczywiste $F$; dla soczewki rozpraszającej przedłużenie biegu promienia
   przechodzi przez ognisko pozorne $F'$ po stronie przedmiotu.
2. **Promień przechodzący przez środek optyczny soczewki** – nie zmienia kierunku (dla
   soczewki cienkiej).
3. **Promień przechodzący przez ognisko** $F$ – po przejściu przez soczewkę skupiającą
   biegnie równolegle do osi optycznej; dla soczewki rozpraszającej: promień biegnący
   wzdłuż linii przechodzącej przez ognisko pozorne wychodzi z soczewki równolegle
   do osi.

### Obraz rzeczywisty i pozorny

| Cecha | Obraz rzeczywisty | Obraz pozorny |
|-------|-------------------|---------------|
| Jak powstaje | Przecięcie rzeczywistych promieni | Przecięcie *przedłużeń* promieni |
| Strona soczewki | Po przeciwnej stronie niż przedmiot | Po tej samej stronie co przedmiot |
| Obserwacja na ekranie | Tak | Nie (wymaga układu optycznego, np. oka) |
| Orientacja | Odwrócony (gdy $a > f$) | Prosty |
| Przykład | Soczewka skupiająca ($a > f$) | Soczewka rozpraszająca; soczewka skupiająca ($a < f$) |

---

## Pytanie 2: Wady soczewek. Aberracja sferyczna i chromatyczna

Równanie soczewki cienkiej (1) jest ścisłe jedynie dla promieni **paraksjalnych** (przyosiowych)
i dla jednej długości fali. W praktyce pojawiają się wady optyczne (aberracje).

### Aberracja sferyczna

Gdy na soczewkę pada szeroka wiązka promieni, promienie **odległe od osi optycznej**
(promienie skrajne) załamują się pod większym kątem i przecinają oś optyczną **bliżej
środka soczewki** niż promienie przyosiowe. Ognisko jest więc rozmyte – zamiast punktu
na ekranie obserwuje się **plamkę rozproszenia**.

Sposoby ograniczenia:
- stosowanie **przysłon** (przepuszczanie tylko promieni przyosiowych),
- stosowanie **układów soczewek** o odpowiednio dobranych promieniach krzywizn
  i współczynnikach załamania.

### Aberracja chromatyczna

Wynika z **dyspersji** materiału soczewki – współczynnik załamania $n$ zależy od długości
fali $\lambda$. Promienie fioletowe ($\lambda$ mała, $n$ większy) skupiają się bliżej soczewki niż
promienie czerwone ($\lambda$ duża, $n$ mniejszy). W efekcie ogniskowa dla różnych barw
jest różna, a obraz białego przedmiotu otoczony jest **kolorową obwódką (aureolą)**.

Sposoby korekcji:
- **Achromat** – układ dwóch przylegających soczewek (skupiającej i rozpraszającej)
  wykonanych z różnych gatunków szkła (o różnych dyspersji), wyrównujących ogniskową
  dla co najmniej dwóch długości fal.

---

## Pytanie 3: Równania soczewek cienkich. Układ dwóch soczewek i moc optyczna układu

### Równanie soczewki cienkiej

$$\frac{1}{f} = \frac{1}{a} + \frac{1}{b}$$

gdzie:
- $f$ – ogniskowa soczewki ($f > 0$ skupiająca, $f < 0$ rozpraszająca),
- $a$ – odległość przedmiotu od soczewki (zawsze $a > 0$),
- $b$ – odległość obrazu od soczewki ($b > 0$ obraz rzeczywisty, $b < 0$ obraz pozorny).

### Równanie szlifierzy soczewek (lens maker equation)

$$\frac{1}{f} = (n - 1)\!\left(\frac{1}{R_1} + \frac{1}{R_2}\right)$$

gdzie $n$ – współczynnik załamania materiału soczewki (w powietrzu $n_0 = 1$), $R_1$, $R_2$ –
promienie krzywizn obu powierzchni soczewki (dodatni dla powierzchni wypukłej
w kierunku padającego światła, ujemny dla wklęsłej).

### Zdolność skupiająca (moc optyczna)

$$D = \frac{1}{f} \quad [m^{-1} = \text{dioptria}]$$

### Układ dwóch cienkich soczewek

**Soczewki stykające się** ($d = 0$):

$$D_{wyp} = D_1 + D_2 \qquad \text{(moce optyczne sumują się)}$$

**Soczewki rozdzielone odległością $d$**:

$$D_{wyp} = D_1 + D_2 - d \cdot D_1 D_2$$

---

## Pytanie 4: Metoda Bessela pomiaru ogniskowej soczewki

### Zasada metody

Metoda Bessela pozwala wyznaczyć ogniskową soczewki skupiającej **bez konieczności
ustalania dokładnego położenia jej środka optycznego**.

Odległość $L$ między przedmiotem a ekranem jest **stała** i spełnia warunek $L > 4f$.
Przesuwając soczewkę wzdłuż ławy optycznej odnajdujemy **dwa położenia** $S$ i $S'$
soczewki, dla których na ekranie otrzymujemy ostry obraz przedmiotu:
- w położeniu $S$ – obraz **powiększony**,
- w położeniu $S'$ – obraz **pomniejszony**.

### Wyprowadzenie wzoru

Z układu równań:

$$\frac{1}{f} = \frac{1}{a} + \frac{1}{b}, \qquad L = a + b$$

wyznacza się dwa rozwiązania dla odległości przedmiot–soczewka:

$$a_{1,2} = \frac{1}{2}\!\left(L \pm \sqrt{L^2 - 4Lf}\right)$$

Niech $d$ oznacza **odległość między dwoma położeniami soczewki**:

$$d = a_1 - a_2 = \sqrt{L^2 - 4Lf}$$

Stąd ogniskowa:

$$\boxed{f = \frac{L^2 - d^2}{4L}}$$

### Procedura pomiaru

1. Ustawić przedmiot i ekran w odległości $L > 4f$ od siebie (odległość stała przez cały pomiar).
2. Przesuwać soczewkę skupiającą wzdłuż ławy optycznej i odnaleźć **dwa** położenia $S$ i $S'$,
   dla których obraz na ekranie jest ostry.
3. Zmierzyć odległość $d$ między tymi dwoma położeniami soczewki.
4. Obliczyć ogniskową ze wzoru $f = \dfrac{L^2 - d^2}{4L}$.
5. Powtórzyć pomiar kilkakrotnie (zalecane 5 razy) i obliczyć wartość średnią oraz
   niepewności.

### Zalety metody Bessela

- Brak konieczności lokalizacji środka optycznego soczewki.
- Stała odległość $L$ → mniejsze niepewności systematyczne.
- Dwa niezależne pomiary (oba ostre obrazy) zwiększają dokładność.

---

## Pytanie 5: Sposób wyznaczania ogniskowej soczewki rozpraszającej

### Problem

Soczewka rozpraszająca ($f < 0$) **nie wytwarza obrazów rzeczywistych** na ekranie dla
realnego przedmiotu, dlatego metody bezpośrednie (A i Bessela) nie mogą być zastosowane
wprost.

### Metoda z soczewką pomocniczą (układ soczewek)

Soczewkę rozpraszającą o nieznanej mocy $D_2 < 0$ zestawia się z **soczewką skupiającą
o znanych mocy $D_1 > 0$** (gdzie $|D_1| > |D_2|$), tak aby wypadkowy układ miał dodatnią
zdolność skupiającą i tworzył obraz rzeczywisty na ekranie.

**Procedura:**

1. Ustawić na ławie optycznej soczewkę skupiającą ($D_1$), a bezpośrednio za nią
   soczewkę rozpraszającą ($D_2$).
2. Ustawić układ tak, aby na ekranie E powstał **ostry obraz rzeczywisty** przedmiotu.
3. Zmierzyć:
   - odległość $a$ od przedmiotu do środka układu soczewek,
   - odległość $b$ od środka układu soczewek do ekranu,
   - odległość $d$ między środkami obu soczewek.
4. Ze wzoru soczewkowego wyznaczyć **wypadkową moc optyczną** układu:

$$D_{wyp} = \frac{1}{f_{wyp}} = \frac{1}{a} + \frac{1}{b}$$

5. Korzystając z wzoru na układ dwóch soczewek rozdzielonych odległością $d$:

$$D_{wyp} = D_1 + D_2 - d \cdot D_1 D_2$$

wyznaczyć moc optyczną soczewki rozpraszającej:

$$D_2 = \frac{D_{wyp} - D_1}{1 - d \cdot D_1}$$

6. Ogniskowa soczewki rozpraszającej:

$$f_2 = \frac{1}{D_2} < 0$$

### Uwagi praktyczne

- Moc soczewki skupiającej musi spełniać $D_1 > |D_2|$, aby układ wypadkowy skupiał.
- Gdy soczewki są stykające się ($d \approx 0$), wzór upraszcza się do
  $D_2 = D_{wyp} - D_1$, co pozwala bezpośrednio obliczyć $D_2$.
- Niepewność wyniku zależy od dokładności wyznaczenia $D_1$, $a$, $b$ oraz $d$.

---

## Przebieg ćwiczenia laboratoryjnego

### Stanowisko i sprzęt

Na ławie optycznej zamocowane są kolejno:
- **P** – oświetlony przedmiot (wycięcie określonego kształtu w nieprzezroczystej przesłonie z podświetleniem),
- **S** – soczewka (przesuwna wzdłuż ławy),
- **E** – ekran (na którym obserwujemy obraz).

Położenia elementów odczytujemy ze skali ławy optycznej. Wszystkie odległości mierzone są
między środkami uchwytów (środkiem optycznym soczewki a środkami przedmiotu i ekranu).

---

### Część I – Soczewka skupiająca

#### Metoda A: wzór soczewkowy

**Co robić:**

1. Ustawić przedmiot **P** i ekran **E** w pewnej odległości od siebie (np. ~60–80 cm).
2. Przesuwać soczewkę **S** między przedmiotem a ekranem aż do uzyskania
   **ostrego obrazu** przedmiotu na ekranie.
3. Odczytać i zapisać:
   - $a$ – odległość przedmiotu od soczewki,
   - $b$ – odległość soczewki od ekranu,
   - $L = a + b$ – całkowita odległość przedmiot–ekran.
4. Obliczyć ogniskową:

$$f = \frac{ab}{a + b} = \frac{ab}{L}$$

5. **Powtórzyć pomiar 4 razy** (za każdym razem lekko przesuwać soczewkę i ponownie
   wyostrzać obraz), zapisując wyniki w **Tabeli I**.
6. Obliczyć wartości średnie $a_{sr}$, $b_{sr}$ oraz wartość średnią i niepewność $f$.

**Niepewność rozszerzona** (typ B, współczynnik $K = 2$; wzór wg instrukcji laboratoryjnej):

$$\delta f = 0{,}6\sqrt{\left(\frac{\Delta a}{a}\right)^2 + \left(\frac{\Delta b}{b}\right)^2 + \left(\frac{\Delta L}{L}\right)^2}, \qquad \Delta f = K \cdot \delta f$$

> **Uwaga:** Główna wada tej metody polega na tym, że nie znamy dokładnego położenia
> środka optycznego soczewki, co wpływa na dokładność $a$ i $b$.

---

#### Metoda B: metoda Bessela

**Co robić:**

1. Ustawić przedmiot **P** i ekran **E** w stałej odległości $L > 4f$ (np. ~80 cm)
   i **nie przesuwać ich przez cały pomiar**.
2. Przesuwając soczewkę, odnaleźć **pierwsze położenie** $S_1$, przy którym obraz
   na ekranie jest ostry (obraz **powiększony**). Zapisać pozycję soczewki.
3. Dalej przesuwać soczewkę w tym samym kierunku i odnaleźć **drugie położenie** $S_2$,
   przy którym obraz jest ostry (obraz **pomniejszony**). Zapisać pozycję soczewki.
4. Obliczyć $d = |S_2 - S_1|$ – odległość między dwoma położeniami soczewki.
5. Obliczyć ogniskową:

$$f = \frac{L^2 - d^2}{4L}$$

6. **Powtórzyć pomiar 5 razy** (za każdym razem wyostrzać obraz od nowa),
   wpisując wyniki do **Tabeli II**.
7. Obliczyć wartość średnią $d_{sr}$, ogniskową $f$ oraz jej niepewność.

**Niepewność rozszerzona** (typ B, $K = 2$):

$$\Delta f = 0{,}6 \cdot K \sqrt{\left(\frac{d^2 + L^2}{4L^2}\,\Delta L\right)^2 + \left(\frac{d}{2L}\,\Delta d\right)^2}$$

---

### Część II – Soczewka rozpraszająca

#### Metoda C: układ z soczewką pomocniczą

**Co robić:**

1. Na ławie optycznej ustawić soczewkę skupiającą o **znanej mocy $D_1$** (podanej
   przez prowadzącego lub wyznaczonej metodą A/B), a bezpośrednio za nią (w bliskiej
   odległości) soczewkę rozpraszającą o **nieznanej mocy $D_2$**.
2. Przesuwać cały układ soczewek, aż na ekranie **E** pojawi się ostry obraz rzeczywisty
   przedmiotu **P**.
3. Zmierzyć i zapisać:
   - $a$ – odległość od przedmiotu do środka układu soczewek,
   - $b$ – odległość od środka układu soczewek do ekranu,
   - $d$ – dystans między środkami obu soczewek,
   - $L = a + b$ – odległość przedmiot–ekran.
4. Wyznaczyć wypadkową moc optyczną układu:

$$D_w = \frac{1}{f_w} = \frac{1}{a} + \frac{1}{b}$$

5. Obliczyć moc optyczną soczewki rozpraszającej ze wzoru na układ dwusoczewkowy:

$$D_2 = \frac{D_w - D_1}{1 - d \cdot D_1}$$

6. Obliczyć ogniskową soczewki rozpraszającej:

$$f_2 = \frac{1}{D_2} \quad [\text{wartość ujemna!}]$$

7. Wpisać wyniki do **Tabeli III**.

**Niepewność** $D_w$ (wzór wg instrukcji laboratoryjnej):

$$\delta D_w = 0{,}6\sqrt{\left(\frac{\Delta a}{a}\right)^2 + \left(\frac{\Delta b}{b}\right)^2 + \left(\frac{\Delta L}{L}\right)^2}, \qquad \Delta D_w = K \cdot D_w \cdot \delta D_w$$

**Niepewność** $D_2$ (wzór przybliżony wg instrukcji – $\Delta d$ pomijamy jako małe
w stosunku do pozostałych niepewności):

$$\Delta D_2 \approx 0{,}6 \cdot K \sqrt{(\Delta D_w)^2 + (\Delta D_1)^2}$$

Niepewność $\Delta f_2$ obliczyć i opisać sposób obliczenia w sprawozdaniu.

---

### Podsumowanie – co zapisać w sprawozdaniu

| Część | Metoda | Tabela | Liczba pomiarów |
|-------|--------|--------|-----------------|
| Soczewka skupiająca | A – wzór soczewkowy | Tabela I | 4× |
| Soczewka skupiająca | B – Bessela | Tabela II | 5× (dla stałego $L$) |
| Soczewka rozpraszająca | C – układ z soczewką pomocniczą | Tabela III | 1× + niepewności |

Dla każdej metody podać wynik w postaci $f = \bar{f} \pm \Delta f$ [cm].

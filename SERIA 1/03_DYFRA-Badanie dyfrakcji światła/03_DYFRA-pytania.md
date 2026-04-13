# Wejściówka 03 – DYFRA – Badanie dyfrakcji światła

## Pytanie 1: Na czym polega zjawisko dyfrakcji i czym różni się dyfrakcja Fraunhofera od dyfrakcji Fresnela?

### Zjawisko dyfrakcji

**Dyfrakcja** (ugięcie światła) to zjawisko odchylania się fal świetlnych od prostoliniowego biegu
przy napotkaniu przeszkody lub przejściu przez szczelinę o rozmiarach porównywalnych
z długością fali. Wynika bezpośrednio z **zasady Huygensa-Fresnela**: każdy punkt czoła
fali jest źródłem wtórnych fal kulistych, a całkowite pole falowe w danym punkcie przestrzeni
jest superpozycją (interferencją) wszystkich tych fal wtórnych.

Dyfrakcja jest widoczna, gdy wymiar przeszkody (lub szczeliny) $a$ jest porównywalny
z długością fali $\lambda$. Miara, jak daleko musimy się oddalić od przeszkody, aby obserwować
poszczególne rodzaje dyfrakcji, wyznaczana jest przez **odległość Rayleigha**:

$$D_R = \frac{a^2}{\lambda}$$

- dla odległości obserwacji $d \ll D_R$ – **pole bliskie** (sferyczne czoło fali, dyfrakcja Fresnela),
- dla odległości obserwacji $d \gg D_R$ – **pole dalekie** (płaskie czoło fali, dyfrakcja Fraunhofera).

### Dyfrakcja Fraunhofera (pole dalekie)

Obserwowana w **dużej odległości** od przeszkody ($d \gg D_R$) lub w ognisku soczewki
skupiającej. Zakłada się, że fale padające na przeszkodę i docierające do punktu obserwacji
są **płaskie** (wiązki równoległe). Matematycznie obraz dyfrakcyjny jest **transformatą Fouriera**
rozkładu amplitudy na przesłonie.

Charakterystyczne cechy:
- obraz dyfrakcyjny nie zmienia kształtu wraz z odległością (tylko skala),
- dla pojedynczej szczeliny szerokości $a$: minima w położeniach $\sin\alpha_m = m\lambda/a$,
  $m = \pm1, \pm2, \ldots$,
- obraz jest symetryczny, z jasnym prążkiem centralnym i naprzemiennymi minimami
  i bocznymi maksimami.

### Dyfrakcja Fresnela (pole bliskie)

Obserwowana w **małej odległości** od przeszkody ($d \lesssim D_R$). Fale padające i wychodzące
z przeszkody mają **sferyczne** (zakrzywione) czoła fali; promienie padające i obserwowane
**nie są równoległe**. Matematycznie wymaga całkowania Fresnela z uwzględnieniem
kwadratowych poprawek do fazy.

Charakterystyczne cechy:
- obraz dyfrakcyjny zmienia kształt wraz z odległością,
- obraz jest asymetryczny i bardziej skomplikowany niż Fraunhofera,
- w centrum przeszkody (dysk Arago) lub wnętrzu cienia obserwuje się jasny punkt.

### Porównanie

| Cecha | Dyfrakcja Fraunhofera | Dyfrakcja Fresnela |
|-------|----------------------|--------------------|
| Odległość obserwacji | $d \gg D_R = a^2/\lambda$ | $d \lesssim D_R$ |
| Kształt czoła fali | Płaskie (fala płaska) | Sferyczne (fala kulista) |
| Obraz dyfrakcyjny | Niezmienny z odległością | Zmienia się z odległością |
| Zastosowanie | Siatki dyfrakcyjne, spektrometry | Holografia, optyka bliskopolowa |
| Złożoność opisu matematycznego | Transformata Fouriera | Całkowanie Fresnela |

---

## Pytanie 2: Wyznaczanie długości fali świetlnej uginającej się na szczelinie o znanej szerokości – wyprowadzenie wzoru na minimum dyfrakcyjne

### Model fizyczny

Rozważamy **pojedynczą szczelinę** szerokości $a$ oświetloną prostopadle płaską falą
monochromatyczną o długości fali $\lambda$. Szczelinę dzielimy (myślowo) na $N$ elementarnych
źródeł wtórnych rozmieszczonych co $\delta = a/N$.

### Warunek na minimum dyfrakcyjne

Stosujemy metodę **parowania połówek** szczeliny. W kierunku kąta $\alpha$ od osi optycznej
każde źródło z górnej połowy szczeliny parujemy z odpowiadającym mu źródłem
z dolnej połowy. Para takich źródeł dzieli szczelinę i ma różnicę drogi optycznej:

$$\Delta = \frac{a}{2}\sin\alpha$$

Gdy $\Delta = \lambda/2$, czyli:

$$\frac{a}{2}\sin\alpha = \frac{\lambda}{2}$$

fale ze sparowanych źródeł interfere**r**ują **destruktywnie** (różnica faz $\pi$), dając pierwsze
minimum. Można powtórzyć argument, dzieląc szczelinę na $2m$ części:

$$\boxed{\sin\alpha_m = m\frac{\lambda}{a}, \qquad m = \pm1, \pm2, \pm3, \ldots}$$

Jest to **warunek na $m$-te minimum** dyfrakcyjne.

### Praktyczny wzór pomiarowy

W układzie laboratoryjnym (rys. 1 w instrukcji): szczelina w odległości $L$ od ekranu.
Odległość $x_m$ od centrum obrazu do $m$-tego minimum dyfrakcyjnego:

$$\sin\alpha_m = \frac{x_m}{\sqrt{x_m^2 + L^2}}$$

Dla małych kątów ($\alpha_m \ll 1$ rad): $\sin\alpha_m \approx \tan\alpha_m = x_m / L$.

Łącząc z warunkiem na minimum:

$$\frac{x_m}{\sqrt{x_m^2 + L^2}} = m\frac{\lambda}{a}$$

Stąd szukana **długość fali** (przy znanych $a$, $L$, $x_m$):

$$\lambda = \frac{a \cdot x_m}{m\sqrt{x_m^2 + L^2}}$$

lub – odwrotnie – **szerokość szczeliny** (przy znanych $\lambda$, $L$, $x_m$):

$$\boxed{a = \frac{m\lambda}{\sin\alpha_m} = \frac{m\lambda\sqrt{x_m^2 + L^2}}{x_m}}$$

---

## Pytanie 3: Jak działa siatka dyfrakcyjna transmisyjna?

### Budowa i zasada działania

**Siatka dyfrakcyjna transmisyjna** to optyczny element złożony z dużej liczby $N$ równoległych,
równoodległych szczelin (lub rowków) wykonanych na przezroczystym podłożu (szkło, folia).
Odstęp między sąsiednimi szczelinami (lub ich środkami) nazywany jest **stałą siatki** $a$
(inaczej: periodem siatki). Gęstość linii siatki to $n = 1/a$ [linii/mm].

Gdy na siatkę pada prostopadle **płaska fala monochromatyczna**, każda ze szczelin staje się
źródłem wtórnych fal Huygensa. W kierunku kąta $\alpha$ od osi optycznej fale z sąsiednich
szczelin mają **różnicę drogi optycznej**:

$$\Delta = a \sin\alpha$$

### Maksima główne – warunek na rzędy dyfrakcji

Konstruktywna interferencja (maksimum główne) zachodzi, gdy różnica drogi jest całkowitą
wielokrotnością długości fali:

$$\Delta = m\lambda \quad \Rightarrow \quad \boxed{a\sin\alpha_m = m\lambda}$$

gdzie $m = 0, \pm1, \pm2, \ldots$ – numer rzędu dyfrakcji.

- $m = 0$ – rząd zerowy: wiązka nieugięta, biegnie prosto (niezależnie od $\lambda$),
- $m = \pm1, \pm2, \ldots$ – wyższe rzędy: kąt ugięcia $\alpha_m$ zależy od $\lambda$,
  co powoduje **rozszczepienie białego światła na widmo**.

### Właściwości siatki dyfrakcyjnej

- **Zdolność rozdzielcza**: $R = mN$ (gdzie $N$ – całkowita liczba szczelin). Duże $N$ daje
  wąskie, ostre prążki – wysoka rozdzielczość widmowa.
- **Dyspersja kątowa**: $d\alpha/d\lambda = m/(a\cos\alpha)$ – wyższe rzędy i mniejsza stała siatki
  dają lepsze rozszczepienie widma.
- **Ekwiwalent spektrometru**: siatka dyfrakcyjna jest podstawowym elementem
  spektrometrów i monochromatorów.

### Różnica między siatką a pryzmatem

| Cecha | Siatka dyfrakcyjna | Pryzmat |
|-------|--------------------|---------|
| Mechanizm | Dyfrakcja + interferencja | Dyspersja (załamanie) |
| Widmo | Liniowe (symetryczne) | Liniowe, asymetryczne |
| Rozdzielczość | Bardzo wysoka ($R = mN$) | Umiarkowana |
| Wielokrotne rzędy | Tak (różne $m$) | Nie |

---

## Pytanie 4: Wyprowadzenie wzoru na kąt ugięcia wiązki dla siatki dyfrakcyjnej

### Wyprowadzenie

Rozważamy siatkę dyfrakcyjną z $N$ szczelinami, stała siatki $a$ (odległość między środkami
sąsiednich szczelin). Na siatkę pada prostopadle fala płaska o długości fali $\lambda$.

**Krok 1.** Każda szczelina jest źródłem fali kulistej (zasada Huygensa). Dwie sąsiednie szczeliny
(np. szczelina $k$ i $k+1$) emitują fale, których drogi w kierunku $\alpha$ różnią się o:

$$\Delta = a\sin\alpha$$

**Krok 2.** Odpowiadająca różnica faz między falami z sąsiednich szczelin:

$$\delta = \frac{2\pi}{\lambda}\Delta = \frac{2\pi a \sin\alpha}{\lambda}$$

**Krok 3.** Całkowita amplituda od $N$ szczelin (szereg geometryczny):

$$A(\alpha) = A_0 \sum_{k=0}^{N-1} e^{ik\delta} = A_0 \frac{1 - e^{iN\delta}}{1 - e^{i\delta}}$$

Natężenie (kwadrat modułu amplitudy):

$$I(\alpha) = I_0 \left(\frac{\sin(N\delta/2)}{\sin(\delta/2)}\right)^2 \cdot \left(\frac{\sin(\pi a \sin\alpha / \lambda)}{\pi a \sin\alpha / \lambda}\right)^2$$

gdzie drugi czynnik pochodzi z dyfrakcji na pojedynczej szczelinie (obwiednia).

**Krok 4.** **Maksima główne** (konstruktywna interferencja wszystkich $N$ szczelin):

Licznik pierwszego czynnika jest maksymalny ($= N$), gdy mianownik $\sin(\delta/2) = 0$, czyli:

$$\frac{\delta}{2} = m\pi \quad \Rightarrow \quad \frac{\pi a\sin\alpha}{\lambda} = m\pi$$

$$\boxed{a\sin\alpha_m = m\lambda, \qquad m = 0, \pm1, \pm2, \ldots}$$

Jest to **podstawowy wzór siatki dyfrakcyjnej**.

**Krok 5.** Wzór praktyczny dla pomiaru laboratoryjnego:

Mierząc odległość od siatki do ekranu $L$ oraz odległość $x_m$ od prążka zerowego do prążka
$m$-tego rzędu, kąt ugięcia wyznacza się z zależności:

$$\sin\alpha_m = \frac{x_m}{\sqrt{x_m^2 + L^2}}$$

Podstawiając do wzoru siatki, długość fali:

$$\lambda = \frac{a \cdot x_m}{m\sqrt{x_m^2 + L^2}}$$

---

## Przebieg ćwiczenia laboratoryjnego

### Stanowisko i sprzęt

Na ławie optycznej ustawione są kolejno:
- **Laser DPSS** (Diode Pumped Solid State) zielony, $\lambda = 532\ \text{nm}$,
- **SD** – siatka dyfrakcyjna (500 linii/mm, stała siatki $a = 2\ \mu\text{m}$),
- **Płytka ze szczelinami** – zawiera 7 szczelin i 7 drucików o szerokościach:
  30, 40, 60, 80, 100, 150, 200 µm,
- **E** – ekran,
- **FD** – miernik mocy optycznej,
- **Miarka milimetrowa**.

---

### Część A – Wyznaczanie długości fali lasera przy pomocy siatki dyfrakcyjnej

**Co robić:**

1. Zmierzyć moc lasera miernikiem mocy (ustawić na mierniku $\lambda = 532\ \text{nm}$;
   w tym celu nacisnąć „Ctrl", wpisać wartość i zatwierdzić strzałką). Zapisać wynik $P$.
2. Ustawić **siatkę dyfrakcyjną SD** na drodze wiązki laserowej.
3. Na ekranie zaobserwować prążki dyfrakcyjne: rząd zerowy (m = 0) i rzędy boczne
   $m = \pm1$, ($m = \pm2$).
4. Zmierzyć miarką milimetrową:
   - $L$ – odległość od siatki do ekranu,
   - $x_1$ – odległość od prążka zerowego do prążka 1. rzędu ($m = 1$),
   - opcjonalnie $x_2$ – odległość do prążka 2. rzędu ($m = 2$).
5. Obliczyć kąt ugięcia dla wybranego rzędu:

$$\sin\alpha_m = \frac{x_m}{\sqrt{x_m^2 + L^2}}$$

6. Wyznaczyć długość fali:

$$\lambda = \frac{a \cdot \sin\alpha_m}{m}, \qquad a = 2\ \mu\text{m}$$

7. Obliczyć niepewność rozszerzoną (współczynnik $K = 2$):

$$u(\lambda) = \frac{x}{L}\sqrt{\left(\frac{u_x}{x}\right)^2 + \left(\frac{u_L}{L}\right)^2 + \left(\frac{\Delta a}{a}\right)^2}, \qquad U(\lambda) = K \cdot u(\lambda)$$

gdzie $u_x = \Delta x/\sqrt{3}$, $u_L = \Delta L/\sqrt{3}$ (dla pomiaru miarką milimetrową
$\Delta x = \Delta L = 0{,}5\ \text{mm}$), $\Delta a = 0{,}05\ \mu\text{m}$.

8. Podać wynik: $\lambda = \bar{\lambda} \pm U(\lambda)$ i porównać z wartością nominalną $\lambda_0 = 532\ \text{nm}$.

---

### Część B – Wyznaczanie szerokości szczeliny

**Co robić:**

1. Obliczyć **odległość Rayleigha** dla wybranej szczeliny o szerokości $a_\text{sz}$:

$$D_R = \frac{a_\text{sz}^2}{\lambda}$$

   Sprawdzić, że $L \gg D_R$ (jesteśmy w polu dalekim – dyfrakcja Fraunhofera).
2. Wstawić **płytkę ze szczelinami** na drodze wiązki i skierować wiązkę lasera
   na wybraną szczelinę (np. 80 µm).
3. Na ekranie (w odległości $L \approx 1\ \text{m}$) zaobserwować obraz dyfrakcyjny:
   jasny prążek centralny i symetryczne minima po obu stronach.
4. Zmierzyć miarką:
   - $L$ – odległość od szczeliny do ekranu,
   - $x_m$ – odległość od centrum obrazu do $m$-tego **minimum** dyfrakcyjnego
     (m = 1 i m = 2 dla każdej szczeliny).
5. Obliczyć szerokość szczeliny:

$$a_\text{sz} = \frac{m\lambda}{\sin\alpha_m} = \frac{m\lambda\sqrt{x_m^2 + L^2}}{x_m}$$

6. Obliczyć niepewność rozszerzoną:

$$u_d = d\sqrt{\left(\frac{u_x}{x}\right)^2 + \left(\frac{u_L}{L}\right)^2}, \qquad U_d = K \cdot u_d$$

7. Powtórzyć pomiar dla **co najmniej dwóch szczelin** i dla każdej zbadać **dwa rzędy** ($m = 1$ i $m = 2$).
8. Zapisać wyniki w tabeli i porównać z wartościami podanymi przez producenta.

---

### Część C – Sprawdzanie zasady Babineta

**Co robić:**

1. Wybrać szczelinę i **drucik o tej samej szerokości** (są to przeszkody komplementarne).
2. Skierować wiązkę lasera kolejno na szczelinę i na drucik (ten sam wymiar).
3. Obserwować i porównać obrazy dyfrakcyjne na ekranie.
4. Zmierzyć i zapisać położenia minimów obrazu dyfrakcyjnego dla szczeliny ($x_1, x_2, x_3$)
   i dla drucika ($x_1', x_2', x_3'$).
5. Sprawdzić: czy minima (i maksima boczne) obu obrazów pokrywają się?
6. Sformułować wniosek: **zasada Babineta** mówi, że obrazy dyfrakcyjne
   przeszkód komplementarnych są identyczne w **polu dalekim** (Fraunhofera)
   poza prążkiem centralnym; w polu bliskim (Fresnela) różnią się intensywnością
   w centrum (prążek centralny lub cień Arago).

> **Uwaga BHP:** Promieniowanie laserowe jest szkodliwe. Nie wolno zaglądać do wyjścia
> pracującego lasera ani kierować wiązki laserowej bezpośrednio na oczy.

---

### Podsumowanie – co zapisać w sprawozdaniu

| Część | Czynność | Tabela / wynik |
|-------|----------|----------------|
| A | Pomiar $L$, $x_1$ (i $x_2$) dla siatki dyfrakcyjnej | Tabela: $L$, $x_m$, $\sin\alpha_m$, $\lambda \pm U(\lambda)$ |
| B | Pomiar $x_m$ dla min. 2 szczelin, 2 rzędy każda | Tabela: $L$, $x_m$, $a_\text{sz} \pm U_d$ dla każdej szczeliny |
| C | Porównanie obrazów dyfrakcyjnych szczeliny i drucika | Tabela: położenia minimów; wniosek o zasadzie Babineta |

Dla każdej części podać wyniki z **zapisem niepewności pomiarowej**
oraz sformułować **wnioski fizyczne** dotyczące obserwowanego zjawiska dyfrakcji.

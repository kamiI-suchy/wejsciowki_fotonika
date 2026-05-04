# Wejściówka 01 – Propagacja wiązki gaussowskiej na granicy dwóch ośrodków

## Pytanie 1: Jakimi parametrami opisuje się wiązkę gaussowską (teoria, wzory, rysunek)

### Definicja wiązki gaussowskiej

Wiązka gaussowska to rozwiązanie równań Maxwella w przybliżeniu paraksjalnym, którego
profil natężenia w każdym przekroju poprzecznym ma kształt funkcji Gaussa.
Natężenie opisuje wzór:

$$I(r, z) = I_0 \left(\frac{w_0}{w(z)}\right)^2 \exp\!\left(-\frac{2r^2}{w(z)^2}\right)$$

gdzie $r$ to odległość od osi wiązki, $z$ to współrzędna wzdłuż osi.

---

### Parametry wiązki gaussowskiej

#### 1. Długość fali $\lambda$

Długość fali w ośrodku o współczynniku załamania $n$:

$$\lambda = \frac{\lambda_0}{n}$$

gdzie $\lambda_0$ to długość fali w próżni.

#### 2. Promień przewężenia $w_0$

Minimalna wartość promienia wiązki, osiągana w miejscu zwanym **przewężeniem**
(ang. *beam waist*). Przyjmuje się, że $w_0$ jest promieniem, przy którym natężenie
spada do $1/e^2$ wartości maksymalnej na osi.

#### 3. Pozycja przewężenia $z_0$ (na osi wiązki)

Współrzędna $z$, przy której promień wiązki osiąga minimum $w_0$.
Zwyczajowo przyjmuje się $z_0 = 0$ jako punkt odniesienia.

#### 4. Długość Rayleigha $z_R$

Odległość od przewężenia, przy której pole przekroju wiązki podwaja się (promień
rośnie $\sqrt{2}$ razy):

$$z_R = \frac{\pi w_0^2}{\lambda}$$

#### 5. Promień wiązki $w(z)$

Promień, przy którym natężenie spada do $1/e^2$ wartości osiowej, w funkcji
położenia wzdłuż osi:

$$w(z) = w_0 \sqrt{1 + \left(\frac{z}{z_R}\right)^2}$$

Dla dużych $z$ ($z \gg z_R$) wiązka rozchodzi się liniowo: $w(z) \approx w_0 \cdot z / z_R$.

#### 6. Promień krzywizny frontu falowego $R(z)$

$$R(z) = z \left[1 + \left(\frac{z_R}{z}\right)^2\right]$$

- Dla $z \to 0$: $R \to \infty$ (płaski front falowy w przewężeniu).
- Dla $z \to \infty$: $R \approx z$ (front sferyczny, jakby wiązka wychodziła z punktu).

#### 7. Kąt rozbieżności $\theta$

Kąt, pod jakim wiązka rozchodzi się w polu dalekim ($z \gg z_R$):

$$\theta = \frac{\lambda}{\pi w_0} = \frac{w_0}{z_R}$$

#### 8. Faza Gouya $\psi(z)$

Dodatkowe przesunięcie fazowe wiązki względem fali płaskiej o tej samej długości
fali:

$$\psi(z) = \arctan\!\left(\frac{z}{z_R}\right)$$

W przewężeniu $\psi = 0$, dla $z \to +\infty$: $\psi \to +\pi/2$.

#### 9. Zespolony parametr wiązki $q(z)$ (parametr Kogelnika)

Zawiera pełną informację geometryczną o wiązce w jednej liczbie:

$$q(z) = z - i z_R$$

Równoważna postać przez odwrotność:

$$\frac{1}{q(z)} = \frac{1}{R(z)} - i\frac{\lambda}{\pi w(z)^2}$$

Transformacja przez układ optyczny (prawo ABCD):

$$q'(z') = \frac{A\,q(z) + B}{C\,q(z) + D}$$

#### 10. Niezmiennik wiązki gaussowskiej

Iloczyn promienia przewężenia i kąta rozbieżności jest stały (niezależny od układu
optycznego):

$$w_0 \cdot \theta = \frac{\lambda}{\pi}$$

---

### Rysunek

```
          promień wiązki w(z)
               │
     w0·√2 ────┤- - - - - -╮          ╭- - - - -
               │            \        /
        w0 ────┤             \      /
               │              ╲    ╱    θ (kąt rozbieżności)
     ──────────┼───────────────╳───────────────────→  z (oś)
               │              ╱    ╲
        w0 ────┤             /      \
               │            /        \
     w0·√2 ────┤- - - - - -╯          ╰- - - - -
               │
              z=0           z=zR
           (przewężenie)
```

W przewężeniu ($z = 0$):
- promień wiązki minimalny: $w = w_0$,
- front falowy płaski: $R \to \infty$.

W odległości Rayleigha ($z = z_R$):
- promień wiązki: $w = w_0\sqrt{2}$,
- promień krzywizny frontu: $R = 2 z_R$ (minimalna wartość krzywizny).

---

## Pytanie 2: Co to jest ogniskowa?

### Definicja

**Ogniskowa** $f$ to odległość między środkiem optycznym elementu skupiającego
(soczewki, zwierciadła, powierzchni załamującej) a jego **ogniskiem** – punktem,
w którym skupiają się promienie biegnące równolegle do osi optycznej po przejściu
przez ten element.

### Moc optyczna (zdolność skupiająca)

Odwrotność ogniskowej nosi nazwę mocy optycznej:

$$D = \frac{1}{f} \qquad [\text{m}^{-1} = \text{dioptria, D}]$$

### Ogniskowa soczewki cienkiej (równanie szlifierzy soczewek)

$$\frac{1}{f} = (n - 1)\left(\frac{1}{R_1} - \frac{1}{R_2}\right)$$

gdzie $n$ – współczynnik załamania materiału soczewki (w otoczeniu powietrznym),
$R_1$, $R_2$ – promienie krzywizn obu powierzchni (z konwencją znakową: promień
dodatni gdy środek krzywizny leży po stronie wychodzącego światła).

### Równanie soczewki cienkiej

$$\frac{1}{f} = \frac{1}{a} + \frac{1}{b}$$

- $a$ – odległość przedmiotu od soczewki ($a > 0$),
- $b$ – odległość obrazu od soczewki ($b > 0$ obraz rzeczywisty, $b < 0$ pozorny).

### Ogniskowa sferycznej powierzchni załamującej

Dla pojedynczej sferycznej granicy między ośrodkami $n_1$ i $n_2$ o promieniu krzywizny
$R_S$ moc optyczna wynosi:

$$D = \frac{n_2 - n_1}{R_S}$$

Ogniskowa (po stronie obrazu, w ośrodku $n_2$):

$$f = \frac{n_2}{D} = \frac{n_2 R_S}{n_2 - n_1}$$

### Ogniskowa a wiązka gaussowska

Dla wiązki gaussowskiej padającej na cienką soczewkę o ogniskowej $f$:

- jeśli przewężenie wiązki wejściowej leży w odległości $d$ przed soczewką, to
  przewężenie wiązki wyjściowej leży w odległości $d'$ za soczewką zgodnie z
  równaniem soczewkowym,
- ale ze względu na niezmiennik $w_0 \theta = \lambda/\pi$, nowe przewężenie $w_0'$
  jest zmodyfikowane w sposób charakterystyczny dla optyki gaussowskiej (w
  ogólności $d', w_0'$ różnią się od wyniku geometryczno-optycznego o poprawki
  wynikające z długości Rayleigha $z_R$).

---

## Przebieg laboratorium – co robić krok po kroku

### Co przedstawia symulacja

Program `Granica_osrodkow.m` rysuje **fronty falowe** (okręgi) wiązki gaussowskiej
przed i za sferyczną granicą dwóch ośrodków:

| Kolor | Znaczenie |
|-------|-----------|
| **Czerwony** | Fronty falowe w ośrodku 1 (przed granicą), promień krzywizny $R_1$ |
| **Zielony** | Sferyczna powierzchnia graniczna, promień krzywizny $R_S$ |
| **Niebieski** | Fronty falowe w ośrodku 2 (za granicą), promień krzywizny $R_2$ |
| **Fioletowa przerywana** | Oś optyczna |

Kolejne fronty są oddalone od siebie o jedną długość fali ($\lambda$ w ośrodku 1,
$\lambda/n$ w ośrodku 2).

Parametry w kodzie:

| Zmienna | Znaczenie | Wartość domyślna |
|---------|-----------|-----------------|
| `lambda` | Długość fali | 1.0 |
| `n` | Współczynnik załamania ośrodka 2 (ośrodek 1 ma $n_1 = 1$) | 5 |
| `Rs` | Promień krzywizny powierzchni granicznej | 4 |
| `R1` | Promień krzywizny frontu falowego przed granicą (ujemny = fala zbieżna) | −4 |

Promień krzywizny za granicą obliczany jest ze wzoru (3) z instrukcji:
$$R_2 = \frac{n \cdot R_1}{1 + D \cdot R_1}, \qquad D = \frac{n-1}{R_S}$$

---

### Krok 1 – uruchomienie symulacji domyślnej

1. Otwórz MATLAB i uruchom plik `Granica_osrodkow.m`.
2. Sprawdź, czy wykres wygląda jak na rysunku z instrukcji (czerwone okręgi po
   lewej, zielona granica, niebieskie okręgi po prawej).

---

### Krok 2 – seria symulacji ze zmienną $\lambda$ (pozostałe parametry stałe)

Ustaw `n = 5`, `R1 = -4`, `Rs = 4` i zmieniaj tylko `lambda`:

| `lambda` |
|----------|
| 0.50 |
| 0.75 |
| **1.00** (domyślna) |
| 1.25 |
| 1.50 |

**Co obserwować:** Jak zmienia się gęstość (odstęp) frontów falowych po obu
stronach granicy? Czy kształt (krzywizna) frontów się zmienia?

**Wniosek:** Zwiększenie $\lambda$ zwiększa odstęp między kolejnymi frontami
falowymi proporcjonalnie (zarówno w ośrodku 1, jak i w ośrodku 2 – tam o $\lambda/n$).
Kształt frontów (ich krzywizna $R_1$, $R_2$) nie zależy od $\lambda$, bo $R_2$
zależy tylko od $n$, $R_1$, $R_S$.

---

### Krok 3 – seria symulacji ze zmiennym $n$ (pozostałe parametry stałe)

Ustaw `lambda = 1.0`, `R1 = -4`, `Rs = 4` i zmieniaj tylko `n`:

| `n` |
|-----|
| 1.00 |
| 3.00 |
| **3.50** (domyślna wg instrukcji) |
| 4.25 |
| 5.50 |

**Co obserwować:** Jak zmienia się $R_2$ (krzywizna frontów w ośrodku 2)?
Jak zmienia się odstęp między frontami w ośrodku 2?

**Wniosek:** Większy $n$ → większa moc optyczna $D = (n-1)/R_S$ → silniejsze
skupianie frontu fali za granicą (mniejszy, bardziej zbieżny $R_2$). Odstęp
między frontami w ośrodku 2 maleje ($\lambda/n$ maleje), co odpowiada
krótszej długości fali w gęstszym ośrodku.

---

### Krok 4 – seria symulacji ze zmiennym $R_1$ (pozostałe parametry stałe)

Ustaw `lambda = 1.0`, `n = 5`, `Rs = 4` i zmieniaj tylko `R1`:

| `R1` |
|------|
| −8 |
| −6 |
| **−4** (domyślna) |
| −2 |
| −1 |

**Co obserwować:** Jak zmienia się krzywizna frontów wejściowych (czerwonych)?
Jak zmienia się krzywizna frontów wyjściowych (niebieskich)?

**Wniosek:** Mniejszy $|R_1|$ oznacza bardziej zakrzywiony (silniej zbieżny) front
fali wejściowej. Zgodnie ze wzorem $R_2 = n R_1 / (1 + D R_1)$: im bliżej
przewężenia (mały $|R_1|$), tym silniej zmienia się krzywizna za granicą.
Gdy $|R_1| \to 0$, fala wchodzi niemal w przewężeniu – $R_2$ przybiera
skrajne wartości.

---

### Krok 5 – seria symulacji ze zmiennym $R_S$ (pozostałe parametry stałe)

Ustaw `lambda = 1.0`, `n = 5`, `R1 = -4` i zmieniaj tylko `Rs`:

| `Rs` |
|------|
| 8 |
| 6 |
| **4** (domyślna) |
| 2 |
| 1 |

**Co obserwować:** Jak zmienia się kształt zielonej granicy? Jak to wpływa
na fronty po prawej stronie?

**Wniosek:** Mniejszy $R_S$ → bardziej wygięta (silniej skupiająca) powierzchnia
graniczna → większa moc optyczna $D = (n-1)/R_S$ → silniejsze zagięcie
frontów falowych w ośrodku 2 (mniejszy, bardziej zbieżny $R_2$).

---

### Krok 6 – pytanie podsumowujące (do sprawozdania)

> **Jak zachowuje się front fali przy przejściu z jednego ośrodka do drugiego,
> gdy granica między nimi jest sferyczna?**

Przy przejściu sferycznego frontu falowego przez sferyczną granicę dwóch ośrodków
($n_1 \to n_2$) krzywizna frontu zmienia się według wzoru:

$$\frac{n_2}{R_2} = \frac{n_1}{R_1} + \frac{n_2 - n_1}{R_S}$$

- Płaska granica ($R_S \to \infty$, $D = 0$): krzywizna nie zmienia się ($R_2 = R_1$),
  zmienia się tylko gęstość frontów (długość fali w ośrodku 2 wynosi $\lambda/n_2$).
- Wypukła granica skupiająca ($D > 0$): front fali staje się bardziej zbieżny za
  granicą – wiązka jest skupiana.
- Wypukła granica rozpraszająca ($D < 0$): front fali staje się bardziej rozbieżny.
- W każdym przypadku **odstęp między kolejnymi frontami** zmienia się ze
  $\lambda/n_1$ na $\lambda/n_2$, czyli w gęstszym ośrodku fronty są gęściej upakowane.

---

### Co zawrzeć w sprawozdaniu (sekcja 6 instrukcji)

1. **Strona tytułowa** – nazwa ćwiczenia, przedmiot, data, skład zespołu,
   prowadzący, miejsce na podpis.
2. **Krótki wstęp teoretyczny** – parametry wiązki gaussowskiej, prawo ABCD,
   wzór na transformację krzywizny frontu przy przejściu przez sferyczną granicę.
3. **Wykresy z symulacji** – po jednym reprezentatywnym wykresie dla każdej
   serii (zmiany $\lambda$, $n$, $R_1$, $R_S$), najlepiej jako porównanie skrajnych
   wartości parametru.
4. **Wnioski** – jak każdy parametr wpływa na kształt i gęstość frontów falowych
   (patrz kroki 2–5 powyżej) oraz odpowiedź na pytanie podsumowujące (krok 6).

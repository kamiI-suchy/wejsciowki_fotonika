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

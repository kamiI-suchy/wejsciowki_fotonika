# Wejściówka 03 – Propagacja światła w falowodzie planarnym

## Pytanie 1: Co to jest współczynnik załamania światła w materiale?

### Definicja

**Współczynnik załamania** $n$ (bezwzględny) to stosunek prędkości światła w próżni
$c$ do prędkości fazowej światła $v$ w danym ośrodku:

$$n = \frac{c}{v}$$

Jest to wielkość bezwymiarowa, $n \geq 1$ dla ośrodków materialnych.

### Interpretacja fizyczna

| Wielkość | Zależność | Znaczenie |
|----------|-----------|-----------|
| Prędkość fazowa | $v = c/n$ | W ośrodku światło zwalnia |
| Długość fali w ośrodku | $\lambda = \lambda_0 / n$ | Fala ulega skróceniu |
| Liczba falowa | $k = 2\pi n / \lambda_0 = n k_0$ | Zwiększa się proporcjonalnie do $n$ |
| Stała dielektryczna | $\varepsilon = n^2$ | Dla dielektryków ($\mu \approx 1$) |

### Zależność od długości fali – dyspersja

$$n = n(\lambda)$$

W typowych materiałach optycznych $n$ maleje ze wzrostem $\lambda$ (dyspersja normalna).
Opisuje się to m.in. wzorem Sellmeiera:

$$n^2(\lambda) = 1 + \sum_{i} \frac{B_i \lambda^2}{\lambda^2 - C_i}$$

### Przykładowe wartości

| Materiał | $n$ (dla $\lambda \approx 589$ nm) |
|----------|-------------------------------------|
| Próżnia | 1.0000 |
| Powietrze | 1.0003 |
| Woda | 1.33 |
| Szkło BK7 | 1.52 |
| Półprzewodnik (GaAs) | ~3.5 |

### Znaczenie w falowodzie planarnym

W falowodzie planarnym mamy trzy obszary o różnych współczynnikach załamania:

| Warstwa | Oznaczenie | Warunek |
|---------|------------|---------|
| Rdzeń (prowadząca) | $n_f$ | $n_f > n_s$ i $n_f > n_c$ |
| Podłoże | $n_s$ | — |
| Pokrycie | $n_c$ | — |

Różnica $n_f - n_s$ decyduje o sile prowadzenia fali.

---

## Pytanie 2: Jak zachowuje się fala przy przejściu przez granicę ośrodków o różnych współczynnikach załamania?

### Prawo załamania (Snella)

Gdy światło pada na granicę dwóch ośrodków o współczynnikach $n_1$ i $n_2$,
część energii ulega odbiciu, a część przechodzi do drugiego ośrodka, zmieniając
kierunek:

$$n_1 \sin\theta_1 = n_2 \sin\theta_2$$

gdzie $\theta_1$ to kąt padania, $\theta_2$ to kąt załamania (oba mierzone
względem normalnej do powierzchni).

### Zachowanie przy przejściu do gęstszego ośrodka ($n_1 < n_2$)

- Promień załamany **odchyla się ku normalnej** ($\theta_2 < \theta_1$)
- Długość fali maleje: $\lambda_2 = \lambda_1 \cdot n_1/n_2$
- Prędkość fazowa maleje: $v_2 = c/n_2$
- Częstotliwość $\nu$ pozostaje stała (wynika z zachowania energii)

### Zachowanie przy przejściu do rzadszego ośrodka ($n_1 > n_2$)

- Promień załamany **odchyla się od normalnej** ($\theta_2 > \theta_1$)
- Istnieje kąt graniczny $\theta_{gr}$, powyżej którego zachodzi całkowite
  wewnętrzne odbicie
- Długość fali i prędkość fazowa rosną

### Wzory Fresnela – amplitudowe współczynniki odbicia i transmisji

Dla fali spolaryzowanej **prostopadle do płaszczyzny padania** (TE, s-pol):

$$r_s = \frac{n_1 \cos\theta_1 - n_2 \cos\theta_2}{n_1 \cos\theta_1 + n_2 \cos\theta_2}$$

$$t_s = \frac{2 n_1 \cos\theta_1}{n_1 \cos\theta_1 + n_2 \cos\theta_2}$$

Dla fali spolaryzowanej **równolegle do płaszczyzny padania** (TM, p-pol):

$$r_p = \frac{n_2 \cos\theta_1 - n_1 \cos\theta_2}{n_2 \cos\theta_1 + n_1 \cos\theta_2}$$

$$t_p = \frac{2 n_1 \cos\theta_1}{n_2 \cos\theta_1 + n_1 \cos\theta_2}$$

### Współczynniki natężeniowe (mocy)

$$R = |r|^2, \qquad T = \frac{n_2 \cos\theta_2}{n_1 \cos\theta_1} |t|^2$$

Dla padania normalnego ($\theta_1 = \theta_2 = 0$):

$$R = \left( \frac{n_1 - n_2}{n_1 + n_2} \right)^2, \qquad T = 1 - R$$

### Podsumowanie

| Efekt | Opis |
|-------|------|
| Załamanie (refrakcja) | Zmiana kierunku rozchodzenia się fali na granicy |
| Odbicie (refleksja) | Powrót części energii do ośrodka 1 |
| Transmisja | Przejście części energii do ośrodka 2 |
| Dyspersja kątowa | Różne $\lambda$ załamują się pod różnymi kątami ($n(\lambda)$) |

---

## Pytanie 3: Co to jest całkowite wewnętrzne odbicie i kiedy zachodzi?

### Definicja

**Całkowite wewnętrzne odbicie** (ang. *Total Internal Reflection*, TIR) to
zjawisko, w którym światło padające na granicę dwóch ośrodków od strony ośrodka
gęstszego optycznie ($n_1 > n_2$) pod kątem większym niż kąt graniczny **nie
przechodzi** do drugiego ośrodka, lecz w całości ulega odbiciu.

### Warunki konieczne

1. Światło musi padać od strony ośrodka o **większym** współczynniku załamania:
   $$n_1 > n_2$$

2. Kąt padania musi być **większy od kąta granicznego**:
   $$\theta_1 > \theta_{gr}$$

### Kąt graniczny

Z prawa Snella dla $\theta_2 = 90^\circ$:

$$\theta_{gr} = \arcsin\!\left(\frac{n_2}{n_1}\right)$$

Dla kątów $\theta_1 > \theta_{gr}$ równanie Snella nie ma rozwiązania
rzeczywistego dla $\theta_2$ — formalnie $\sin\theta_2 > 1$, co oznacza, że
w drugim ośrodku istnieje tylko **fala zanikająca (ewanescentna)**.

### Fala zanikająca (ewanescentna)

Nawet przy TIR pole elektromagnetyczne wnika do ośrodka 2 na głębokość rzędu
długości fali. Amplituda pola zanika wykładniczo:

$$E(x) = E_0 \cdot e^{-\alpha x}, \qquad \alpha = \frac{2\pi}{\lambda_0} \sqrt{n_1^2 \sin^2\theta_1 - n_2^2}$$

Głębokość wnikania (odległość, przy której amplituda maleje $e$ razy):

$$d_p = \frac{1}{\alpha} = \frac{\lambda_0}{2\pi\sqrt{n_1^2\sin^2\theta_1 - n_2^2}}$$

### Zastosowania w falowodzie planarnym

Całkowite wewnętrzne odbicie jest podstawowym mechanizmem prowadzenia światła
w falowodzie planarnym:

```
   n_c (pokrycie)
  ──────────────────────  granica górna → TIR
   n_f (rdzeń)           fala odbija się naprzemiennie od obu granic
  ──────────────────────  granica dolna → TIR
   n_s (podłoże)
```

W praktyce w falowodzie rozpatruje się mody prowadzone, czyli takie rozkłady
pola, które są wynikiem interferencji fal wielokrotnie odbitych. Warunek na
mod prowadzony wymaga, aby kąt odbicia spełniał warunek zgodności fazowej
(wzmocnienie konstruktywne po pełnym cyklu zygzakowym).

### Przykładowe wartości

| Granica | $n_1$ | $n_2$ | $\theta_{gr}$ |
|---------|-------|-------|---------------|
| Szkło–powietrze | 1.5 | 1.0 | $\approx 41.8^\circ$ |
| Woda–powietrze | 1.33 | 1.0 | $\approx 48.8^\circ$ |
| Szkło–woda | 1.5 | 1.33 | $\approx 62.5^\circ$ |
| Diament–powietrze | 2.42 | 1.0 | $\approx 24.4^\circ$ |

---

## Związek z falowodem planarnym – podsumowanie

W falowodzie planarnym światło jest prowadzone dzięki całkowitemu wewnętrznemu
odbiciu na granicach rdzeń–podłoże i rdzeń–pokrycie. Różnica współczynników
załamania między rdzeniem a otoczeniem decyduje o:

| Parametr | Zależność |
|----------|-----------|
| Apertura numeryczna NA | $\text{NA} = \sqrt{n_f^2 - n_s^2}$ |
| Maksymalny kąt akceptacji | $\theta_a = \arcsin(\text{NA})$ |
| Kąt graniczny | $\theta_{gr} = \arcsin(n_s/n_f)$ |
| Liczba modów prowadzonych | Rośnie z NA i $h/\lambda$ |
| Głębokość wnikania fali zanikającej | Maleje ze wzrostem $n_f - n_s$ |

---

## Co zawrzeć w sprawozdaniu

1. **Strona tytułowa** — nazwa ćwiczenia, przedmiot, data, skład zespołu,
   prowadzący, miejsce na podpis
2. **Krótki wstęp teoretyczny** — współczynnik załamania (definicja, dyspersja),
   prawo Snella, całkowite wewnętrzne odbicie (kąt graniczny, fala zanikająca)
3. **Opis falowodu planarnego** — struktura trójwarstwowa, warunek prowadzenia,
   mechanizm TIR jako podstawa działania
4. **Wnioski** — rola kontrastu współczynnika załamania w projektowaniu
   falowodów, znaczenie TIR dla prowadzenia fali

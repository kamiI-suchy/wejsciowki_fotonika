# Wejściówka 02 – Propagacja wiązki gaussowskiej przez soczewkę

## Pytanie 1: Jakie są rodzaje soczewek?

Soczewki można klasyfikować na kilka sposobów.

### 1) Ze względu na działanie optyczne

- **Soczewki skupiające** (dodatnie, $f>0$): równoległa wiązka po przejściu przez soczewkę zbiega się do ogniska.
- **Soczewki rozpraszające** (ujemne, $f<0$): równoległa wiązka po przejściu staje się bardziej rozbieżna (ognisko pozorne).

### 2) Ze względu na kształt powierzchni

**Skupiające**:
- dwuwypukła,
- płasko-wypukła,
- wklęsło-wypukła (menisk dodatni).

**Rozpraszające**:
- dwuwklęsła,
- płasko-wklęsła,
- wypukło-wklęsła (menisk ujemny).

### 3) Ze względu na grubość modelu

- **Soczewka cienka** – grubość pomijana, opis uproszczony równaniem soczewki.
- **Soczewka gruba** – trzeba uwzględnić odległość między powierzchniami i płaszczyzny główne.

---

## Pytanie 2: Równanie soczewki (wzór, opis słowny)

### Równanie soczewki cienkiej (optyka geometryczna)

$$\frac{1}{f}=\frac{1}{a}+\frac{1}{b}$$

- $f$ – ogniskowa,
- $a$ – odległość przedmiotu od soczewki,
- $b$ – odległość obrazu od soczewki.

**Opis słowny:** odwrotność ogniskowej jest sumą odwrotności odległości przedmiotu i obrazu.

### Równanie szlifierzy soczewek (dla soczewki w powietrzu)

$$\frac{1}{f}=(n-1)\left(\frac{1}{R_1}-\frac{1}{R_2}\right)$$

- $n$ – współczynnik załamania materiału,
- $R_1, R_2$ – promienie krzywizny powierzchni soczewki.

### Dla wiązki gaussowskiej (metoda parametru zespolonego)

Parametr wiązki transformuje się przez macierz ABCD:

$$q_{wy}=\frac{Aq_{we}+B}{Cq_{we}+D}$$

Dla cienkiej soczewki:

$$
\begin{bmatrix}A&B\\C&D\end{bmatrix}=
\begin{bmatrix}1&0\\-1/f&1\end{bmatrix}
$$

Równoważnie (w konwencji z instrukcji):

$$\frac{1}{R'}=\frac{1}{R}+\left(\frac{1}{R_{S1}}-\frac{1}{R_{S2}}\right)(n-1)$$

a dla fali płaskiej na wejściu ($R=\infty$):

$$\frac{1}{f}=\left(\frac{1}{R_{S1}}-\frac{1}{R_{S2}}\right)(n-1)$$

---

## Przebieg ćwiczenia – co zrobić krok po kroku

Program: `Gauss_soczewka_skupiajaca.m`

1. Uruchomić skrypt z parametrami domyślnymi i sprawdzić wykres wiązki przed/za soczewką.
2. Zmieniać **promień przewężenia wejściowego** `w10` (przy stałych `f=75`, `d1=400`) i notować:
   - $w_{wy}$,
   - $d_2$,
   - $h_2=d_2-f$.
3. Zmieniać **ogniskową** `f` (przy stałych `w10=0{,}25`, `d1=400`) i notować te same wielkości.
4. Zmieniać **odległość przewężenia od soczewki** `d1` (przy stałych `w10=0{,}25`, `f=75`) i notować te same wielkości.
5. Dla każdego przypadku obliczyć kąt rozbieżności wiązki wyjściowej:

$$\theta_{wy}=\frac{\lambda}{\pi w_{wy}}$$

6. Przygotować wykresy i wnioski z trendów.

---

## Pytania podsumowujące

### 1) Jak zmiana parametrów wiązki gaussowskiej i jej położenia względem soczewki wpływa na wiązkę wyjściową?

- Zmiana **$w_{10}$** zmienia zasięg Rayleigha i rozbieżność wejściową, więc wpływa na nowe przewężenie $w_{wy}$ oraz $\theta_{wy}$.
- Zmiana **$f$** zmienia moc optyczną soczewki ($1/f$), a więc położenie nowego przewężenia $d_2$ i jego rozmiar.
- Zmiana **$d_1$** (położenia przewężenia względem soczewki) decyduje, czy wiązka pada na soczewkę bardziej zbieżna/rozbieżna i przesuwa pozycję przewężenia wyjściowego.
- W praktyce: im mniejsze przewężenie na wyjściu, tym większa rozbieżność ($w_{wy}\,\theta_{wy}=\lambda/\pi$).

### 2) W jaki sposób oblicza się parametry wiązki przy przejściu przez układ optyczny?

Najwygodniej metodą **ABCD + parametr $q$**:

1. Z parametru wejściowego (np. $q_{we}=d_1-i z_{R1}$) i macierzy elementu wyznacza się $q_{wy}$.
2. Z $q_{wy}$ odczytuje się położenie nowego przewężenia i nowy zasięg Rayleigha.
3. Następnie liczy się:
   - $w_{wy}$,
   - $d_2$,
   - $\theta_{wy}=\lambda/(\pi w_{wy})$,
   - ewentualnie $h_2=d_2-f$.

W badanym skrypcie te zależności są już zapisane jawnie:

$$w_{wy}=\sqrt{\frac{f^2 w_{10}^2}{(f-d_1)^2+z_{R1}^2}}$$

$$d_2=f+\frac{f^2(d_1-f)}{(f-d_1)^2+z_{R1}^2}$$

---

## Co zawrzeć w sprawozdaniu

1. Strona tytułowa (nazwa ćwiczenia, przedmiot, data, skład zespołu, prowadzący, miejsce na podpis).
2. Krótki wstęp teoretyczny (wiązka gaussowska, soczewka cienka, metoda ABCD).
3. Tabele pomiarowe dla serii zmian: `w10`, `f`, `d1`.
4. Wykresy wyników i przykładowe wykresy z symulacji MATLAB.
5. Wnioski z odpowiedziami na pytania podsumowujące.

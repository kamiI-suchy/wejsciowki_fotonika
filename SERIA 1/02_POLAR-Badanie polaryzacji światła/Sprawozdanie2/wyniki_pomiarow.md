# Wzory z pliku 02_POLAR_Badanie_polaryzacji_światła.pdf
$n = \frac{\sin\alpha}{\sin\beta} = \frac{\sin\alpha}{\sin(90^{\circ} - \alpha)} = \frac{\sin\alpha}{\cos\alpha} = \tan\alpha$

$n = \tan{\theta_{\mathrm{Br}}}$

# Cały plik 02_POLAR_polaryzacja_TABELA.pdf w postaci Markdown wraz z uzupełnionymi tabelami o pomiary

$\text{Wyznaczanie współczynnika załamania płytki kwarcowej metodą pomiaru kąta Brewstera i badanie stosu polaryzacyjnego}$

$\text{1. Określanie wartości współczynnika załamania płytki kwarcowej}$

$\text{Wartość n wyznaczamy korzystając ze wzoru } n = \tan\alpha \text{, gdzie } \alpha \text{ oznacza kąt Brewstera. Niepewność pomiaru współczynnika załamania wyznaczamy korzystając z różniczki funkcji } \Delta n = |dn/d\alpha|\Delta\alpha = (1/\cos^2\bar{\alpha})\Delta\alpha \text{, a stosując oznaczenia dla niepewności standardowych } u(n) = \Delta u, u(\alpha) = \Delta\alpha \text{ wzór zapisujemy } u(n) = (1/\cos^2\bar{\alpha})u(\alpha) \text{. Niepewność dla kąta } \alpha \text{ musi być podana w radianach ! (wielkość bezwymiarowa).}$

$\text{Niepewności systematyczne i przypadkowe}$

| $\alpha$ | $\alpha_{\text{śr}}$ [°] | $u_A(\alpha)$ | $\Delta\alpha$ [rad] | $u_B(\alpha) = \frac{\Delta\alpha}{\sqrt{3}}$ [rad] | $u(\alpha)$ | $n = \tan\alpha_{\text{śr}}$ | $u(n)$ | $U(n)$ |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| $\alpha_1 = 57^{\circ}$ <br> $\alpha_2 = 57^{\circ}$ <br> $\alpha_3 = 56,1^{\circ}$ <br> $\alpha_4 = 56,8^{\circ}$ <br> $\alpha_5 = 56^{\circ}$ | | | | | | | | |

$\text{Ocena typu A (błędy przypadkowe): } u_A{(\alpha)} = \sqrt{\frac{\sum_{j}(\alpha_j-\bar{\alpha})^2}{N(N-1)}}$

$\text{Ocena typu B: błąd systematyczny związany z niepewnością znajdowania minimum natężenia światła i wielkością działki skali na stoliku } \Delta\alpha = \dots \text{ przekształcamy na niepewność standardową } u_B(\alpha) = \frac{\Delta\alpha}{\sqrt{3}}$

$\text{Niepewność całkowita } u(\alpha) = \sqrt{u_A^2 + u_B^2} \text{, stąd } u(n) = \dots$

$\text{Obliczyć niepewność rozszerzoną } U(n) = K \cdot u(n)$

$\text{Wynik końcowy: } n = \dots$

$\text{Otrzymaną wartość n porównać z wartością n dla kwarcu krystalicznego (n = 1,54) lub szkła kwarcowego (1,47) przy } \lambda \text{ 0,6 } \mu \text{m (laser He-Ne.)}$

$\text{Sformułować wniosek odnośnie materiału płytki.}$

$\text{2. Stos płytek - badanie skuteczności układu płytek jako polaryzatora}$

$\text{Metodą jak z punktu 1 ustawić stos (15 szkiełek mikroskopowych) pod kątem Brewstera. Wstawić polaryzator i sprawdzić jak spolaryzowana jest wiązka odbita (pionowo czy poziomo). Za stosem ustawiamy polaryzator, za nim detektor do pomiaru natężenia światła. Dokonujemy pomiaru mocy optycznej, przy orientacji pionowej i poziomej polaryzatora. Wynik zapisać w tabeli. Uwaga: jeżeli z powodu niedostatecznej czułości miernika wskaże on zero, to zapisujemy} P < 0{,}01\ \text{mW}$

$\text{Stos płytek szklanych jako polaryzator}$

<table>
    <tr>
        <td>Polaryzacja pionowa wiązki</td>
        <td>Polaryzacja pozioma wiązki</td>
    </tr>
    <tr>
        <td colspan="2">Pomiar natężenia światła miernikiem</td>
    </tr>
    <tr>
        <td>P (pionowa) = 0,03</td>
        <td>P (pozioma) = 0,32</td>
    </tr>
</table>

$\text{Oszacować dynamikę polaryzatora } \eta = P(max)/P(min) \text{ i wyrazić w decybelach}$
#!/usr/bin/env python3
import math
import matplotlib.pyplot as plt

n = [0, 1, 2, 3, 4, 5, 6]
C = [0.02 * i for i in n]
p_avg = [1.0, 0.6061012377, 0.3539246800, 0.2171770866, 0.1269438274, 0.0912593886, 0.0716333439]

# Dopasowanie wykładnicze przez liniaryzację ln(p)=a*C+b
x = C
y = [math.log(v) for v in p_avg]
mx = sum(x) / len(x)
my = sum(y) / len(y)
Sxx = sum((xi - mx) ** 2 for xi in x)
Sxy = sum((xi - mx) * (yi - my) for xi, yi in zip(x, y))
a = Sxy / Sxx
b = my - a * mx

A = math.exp(b)
beta = -a

xfit = [i / 1000 for i in range(0, 121)]
yfit_exp = [A * math.exp(-beta * xi) for xi in xfit]
yfit_lin = [a * xi + b for xi in xfit]

# Wykres 1: transmitancja
plt.figure(figsize=(8, 5))
plt.scatter(C, p_avg, color='navy', label='Dane pomiarowe')
plt.plot(xfit, yfit_exp, color='crimson', label=f'Dopasowanie: p=A·exp(-βC)\nA={A:.4f}, β={beta:.2f}')
plt.xlabel('Stężenie objętościowe C [-]')
plt.ylabel('Transmitancja p = P/P0 [-]')
plt.title('Transmitancja w funkcji stężenia')
plt.grid(True, alpha=0.25)
plt.legend()
plt.tight_layout()
plt.savefig('wykres_transmitancja.png', dpi=220)
plt.close()

# Wykres 2: liniaryzacja
plt.figure(figsize=(8, 5))
plt.scatter(C, y, color='darkgreen', label='Dane: ln(p)')
plt.plot(xfit, yfit_lin, color='black', label=f'Dopasowanie liniowe\nk={a:.2f}, b0={b:.3f}')
plt.xlabel('Stężenie objętościowe C [-]')
plt.ylabel('ln(p) [-]')
plt.title('Liniaryzacja prawa Lamberta-Beera')
plt.grid(True, alpha=0.25)
plt.legend()
plt.tight_layout()
plt.savefig('wykres_logarytm.png', dpi=220)
plt.close()

print('Wygenerowano: wykres_transmitancja.png, wykres_logarytm.png')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%               Propagacja œwiat³a w oœrodku jednorodnym                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc; clear all; close all;
i=sqrt(-1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                      Parametry badanego falowodu                      %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ns     = 3.4;                %wspó³czynnik za³amania oœrodka
LL     = 600e-6;             %szerokoœæ okna obliczeniowego (kierunek "x") 
ZZ     = 0.005;              %d³ugoœæ okna obliczeniowego   (kierunek "z")
lambda = 633e-9;             %d³ugoœæ fali
xc     = 300e-6;             %po³o¿enie œrodka wi¹zki wejœciowej  
wp     = 2e-6;              %œrednica wi¹zki wejœciowej (wi¹zka Gaussa)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                Rozdzielczoœæ siatki obliczeniowej                     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N      = 1024;             %liczba próbek w kierunku poprzecznym (kier."x")
M      = 1200;             %liczba kroków w kierunku propagacji (kier. "z")
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


k    = 2*pi/lambda;             
dz   = ZZ/M;                   
dx   = LL/N;                   
dw   = 2*pi/(N*dx);            
Xr   = dx:dx:LL;
Zr   = dz:dz:ZZ; 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%             Poprzeczny rozk³ad pola wi¹zki wejœciowej                 %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
y = exp(-(2*(Xr-xc)./wp).^2);                 %Rozk³ad funkcji wejœciowej
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


D = 1;
dzielnik = 5;

for n=1:(N/2)
w(n) = (n-1).*dw; 
end
for n=(N/2+1):N
w(n) = ((n-1)-N).*dw; 
end

A = y;

for j=1:M
ON = 0;                                  
A = A.*exp(-i*dz*ON);
Y = fft(A);
FOL = (w.^2)/(2*ns*k) ;                   
YY = ifft(exp(-i*dz*FOL).*Y);
A  = YY;
if D == dzielnik;
Out(j/D,:)=abs(A).^2;                      
ZZr(j/D) = dz*j; 
D = 0;
end
D=D+1;
end

Opis_y=0.9*max(abs(YY).^2);

figure(1);
area(Xr,abs(y).^2,'FaceColor',[.9 .85 .45])
set(gca,'Layer','top')
grid on;
xlim([(0+LL/2.5)  (LL-LL/2.5)]);
xlabel('Wymiar poprzeczny [m]');
ylabel('Natezenie swiatla [j.w.]');
title('Rozklad wiazki wejsciowej'); 

figure(2);
plot(Xr,abs(YY).^2,'r');
grid on;
xlim([0 LL]);
xlabel('Wymiar poprzeczny [m]');
ylabel('Natezenie swiatla [j.w.]');
title('Rozklad wiazki wyjsciowej'); 

figure(3);
mesh(Xr,ZZr,Out);
colormap jet;
shading interp;
grid on;
view (0,90);
xlim([0 LL]);
%ylim([min(Zr) max(Zr)])
xlabel('Wymiar poprzeczny [m]');
ylabel('Kierunek propagacji [m]');
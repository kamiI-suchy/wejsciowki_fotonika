%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%          Propagacja œwiat³a w falowodzie symetrycznym              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc; clear all; close all;
i=sqrt(-1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                      Parametry badanego falowodu                      %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ns     = 3.27;               %wspó³czynnik za³amania pod³o¿a
nf     = 3.28;               %wspó³czynnik za³amania warstwy prowadz¹cej 
nc     = 3.27;               %wspó³czynnik za³amania pokrycia
LL     = 100e-6;             %szerokoœæ okna obliczeniowego (kierunek "x") 
ZZ     = 0.01;               %d³ugoœæ okna obliczeniowego   (kierunek "z")
Szer   = 4e-6;               %szerokoœæ kana³u falowodowego
xk1    = 50e-6;              %po³ozenie œrodka kana³u falowodowego
lambda = 1500e-9;            %d³ugoœæ fali
xc     = 50e-6;              %po³o¿enie œrodka wi¹zki wejœciowej  
wp     = 5e-6;               %œrednica wi¹zki wejœciowej (wi¹zka Gaussa)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                Rozdzielczoœæ siatki obliczeniowej                     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N      = 1024;             %liczba próbek w kierunku poprzecznym (kier."x")
M      = 3200;             %liczba kroków w kierunku propagacji (kier. "z")
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


k    = 2*pi/lambda;           
dz   = ZZ/M;                   
dx   = LL/N;                   
dw   = 2*pi/(N*dx);            
Sz   = round(Szer./dx);   
Xk1  = round(xk1./dx);
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
for m = 1:(N)
Profil(m) =  0;
end
for m = (Xk1 - round(Sz./2)):(Xk1 + round(Sz./2))
Profil(m) = k*(nf-ns)*1;
end
for m = (Xk1 + round(Sz./2)):N
Profil(m) = k*(nc-ns)*1;
end

for j=1:M
ON = -Profil;                             
A = A.*exp(-i*dz*ON);
Y = fft(A);
FOL = (w.^2)/(2*ns*k) ;                    
YY = ifft(exp(-i*dz*FOL).*Y);
A  = YY;
if D == dzielnik;
Out(j/D,:)=abs(A).^2;
MaxOut(j/D) = max(abs(A).^2);
ZZr(j/D) = j*dz;
D = 0;
end
D=D+1;
end

Opis_y=0.95*max(abs(YY).^2);

figure(1);
area(Xr,abs(y).^2,'FaceColor',[.9 .85 .45])
set(gca,'Layer','top')
hold on
plot(Xr,Profil./(k*nf-k*ns),'k','Linewidth',2)
hold off
grid on;
xlim([(0+LL/2.5)  (LL-LL/2.5)]);
%plot(Xr,abs(y).^2,'b',Xr,Profil./(k*nf-k*ns),'k')
%grid on;
%xlim([0 LL]);
ylim([0 1.2]);
xlabel('Wymiar poprzeczny [m]');
ylabel('Natezenie swiatla [j.w.]');
title('Rozklad wejsciowy') 

figure(2);
%plot(Xr,abs(YY).^2,'r',Xr,Profil./(k*nf-k*ns),'k');
area(Xr,abs(YY).^2,'FaceColor',[.99 .3 .3])
set(gca,'Layer','top')
hold on
plot(Xr,Profil./(k*nf-k*ns),'k','Linewidth',2)
hold off
grid on;
xlim([(0+LL/2.5)  (LL-LL/2.5)]);
ylim([0 1.2]);
xlabel('Wymiar poprzeczny [m]');
ylabel('Natezenie swiatla [j.w.]');
title('Rozklad wyjsciowy') 


figure(3);
mesh(Xr,ZZr,Out);
colormap jet;
shading interp;
grid on;
view (0,90);
xlim([0 LL]);
%ylim([min(Zr) max(Zr)]);
xlabel('Wymiar poprzeczny [m]');
ylabel('Kierunek propagacji [m]');
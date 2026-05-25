%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%          Propagacja �wiat�a w falowodzie symetrycznym              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc; clear all; close all;
i=sqrt(-1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                      Parametry badanego falowodu                      %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ns     = 3.27;               %wsp�czynnik za�amania pod�o�a
nf     = 3.28;               %wsp�czynnik za�amania warstwy prowadz�cej 
nc     = 3.27;               %wsp�czynnik za�amania pokrycia
LL     = 100e-6;             %szeroko�� okna obliczeniowego (kierunek "x") 
ZZ     = 0.01;               %d�ugo�� okna obliczeniowego   (kierunek "z")
Szer   = 4e-6;               %szeroko�� kana�u falowodowego
xk1    = 50e-6;              %po�ozenie �rodka kana�u falowodowego
lambda = 1500e-9;            %d�ugo�� fali
xc     = 50e-6;              %po�o�enie �rodka wi�zki wej�ciowej  
wp     = 5e-6;               %�rednica wi�zki wej�ciowej (wi�zka Gaussa)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                Rozdzielczo�� siatki obliczeniowej                     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N      = 1024;             %liczba pr�bek w kierunku poprzecznym (kier."x")
M      = 3200;             %liczba krok�w w kierunku propagacji (kier. "z")
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
%%             Poprzeczny rozk�ad pola wi�zki wej�ciowej                 %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
y = exp(-(2*(Xr-xc)./wp).^2);                 %Rozk�ad funkcji wej�ciowej
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                         Wyniki pomiarowe                              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I_in = max(abs(y).^2);
I_out = max(abs(YY).^2);
fprintf('============= Wyniki pomiarowe (falowod symetryczny) =============\n');
fprintf('Z  = %.2f mm\n', ZZ*1000);
fprintf('I_in  = %.6f j.w.\n', I_in);
fprintf('I_out = %.6f j.w.\n', I_out);
fprintf('I_out / I_in = %.6f j.w.\n', I_out/I_in);
fprintf('==================================================================\n');
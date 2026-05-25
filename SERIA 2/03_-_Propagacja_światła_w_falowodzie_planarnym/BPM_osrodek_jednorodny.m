%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%               Propagacja �wiat�a w o�rodku jednorodnym                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc; clear all; close all;
i=sqrt(-1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                      Parametry badanego falowodu                      %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ns     = 3.4;                %wsp�czynnik za�amania o�rodka
LL     = 600e-6;             %szeroko�� okna obliczeniowego (kierunek "x") 
ZZ     = 0.005;              %d�ugo�� okna obliczeniowego   (kierunek "z")
lambda = 633e-9;             %d�ugo�� fali
xc     = 300e-6;             %po�o�enie �rodka wi�zki wej�ciowej  
wp     = 2e-6;              %�rednica wi�zki wej�ciowej (wi�zka Gaussa)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                Rozdzielczo�� siatki obliczeniowej                     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N      = 1024;             %liczba pr�bek w kierunku poprzecznym (kier."x")
M      = 1200;             %liczba krok�w w kierunku propagacji (kier. "z")
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


k    = 2*pi/lambda;             
dz   = ZZ/M;                   
dx   = LL/N;                   
dw   = 2*pi/(N*dx);            
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                         Wyniki pomiarowe                              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I_in = max(abs(y).^2);
I_out = max(abs(YY).^2);
fprintf('============== Wyniki pomiarowe (osrodek jednorodny) ==============\n');
fprintf('Z  = %.2f mm\n', ZZ*1000);
fprintf('Win = %.2f um\n', wp*1e6);
fprintf('I_in  = %.6f j.w.\n', I_in);
fprintf('I_out = %.6f j.w.\n', I_out);
fprintf('I_out / I_in = %.6f j.w.\n', I_out/I_in);
fprintf('==================================================================\n');
% Program oblicza wartoœæ reflektancji natê¿eniowej w funkcji k¹ta padania 
% monochromatycznej fali p³askiej na oœrodek warstwowy. 
% Domyœlnie wprowadzono dane dla pod³o¿a szklanego 
% o wspó³czynniku za³amania n = 1,52 pokrytego warstw¹ srebra 
% (zespolony wspó³czynnik za³amania) o gruboœci d = 0,5 um.
% --------------------------------0
clc; clear all; close all;
i=sqrt(-1);
% ------------ Wprowadzanie danych -------------1
lambda0=0.5; k0=2*pi/lambda0; 
n0=1.0; ns=1.52; 
n=[0.05-i*2.85]; 
%d1=lambda0/(4*n(1)); d2=lambda0/(4*n(2)); 
d=[0.5]; 
Nw = length(n);
% -------------- Zakres zmiennoœci k¹ta padania theta ---------2
j=0;
for theta=0:0.001:pi/2-0.001 
% ----Sk³adowa B = kz  = const. oraz sk³adowe kx w pokryciu i pod³o¿u ----3
    B=k0*n0*sin(theta);    
    kcx = sqrt((k0^2)*n0^2-B^2); 
    ksx = sqrt((k0^2)*ns^2-B^2);
% --------Zdefiniowanie macierzy dynamicznych pokrycia i pod³o¿a------4
    j=j+1;
    D0s = [1 1; n0*cos(theta) -n0*cos(theta)];	%dla TE 
    DSs = [1 1; ksx/k0  -ksx/k0]; 			%dla TE
    D0p = [1 -1; cos(theta)/n0 cos(theta)/n0];	%dla TM
    DSp = [1 -1; ksx/(k0*ns^2) ksx/(k0*ns^2)];	%dla TM
    Qs = DSs; Qp = DSp;
% --------Definiowanie macierzy w kolejnych warstwach-----5
    for p=Nw:-1:1
        kx = sqrt((k0^2)*n(p)^2-B^2);
        Ds = [1 1; kx/k0  -kx/k0]; 
        Dp = [1 -1; kx/(k0*n(p)^2) kx/(k0*n(p)^2)]; 
         P = [exp(i*kx*d(p)) 0; 0  exp(-i*kx*d(p))];
        Ts = Ds*P*Ds^-1;   Tp=Dp*P*Dp^-1;
        Qs = Ts*Qs;        Qp=Tp*Qp;
    end
    Ms=inv(D0s)*Qs;  Mp=inv(D0p)*Qp;
% --------- Obliczenie amplitudowych wspó³czynników odbicia------6
    rs = Ms(2,1)/Ms(1,1);    rp = Mp(2,1)/Mp(1,1);
% ------ Dodawanie kolejnych elementów do wektorów-----7
    Rs(j)=(abs(rs))^2;  	Rp(j)=(abs(rp))^2;
    Theta(j)=theta; 
end
% ---------- Wykres reflektancji--------------8
figure (1);
plot(Theta*180/pi,Rs,'k','LineWidth',1.5); hold on;
plot(Theta*180/pi,Rp,'b--','LineWidth',1.5); hold off;
legend('TE - linia ciagla','TM - linia przerywana');
xlim([0 90]); 
xlabel('theta','FontSize',12);
ylabel('Reflektancja','FontSize',12);
grid on;
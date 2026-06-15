% Program oblicza natê¿eniowej wspó³czynnik odbicia fali p³askiej padaj¹cej 
% na oœrodek pod okreœlonym k¹tem w funkcji d³ugoœci fali. 
% Domyœlnie przyjêto k¹t padania równy zero i zakres d³ugoœci fal 
% obejmuj¹cych widmo optyczne.
% ----------------------------------------------------------------------0
clc; clear all; close all;
i=sqrt(-1);
% ------------------ Wprowadzanie danych -------------1
lambda1=0.4; lambda2=0.75; 
lambda0=0.53; 			
k1=2*pi/lambda1;  k2=2*pi/lambda2; 
theta=0; 				
n0=1; ns=1.75; 			
n=[1.8 3.1 1.8 3.1 1.8 3.1];	 
Nw=length(n); 			
d1=lambda0/(4*n(1));d2=lambda0/(4*n(2)); d3=lambda0/(4*n(3));
d4=lambda0/(4*n(4));d5=lambda0/(4*n(5)); d6=lambda0/(4*n(6));
d=[d1 d2 d3 d4 d5 d6]; 			
% --------------- Zakres zmiennoœci liczby falowej-----------2
j=0;
for k=linspace(k1,k2,2000)
% -----------Sk³adowa B = kz  = const. oraz sk³adowe kx w pokryciu i pod³o¿u ------3
    B=k*n0*sin(theta); 
    kcx=sqrt((k^2)*n0^2-B^2);
    ksx=sqrt((k^2)*ns^2-B^2);
% ----------Zdefiniowanie macierzy dynamicznych pokrycia i pod³o¿a------4
    j=j+1;
    D0=[1 1; n0*cos(theta) -n0*cos(theta)];
    Ds=[1 1; ksx/k  -ksx/k];
    Q=Ds;
% ----------------Definiowanie macierzy w kolejnych warstwach-----5
    for p=Nw:-1:1
        kx=sqrt((k^2)*n(p)^2-B^2);
        D=[1 1; kx/k  -kx/k]; 
        P=[exp(i*kx*d(p)) 0; 0  exp(-i*kx*d(p))];
        T=D*P*D^-1;
        Q=T*Q;
    end
    M=inv(D0)*Q;
% -------------------------------------Obliczenie amplitudowych wspó³czynników odbicia i transmisji-------6
    r=M(2,1)/M(1,1); 
    t=1/M(1,1);    
% --------------------------------------------Dodawanie kolejnych elementów do wektorów danych-------7
    rm(j)=r; %kolejny element wektora r
    R(j)=(abs(r)).^2;
    Tr(j)=(ksx/kcx)*abs(t).^2;
    arg(j)=acos(real(r)/abs(r));    
    K(j)=k; 
    lambda(j)=2*pi/k; 
end
% ------------------------------------------------------------------------------ Wykres reflektancji---------------8
figure (1);
plot(lambda,R,'r','LineWidth',1.5);
xlim([lambda1 lambda2]);
xlabel('lambda [um]','FontSize',12);
ylabel('Reflektancja','FontSize',12);
grid on;


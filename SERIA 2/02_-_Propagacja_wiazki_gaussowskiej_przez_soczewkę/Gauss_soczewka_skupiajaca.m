% Na podstawie znajomości parametrów wiązki gaussowskiej wejściowej
% program oblicza parametry wiązki gaussowskiej po przejściu przez         
% soczewkę skupiającą o znanej ogniskowej. Korzysta się z równania           
% soczewki cienkiej. 
%*******************************************************************
clc; clear all; close all;
i = sqrt(-1);
%-------------------------------------------------------------------
%PARAMETRY WIĄZKI WEJŚCIOWEJ (długości w mm)
%-------------------------------------------------------------------
lambda = 0.633*10^-3; 	%długość fali lasera He-Ne
w10 = 0.25; 	%promień przewężenia wiązki
z10 = (pi/lambda)*w10^2;  	%zasięg Rayleigha
theta1 = lambda/(pi*w10); 		%kąt połówkowy rozbieżności wiązki
d1 = 400; 	%odległość od przewężenia do soczewki
q1 = d1 - i*z10; 	%parametr Kogelnika
%-------------------------------------------------------------------
%SOCZEWKA
%-------------------------------------------------------------------
f = 75; 	%ogniskowa soczewki skupiającej
S = [1,0; -1/f,1]; 	%macierz dla soczewki   
A = S(1,1);  B = S(1,2); C = S(2,1); D = S(2,2);
%-------------------------------------------------------------------
% RÓWNANIA SOCZEWKI CIENKIEJ DLA WIĄZKI GAUSSOWSKIEJ
%-------------------------------------------------------------------
w20 = sqrt((f^2*w10^2)/((f-d1)^2+z10^2));
z20 = (pi/lambda)*w20^2;
d2 = f+f^2*(d1-f)/((f-d1)^2+z10^2);
theta2=lambda/(pi*w20); %lub theta2=sqrt(lambda/(pi*z20));
theta_stopnie=theta2*57.325;
%-------------------------------------------------------------------
%RÓWNANIE WIĄZKI GAUSSOWSKIEJ
%-------------------------------------------------------------------
z = 0:0.1:d1;
w1 = w10*sqrt(1+(z).^2/z10^2);
zz = d1:0.1:2*d1;
w2 = w20*sqrt(1+(zz-d1-d2).^2/z20^2); 
h2 = d2 - f;
wwy = (f^2*w10^2/(f-d1)+z10^2);
%-------------------------------------------------------------------
%WYKRES przestrzenny wiązki
%-------------------------------------------------------------------
figure(1);
plot(z,w1,'k',z,-w1,'k','linewidth',2); hold on;
plot(z,z*0,'k:',zz,zz*0,'k:');
plot(zz,w2,'k',zz,-w2,'k','linewidth',2);
a=1; line=-a:0.1:a; 
plot(0*line+d1,line,'linewidth',3);
plot(0*line+d1+f,line,'k:','linewidth',2); hold off;
ylim([-1 1]); xlabel('[mm]'); ylabel('[\mum]');
%------------------------------------------------------------------
%Przekrój wiązki w przewężeniu przed i za soczewką
%-------------------------------------------------------------------
alfa=0:0.01:2*pi;
x1=w10*sin(alfa); y1=w10*cos(alfa);
x2=w20*sin(alfa); y2=w20*cos(alfa);
fprintf("d2 = %s\n", d2);
fprintf("h2 = %s\n", h2);
fprintf("wwy = %s\n", wwy);
%figure(2);
%plot(x1,y1,'k',x2,y2,'k','linewidth',2);
%axis('equal');

%  Mody TE i TM w falowodzie skokowym asymetrycznym

clc; clear all;

%-------------------D³ugoœæ fali œwietlnej--------------------------

lambda=7.12; % d³ugoœæ fali
k0=2*pi/lambda; %wartoœæ wektora falowego

%---------------Wspó³czynniki za³amania warstw falowodu-------------

nc = 1.49; epc=nc^2; % pokrycie
nf = 1.5; epf=nf^2; %film
ns = 1.49; eps=ns^2; %pod³o¿e

%---------------Szerokoœæ falowodu----------------------------------
h = 4; %mikrometry

%---------------Wykres profilu wspó³czynnika za³amania--------------
xmin=-h; xmax=3*h;
N=300;
x=linspace(xmin,xmax,N)';
dx=x(2)-x(1);
n=nc*(x<0)+nf*((x>=0)&(x<=h))+ns*(x>h);
ep=epc*(x<0)+epf*((x>=0)&(x<=h))+eps*(x>h);
ngraf=-10*(x<0)+10*((x>=0)&(x<=h))+-10*(x>h);
figure(1);
plot(x,n);
ylim([0.75 (max(n))+0.2]);
%------------------Wybór modów TE (s = 0) lub TM (s=1)--------------
s=0;
%*******************************************************************

%---------------Tworzenie operatora w postaci macierzowej--------------
p=1/(k0*dx)^2;
ep0=2*ep(1)-ep(2); epN=2*ep(N)-ep(N-1);
epx=[ep0; ep; epN];

a1=0.25*(epx(4:N+2)-epx(2:N))./epx(3:N+1);
a2=0.25*(epx(3:N+1)-epx(1:N-1))./epx(2:N);

A1=p*(ones(N-1,1)+a1*s);
A2=p*(ones(N-1,1)-a2*s);
B=-2*p*ones(N,1)+ep;

L=diag(A1,-1)+diag(B,0)+diag(A2,1);

%---------------Obliczanie wartoœci w³asnych i wektorów w³asnych----

[evec, eval]=eig(L);

%-Utworzenie wektora wartoœci w³asnych i wyodrêbnienie wartoœci dla %modów prowadzonych

b=diag(eval);
d=b(b>eps,1);
neff=sqrt(d);
D=length(d);
disp(neff); disp(D);
P1=num2str(neff);

%--------------Wykreœlenie wszystkich modów prowadzonych------------

mody=evec(:,b>eps);
%mody=evec(:,(b>epc+0.1)&(b<epc+0.2));
M=max(max(abs(mody)));
mod1=mody(:,1);
figure(2);
plot(x,mody,x,ngraf,'c-',x,0*x,'m--');
ylim([-1.2*M 1.2*M]);
legend(P1); 

%------------Wykres konkretnego modu--------------------------------
% Nr=input('WprowadŸ rz¹d modu m = ');
% figure(3);
% mod=mody(:,D+1-Nr);
% plot(x,mod,x,ngraf,'c-',x,0*x,'m--');
% ylim([-1.2*M 1.2*M]);
%  Mody TE i TM w falowodzie skokowym asymetrycznym

clc; clear all;

%-------------------Dlugosc fali swietlnej--------------------------

lambda=7.12; % dlugosc fali [um]
k0=2*pi/lambda; % wartosc wektora falowego

%---------------Wspolczynniki zalamania warstw falowodu-------------

nc = 1.49; epc=nc^2; % pokrycie
nf = 1.5;  epf=nf^2; % film (warstwa prowadzaca)
ns = 1.49; eps_ns=ns^2; % podloze

%---------------Szerokosc falowodu----------------------------------
h = 4; % [um]

%---------------Wykres profilu wspolczynnika zalamania--------------
xmin=-h; xmax=3*h;
N=300;
x=linspace(xmin,xmax,N)';
dx=x(2)-x(1);
n=nc*(x<0)+nf*((x>=0)&(x<=h))+ns*(x>h);
ep=epc*(x<0)+epf*((x>=0)&(x<=h))+eps_ns*(x>h);
ngraf=-10*(x<0)+10*((x>=0)&(x<=h))+-10*(x>h);
figure(1);
plot(x,n);
ylim([0.75 (max(n))+0.2]);
%------------------Wybor modow TE (s = 0) lub TM (s=1)--------------
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

%---------------Obliczanie wartosci wlasnych i wektorow wlasnych----

[evec, eval]=eig(L);

%-Utworzenie wektora wartosci wlasnych i wyodrebnienie wartosci dla modow prowadzonych

b=diag(eval);
eps_prog = max(eps_ns, epc);   % prog na mod prowadzony: neff > max(ns, nc)
d=b(b>eps_prog,1);
neff=sqrt(d);
D=length(d);

%--------------Wykreslenie wszystkich modow prowadzonych------------

mody=evec(:,b>eps_prog);
%mody=evec(:,(b>epc+0.1)&(b<epc+0.2));
M=max(max(abs(mody)));
mod1=mody(:,1);
figure(2);
plot(x,mody,x,ngraf,'c-',x,0*x,'m--');
ylim([-1.2*M 1.2*M]);

% Budowa legendy z wartosciami neff
leg_str = cell(1, D);
for idx_leg = 1:D
    leg_str{idx_leg} = sprintf('n_{eff,%d} = %.4f', idx_leg-1, neff(idx_leg));
end
legend(leg_str);

%------------Wykres konkretnego modu--------------------------------
% Nr=input('Wprowadz rzad modu m = ');
% figure(3);
% mod=mody(:,D+1-Nr);
% plot(x,mod,x,ngraf,'c-',x,0*x,'m--');
% ylim([-1.2*M 1.2*M]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                         Wyniki pomiarowe                              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
polaryzacja = 'TE';
if s==1
    polaryzacja = 'TM';
end

fprintf('============== Wyniki pomiarowe (mody w falowodzie) ==============\n');
fprintf('Polaryzacja: %s\n', polaryzacja);
fprintf('lambda = %.2f um\n', lambda);
fprintf('nf = %.4f, ns = %.4f, nc = %.4f\n', nf, ns, nc);
fprintf('h   = %.2f um\n', h);
fprintf('k0  = %.4f um^-1\n', k0);
fprintf('V   = %.4f  (V/pi = %.4f)\n', k0*h*sqrt(nf^2-ns^2), k0*h*sqrt(nf^2-ns^2)/pi);
fprintf('----------------------------------------------------------------\n');
fprintf('Liczba modow prowadzonych LM = %d\n', D);
fprintf('Efektywne wspolczynniki zalamania modow:\n');
for idx = 1:D
    fprintf('  mod %d: neff = %.6f\n', idx-1, neff(idx));
end
fprintf('================================================================\n');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%     OPCJONALNIE: pomiary dla wielu dlugosci fali (odkomentuj)        %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aby wypelnic tabele w karcie pomiarowej, odkomentuj ponizszy blok.
% Uruchom najpierw dla falowodu symetrycznego (nc=ns), potem zmien nc
% i uruchom ponownie dla niesymetrycznego.
%
% fprintf('\n\n========== Tabela LM(lambda) ==========\n');
% fprintf('Typ falowodu: ');
% if abs(nc-ns) < 1e-6
%     fprintf('SYMETRYCZNY (nc = ns = %.2f)\n', ns);
% else
%     fprintf('NIESYMETRYCZNY (nc = %.2f, ns = %.2f)\n', nc, ns);
% end
% fprintf('nf = %.2f, h = %.2f um\n', nf, h);
% fprintf('-----------------------------------------\n');
% fprintf('lambda [um] | LM | neff modow\n');
% fprintf('-----------------------------------------\n');
% lambda_vals = [1.5, 1.4, 1.3, 1.2, 1.1, 1.0, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4];
% for lambda_sweep = lambda_vals
%     k0_s = 2*pi/lambda_sweep;
%     p_s = 1/(k0_s*dx)^2;
%     A1_s = p_s*(ones(N-1,1)+a1*s);
%     A2_s = p_s*(ones(N-1,1)-a2*s);
%     B_s = -2*p_s*ones(N,1)+ep;
%     L_s = diag(A1_s,-1)+diag(B_s,0)+diag(A2_s,1);
%     b_s = diag(eig(L_s));
%     d_s = b_s(b_s>eps_prog,1);
%     neff_s = sqrt(d_s);
%     LM_s = length(d_s);
%     fprintf('  %.1f       | %2d  |', lambda_sweep, LM_s);
%     for idx = 1:LM_s
%         fprintf(' %.5f', neff_s(idx));
%     end
%     fprintf('\n');
% end
% fprintf('-----------------------------------------\n');

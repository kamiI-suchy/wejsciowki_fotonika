clc; clear all; close all;
%---------------DANE-------------------------------
lambda=1.0;
n=5;
Rs=4;
D=(n-1)/Rs;
R1=-4;
R2=n*R1/(1+D*R1);
N=1000;
theta=linspace(0,2*pi,N);
z=linspace(0,abs(R1)+Rs,N);
for j=1:4
    R11(j)=-R1-(j-1)*lambda;
    Rs1=R11(1);
    R22(j)=R2-(j-1)*lambda/n;
    x1(j,:)=R11(j)*sin(theta); 
    y1(j,:)=R11(j)*cos(theta);
    x2(j,:)=R22(j)*sin(theta)+R11(1)+R22(1);
    y2(j,:)=R22(j)*cos(theta);
end
X=Rs*sin(theta)+Rs+Rs1;
Y=Rs*cos(theta);
%---------------WYKRESY--------------------------
plot(x1(1,:),y1(1,:),'r',x1(2,:),y1(2,:),'r',x1(3,:),y1(3,:),'r'); hold on;
plot(X,Y,'g','Linewidth',3); 
plot(x2(2,:),y2(2,:),'b',x2(3,:),y2(3,:),'b',x2(4,:),y2(4,:),'b');
plot(z,z*0,'--m'); hold off;
axis('equal');

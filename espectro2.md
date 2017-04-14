clc
clear all
n=1:1:10;
A(1)=2; %Valor de a0
A(n+1)=abs((-2./(pi*n)).*(1-cos(n*pi))); %Valor de ab; comando abs para tirar o módulo do resultado
ni=1:2:11; %ni = número ímpar
np=2:2:10; %np = número par
phi(ni)=0;
phi(np)=(pi/2);
w=[0,n];
subplot(2,1,1); %Matriz aonde será plotado o gráfico. Matriz 2x1 na posição 1.
stem(w,A);
title('Espectro de Amplitude');
xlabel('\omega');
ylabel('A');
subplot(2,1,2); %Matriz aonde será plotado o gráfico. Matriz 2x1 na posição 2.
stem(w,phi);
title('Espectro de Fase');
xlabel('\omega');
ylabel('\phi');
%t=-3*pi:0.001:3*pi;
%f1=(-4/pi)*sin(t);
%f3=(-4/(3*pi))*sin(3*t);
%f5=(-4/(5*pi))*sin(5*t);
%f7=(-4/(7*pi))*sin(7*t);
%f9=(-4/(9*pi))*sin(9*t);
%f=2+f1+f3+f5+f7+f9;
%subplot(3,1,1);
%plot(t,f);
%title('Gráfico');
%xlabel('t');
%ylabel('f');

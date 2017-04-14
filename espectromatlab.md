clc
clear all
n=1:1:10;
A(1)=(pi^2)/3; %Valor de a0
A(n+1)=abs((4*cos(n*pi))./(n.^2)); %Valor de an; comando abs para tirar o mõdulo do resultado
ni=1:2:11;
np=2:2:10;
phi(ni)=0; %ni = número ímpar
phi(np)=-pi; %np = número par
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

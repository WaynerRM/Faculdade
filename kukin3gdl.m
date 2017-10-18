clc
clear all
teta1 = 0; %Angulo de rotação da base
teta2 = 0; %Angulo de rotação do ombro
teta3 = 0; %Angulo de rotação do cotovelo

alfa1 = -90; %Parametro DH para a junta 1
d1 = -100; %Parametro DH
a1 = 0; %Parametro DH

alfa2 = 0; %Parametros DH para a junta 2
d2 = 0; %Parametros DH
a2 = 140; %Parametros DH

alfa3 = 90; %Parametros DH para a junta 3
d3 = 0; %Parametros DH
a3 = 160; %Parametros DH

A1 = [cosd(teta1) -cos(alfa1)*sind(teta1) sind(alfa1)*sind(teta1) a1*cosd(teta1);
    sind(teta1) cosd(alfa1)*cosd(teta1) -sind(alfa1)*cosd(teta1) a1*sind(teta1);
    0 sind(alfa1) cosd(alfa1) d1; 0 0 0 1];

A2 = [cosd(teta2) -cos(alfa2)*sind(teta2) sind(alfa2)*sind(teta2) a2*cosd(teta2);
    sind(teta2) cosd(alfa2)*cosd(teta2) -sind(alfa2)*cosd(teta2) a2*sind(teta2);
    0 sind(alfa2) cosd(alfa2) d2; 0 0 0 1];

A3 = [cosd(teta3) -cos(alfa3)*sind(teta3) sind(alfa3)*sind(teta3) a3*cosd(teta3);
    sind(teta3) cosd(alfa3)*cosd(teta3) -sind(alfa3)*cosd(teta3) a3*sind(teta3);
    0 sind(alfa3) cosd(alfa3) d3; 0 0 0 1];

T = A1*A2*A3; %matriz de transformação homogenea

T(3,4) = T(3,4)*-1;
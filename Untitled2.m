% Modelagem cinemática do robo simulador kukin 3gdl
clc
clear all

prompt={'Insira o valor do Parametro Alfa 1','Insira o valor do Parametro d1','Insira o valor do Parametro a1'};
def={'-90','-100','0'};
dlgTitle='Junta rotativa 1';
lineNo=2;
answer=inputdlg(prompt,dlgTitle,lineNo,def);

alfa1 = str2num(answer{1});
d1 = str2num(answer{2});
a1 = str2num(answer{3});

prompt={'Insira o valor do Parametro Alfa 2','Insira o valor do Parametro d2','Insira o valor do Parametro a2'};
def={'0','0','140'};
dlgTitle='Junta rotativa 2';
lineNo=2;
answer=inputdlg(prompt,dlgTitle,lineNo,def);

alfa2 = str2num(answer{1});
d2 = str2num(answer{2});
a2 = str2num(answer{3});

prompt={'Insira o valor do Parametro Alfa 3','Insira o valor do Parametro d3','Insira o valor do Parametro a3'};
def={'90','0','160'};
dlgTitle='Junta rotativa 4';
lineNo=2;
answer=inputdlg(prompt,dlgTitle,lineNo,def);

alfa3 = str2num(answer{1});
d3 = str2num(answer{2});
a3 = str2num(answer{3});

promt={'INSIRA O ANGULO DE ROTAÇÃO DA BASE - Robo 3GDL','INSIRA O ANGULO DE ROTAÇÃO DO OMBRO','INSIRA O ANGULO DE ROTAÇÃO DO COTOVELO'};
def={'0','0','0'};
dglTitle='ROTAÇÕES - ROBO 3GDL';
lineNo=2;
answer=inputdlg(prompt,dglTitle,lineNo,def);

teta1 = str2num(answer{1});
teta2 = str2num(answer{2});
teta3 = str2num(answer{3});

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

X = T(1,4);
Y = T(2,4);
Z = T(3,4);

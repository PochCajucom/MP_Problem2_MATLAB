%% Number2
% Write a program that accepts as input three points (?, ?) lying on a circle in a 2-dimensional Cartesian plane. The program must return the following parameters of the circle on which the three points lie:

x1 = input('Enter a 1st value for x: ')
y1 = input('Enter a 1st value for y: ')
x2 = input('Enter a 2nd value for x: ')
y2 = input('Enter a 2nd value for y: ')
x3 = input('Enter a 3rd value for x: ')
y3 = input('Enter a 3rd value for y: ')
syms D E F
eq1 = x1^2 + y1^2 + D*x1 + E*y1 + F;
eq2 = x2^2 + y2^2 + D*x2 + E*y2 + F;
eq3 = x3^2 + y3^2 + D*x3 + E*y3 + F;
[A,B] = equationsToMatrix([eq1,eq2,eq3], [D,E,F]);
X = linsolve(A,B)';
D = X(1); E= X(2); F=X(3);
F1 = -F;
D1 = (D*(1/2))^2;
E1 = (E*(1/2))^2;
F2 = F1+D1+E1;
D2 = -D*(1/2);
E2 = -E*(1/2);
height = D2;
k = E2;
center = [height k];
radius = sqrt(F2);
%output%
-D
-E
F
center 
radius
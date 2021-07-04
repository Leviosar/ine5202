function y=f1a(x)
m=18; % Número de pontos experimentais
v=[9.0   8.5   8.0    7.5   7.0   6.5   6.0   5.5   5.0    9.0    8.5    8.0    7.5     7.0    6.5    6.0   5.5   5.0 ];  %v(m3/mol)
T=[300  310  320  340  360  370  380  390  400   410   420   440   460   470   480   490  500  510 ];  % T (K)
P=[277.4415  303.5736  332.9762  377.4045  428.1888  473.9876  527.4325  590.6120 666.4529 379.1701 411.2932  457.8422  510.6061  559.0243  614.9029  680.1102  757.1948  849.7274];   % P (Pa)
R = 8.314;
y=0;
for k=1:m y=y+(R*T(k)/(v(k)-x(2))-x(1)/(sqrt(T(k))*v(k)*(v(k)+x(2)))-P(k))*(-1./(sqrt(T(k))*v(k)*(v(k)+x(2)))); end
end
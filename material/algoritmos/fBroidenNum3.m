function x1=fBroidenNum3(x0)
X0=transpose(x0);
dif=1;tol=1e-15;k=0; 
dx= 10*([tol tol tol]);%valor inicial de dx
%%J0
	x1dx=[x0(1)+dx(1),x0(2),x0(3)];%vetor x(1) com incremento
	x2dx=[x0(1),x0(2)+dx(2),x0(3)];%vetor x(2) com incremento
	x3dx=[x0(1),x0(2),x0(3)+dx(3)];%vetor x(3) com incremento  
  f1xi=f1(x0); %f1 aplicada no ponto inicial xi
	f2xi=f2(x0); %f2 aplicada no ponto inicial xi
	f3xi=f3(x0); %f3 aplicada no ponto inicial xi
  F0=[f1xi; f2xi; f3xi];
	J(1,1)=(f1(x1dx)-f1xi)/dx(1);
	J(1,2)=(f1(x2dx)-f1xi)/dx(2);
	J(1,3)=(f1(x3dx)-f1xi)/dx(3);
	J(2,1)=(f2(x1dx)-f2xi)/dx(1);
	J(2,2)=(f2(x2dx)-f2xi)/dx(2);
	J(2,3)=(f2(x3dx)-f2xi)/dx(3);
	J(3,1)=(f3(x1dx)-f3xi)/dx(1);
	J(3,2)=(f3(x2dx)-f3xi)/dx(2);
	J(3,3)=(f3(x3dx)-f3xi)/dx(3);
  J;
Jinv=inv(J);
%J*Jinv
DX=-Jinv*F0;
X1=X0+DX;
x1=transpose(X1);
F1=[f1(x1); f2(x1); f2(x1);];
DF=F1-F0;
dif=1;k=0;
while (dif>tol && k<30)
 k=k+1;
 Jinv=Jinv+((DX-(Jinv*DF))*transpose(DX))*Jinv/(transpose(DX)*Jinv*DF);
 DX=-Jinv*F1;
 X2=X1+DX;
 x1=transpose(X2);
 F2=[f1(x1); f2(x1); f3(x1);];
 DF=F2-F1;
 X1=X2;F1=F2;
 dif=min(abs(DX));%Criterio ‘min’ pois dx é denominador
end
dif
k
FBN=[f1(x1); f2(x1); f3(x1);]

end


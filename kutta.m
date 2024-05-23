clc
clear all
fx=input('Enter the function ,dx/dy = ','s'); 
f=eval(['@(x,y)',fx]) ;
x1=input('initial value of x1= ');
y1=input('initial value of y1= ');
xp=input('input x at which y is required xp= '); 
h=input('input step size h= ');
n=(xp-x1)/h;
for i=1:n
    m1=f(x1,y1);
    x2=x1+h;
    y2=y1+h*m1; 
    m2=f(x2,y2); 
    y2=y1+((h/2)*(m1+m2));
    x1=x2;
    y1=y2; 
end
fprintf('At x=%g the value of y(%g)=%f',xp,xp,y2);
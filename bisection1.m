 clc; 
clear all; 
fx=input('Enter the function ,F(x) = ','s'); 
f=eval(['@(x)',fx]) ; 
a=input('Enter a='); 
b=input('Enter b='); 
v=b; 
while(f(b)<0) 
    b=a; 
    a=v; 
    break; 
end    
s=1; 
fprintf('N\t      \ta\t    b\t     x\t\t  f(x)\t\t   Error\n'); 
for k=1:100; 
    it(k)=abs(k); 
    x(k)=(a+b)/2; 
    c=f(x(k)); 
    fprintf('%g       %f      %f       %f       %f       %f\n',k,a,b,x(k),c,s); 
    if c>0 
        b=x(k); 
    else 
        a=x(k); 
    end 
x(k+1)=(a+b)/2; 
s=((abs(x(k+1)-x(k)))/abs(x(k+1)))*100; 
if s<=.01 
break; 
end 
end 
fprintf('\n\n Hence the root is %f ',x(k)); 


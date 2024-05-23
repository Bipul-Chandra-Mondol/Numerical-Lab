clc
clear all
n=input('Enter the value of n= '); 
h=input('Enter the value of h= ');
for i=1:n+1
    f(i)=input('Enter the value of f(i)= '); 
end
sum=(f(1)+f(n+1));
for i=2:n
    sum=sum+4*f(i);
end
for i=3:n-1 
    sum=sum+2*f(i)
end 
Integral=h*(sum/3);
Integral
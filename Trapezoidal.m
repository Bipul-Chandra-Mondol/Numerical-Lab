clc
clear all
n=input('Enter the value n= '); 
h=input('Enter the value h= ');
for i=1:n+1
    f(i)=input('Enter the value f(i)= ');
end 
sum=(f(1)+f(n+1))/2; 
for j=2:n
    sum=sum+f(j);
end
Integral=h*sum;
Integral
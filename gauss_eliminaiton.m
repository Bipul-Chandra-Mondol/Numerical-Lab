clc;
clear all;
a=input('Enter matrix A = '); 
b=input('Enter matrix B = '); 
[m,n]=size(a);
for k=1:m-1    
    for i=k+1:m 
        fact=a(i,k)/a(k,k);
        for j=1:n a(i,j)=a(i,j)-a(k,j)*fact;
        end
        b(i,1)=b(i,1)-b(k,1)*fact; 
    end
end
x(m)=b(m,1)/a(m,n);
for i=m-1:-1:1 
    sum=0;
    for j=i+1:n 
        sum=sum+a(i,j)*x(j);
    end
    x(i)=(b(i,1)-sum)/a(i,i); 
end
disp('After forward elimination the matrix [A B] :');
disp([a b]);%%Showes a &b in matrix form fprintf('\nThe Required solution : ');
for i=1:n
fprintf('\nx(%d) = %f',i,x(i));
end
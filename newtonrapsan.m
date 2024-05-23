clc;
clear all;

% Input function f(x) and its derivative f'(x)
fx = input('Enter the function, F(x) = ', 's');
f = eval(['@(x)', fx]);
fx = input('Enter the derivative function, F''(x) = ', 's');
f1 = eval(['@(x)', fx]);

% Initial guess
a = input('Enter a = ');

% Initial error
s = 1;

% Display table header
fprintf('N\t\tX(i)\t\tX\t\tf(x)\t\tError\n');

% Perform Newton-Raphson iterations
for k = 1:1:100
    x(k) = a - (f(a) / f1(a));
    fprintf('%d\t\t%f\t%f\t%f\t%f\n', k, a, x(k), f(x(k)), s);
    a = x(k);
    x(k + 1) = a - (f(a) / f1(a));
    s = (abs(x(k + 1) - x(k)) / abs(x(k + 1))) * 100;
    if s <= 0.0001
        break;
    end
end

% Display the root
fprintf('\n\nThe root is = %f\n', x(k));

% Examples for Newton's method.

clear all;
close all;

% Define a function, its derivative, and the inital guess x0.

% Example 1:
%f = @(x) x^2 - 1;
%df = @(x) 2*x;
%x0 = 0.5;

% Example 2:
%f = @(x) 0.25*x^3 - x + 0.5;
%df = @(x) 0.75*x^2 - 1;
%x0 = 3;

% Example 3:
f = @(x) -x^3/3 + x;
df = @(x) -x^2 + 1;
x0 = 0.75; % Converges to x = 0.
%x0 = 1.25; % Converges to x > 1.
%x0 = 0.95; % Takes a large initial step and converges to x < -1.

% Compute a root using Newton's method.
%xs = newton1d_analytic(f, df, x0);
xs = newton1d_finite_diff(f, x0, 1e-4);

% Visualize the computation.
plot_newton(f, df, xs);

% Examples for ODE solvers (forward and backward Euler).

clear all;
close all;

% Define the ODE via the function f(x, t) as well as the initial time t0,
% the initial value x0, the end time T, and the time step size h.
t0 = 0;
h = 1e-2;

% Example 1:
lambda = -1; % Moderate decay
lambda = -10; % Fast decay
%lambda = 10; % Fast growth
f = @(x, t) lambda*x;
x0 = 1;
T = 1;
x_true = @(t) exp(lambda*t);

% Example 2:
f = @(x, t) x^2;
x0 = 1;
T = 0.75;
x_true = @(t) 1/(1/x0 - t);

% Solve the ODE using the forward or backward Euler method.
[ts, xs] = forward_euler(f, t0, x0, T, h);

% Visualize the approximation and the true solution.
plot(ts, xs);
hold;
ngraph = 1000;
tgraph = linspace(t0, ts(end), ngraph);
xgraph = zeros(ngraph, 1);
for i = 1:ngraph
    xgraph(i) = x_true(tgraph(i));
end
plot(tgraph, xgraph);
legend('Forward Euler', 'True solution');

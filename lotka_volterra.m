% Simulation of predator-prey dynamics using the Lotka-Volterra model.

clear all;
close all;

% Set the model parameters and initial population sizes.
% x0(1)        - Initial prey population
% x0(2)        - Initial predator population
% p(1) (alpha) - Growth rate of prey population
% p(2) (beta)  - Rate of predation
% p(3) (delta) - Rate of growth in predator population due to availability
%                of prey
% p(4) (gamma) - Rate of decline in predator population

% Example 1: A stable cycle
x0 = [250; 10]; p = [0.25 0.01 0.001 0.1];
% Example 2: Prey and predators become extinct.
x0 = [250; 10]; p = [0.25 0.01 0.005 0.1];
% Example 3:
x0 = [250; 10]; p = [0.25 0.02 0.001 0.1];

% A few "unrealistic" examples.
%x0 = [1000; 10]; p = [0.25 0.01 0.001 0.1];

% Define the Lotka-Volterra ODE system.
% We assume that x(1) is the prey population and that x(2) is the predator
% population.
f = @(x, t) [p(1)*x(1) - p(2)*x(1)*x(2); p(3)*x(1)*x(2) - p(4)*x(2)];

% Time interval and time step size
T = 100;
h = 1e-2;

% Solve the ODE numerically.
[ts, xs] = forward_euler(f, 0, x0, T, h);

% Plot population dynamics.
plot(ts, xs(1, :));
hold;
plot(ts, xs(2, :));
xlabel('Time');
ylabel('Population size');
legend('Prey', 'Predators');

% A linear model for predator-prey dynamics.

% Set initial population.
% x0(1) - Prey
% x0(2) - Predators
x0 = [250; 10];
%x0 = [100; 5]; % A population that grows rapidly
%x0 = [100; 15]; % A population that goes extinct.
%x0 = [100; 10]; % A stable population (for the second matrix below)

% Set transformation matrix.
% The matrix has the form
%   [ alpha  beta  ]
%   [ delta  gamma ],
% where alpha is the growth rate for the prey, beta is the rate at
% which the predators reduce the prey polulation, delta is the growth
% of the predator population caused by the availability of prey,
% and gamma is the rate at which the predator population decreases
% naturally.
A = [1.1 -1; 0.0075 0.9]; % Only growth or extinction are possible.
%A = [1.1 -1; 0.0075 0.925]; % Stable populations exist.

% Set number of time steps.
n = 100;

% Compute polulation dynamics.
x = zeros(2, n);
x(:, 1) = x0;
for k = 2:n
    x(:, k) = A*x(:, k - 1);
end

% Plot results.
plot(x(1, :));
hold;
plot(x(2, :));
legend('Prey', 'Predators');
xlabel('Time step');
ylabel('Population size');

% Find a root of f using Newton's method, starting at x0.
% Derivatives are provided as a function handle (df).
function xs = newton1d_analytic(f, df, x0)
    % Set initial guess.
    x = x0;
    % Initialize history.
    xs = x0;
    
    % Check for convergence.
    while abs(f(x)) >= 1.0e-8
        % Apply Newton update.
        x = x - f(x)/df(x);
        % Update history.
        xs = [xs x];
    end
end

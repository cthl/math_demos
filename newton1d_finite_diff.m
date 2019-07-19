% Find a root of f using Newton's method, starting at x0.
% Derivatives are computed using finite differences with step size h.
function xs = newton1d_finite_diff(f, x0, h)
    % Set initial guess.
    x = x0;
    % Initialize history.
    xs = x0;
    
    % Check for convergence.
    while abs(f(x)) >= 1.0e-8
        % Approximate derivative of f at x using a finite difference.
        df = (f(x + h) - f(x - h))/(2.0*h);
        % Apply Newton update.
        x = x - f(x)/df;
        % Update history.
        xs = [xs x];
    end
end
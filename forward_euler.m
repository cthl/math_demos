function [ts, xs] = forward_euler(f, t0, x0, T, h)
    % Set initial value.
    t = t0;
    x = x0;
    % Initialize history.
    ts = t0;
    xs = x0;
    
    % Time stepping loop
    while t <= T
        % Evaluate the derivative of x at t.
        dx = f(x, t);
        % Perform forward Euler update.
        t = t + h;
        x = x + h*dx;
        % Update history.
        ts = [ts t];
        xs = [xs x];
    end
end

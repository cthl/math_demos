% Auxiliary function for plotting.
function xmargin = add_margin(x, side)
    if x > 0.0 && strcmp(side, 'low')
        xmargin = 0.9*x;
    elseif x > 0.0 && strcmp(side, 'high')
        xmargin = 1.1*x;
    elseif strcmp(side, 'low')
        xmargin = 1.1*x;
    elseif strcmp(side, 'high')
        xmargin = 0.9*x;
    end
end

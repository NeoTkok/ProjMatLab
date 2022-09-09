function y = Func(x, T, t, A)
    sig = zeros(size(x));
    Tx = (T-t) / 2;
    j = 0;
    for i = 1 : length(x)
        Tl = mod(x(i), T);
        if Tl < Tx || Tl > T - Tx
            sig(i) = 0;
        else
            sig(i) = A* cos(j/17.5-pi)+A;
            j = j + 1;
        end
    end
    y = sig;
end
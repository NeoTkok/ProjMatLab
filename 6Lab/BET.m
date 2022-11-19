function F = BET(t)
    if (t >= 80 && t < 120)
        F = -0.0001;
    else 
        if (t >= 200 && t < 240)
            F = 0.00007;
        else
            F = 0;   
        end
    end
end
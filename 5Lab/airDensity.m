function rho = airDensity(y)
    R = 8.31; % единиц не будет
    M = 0.029; % кг/моль
    T = 300; % К
    g = 9.81; % м/с^2
    rho0 = 1;
    rho = rho0 * exp((-M * g * y) / (R * T));
end
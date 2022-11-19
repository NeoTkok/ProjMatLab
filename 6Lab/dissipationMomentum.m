function M = dissipationMomentum(omega, rho, L)
    k = 500;
    M = k * omega * rho * L / 2;
end
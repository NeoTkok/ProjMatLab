function dudt = fcn(t,u)
    m = u(1);
    rx = u(2);
    ry = u(3);
    vx = u(4);
    vy = u(5);
    alph = u(6);
    omega = u(7);
    
    
    Uotn = 28000; g = 9.81; L = 70;
    
    dudt = zeros(size(u));
    rho = airDensity(ry);

    massFlow = Summ(t);
    beta = BET(t);


    dudt(1) = massFlow;
    dudt(2) = vx;
    dudt(3) = vy;
    dudt(4) = (-massFlow * Uotn * sin(beta+alph) + resistanceForce(vx,rho,pi/2-alph)) / m;
    dudt(5) = -(3.985751 * 10^.14/(6371000+ry)^.2) + (-massFlow * Uotn * cos(beta+alph) + resistanceForce(vy,rho,alph)) / m;
    dudt(6) = omega;
    dudt(7) = (-dissipationMomentum(alph,rho,L) + massFlow * Uotn * L/2 * sin(beta))/(m*L*L/12);
end
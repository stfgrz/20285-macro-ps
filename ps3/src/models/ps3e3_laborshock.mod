% RBC model with labor disutility shock (Part 3, Q5-Q6)
close all;

var c n k y z kn cn rk R w i vphi;
varexo eps eta;

parameters beta, alpha, delta, sigma, phi, rho, rho_vphi;
beta      = 0.99;
alpha     = 1/3;
delta     = 0.025;
sigma     = 1;
phi       = 1;
rho       = 0.9;
rho_vphi  = 0.5;       % persistence of labor disutility shock

model;
R        = rk + 1 - delta;
c^(-sigma) = beta*c(+1)^(-sigma)*R(+1);
vphi*n^(phi) = c^(-sigma)*w;              % modified labor supply
cn       = c / n;
y        = z*(k(-1)^alpha)*(n^(1-alpha));
w        = (1-alpha)*z*kn^alpha;
rk       = alpha*z*kn^(alpha-1);
kn       = k(-1)/n;
c + k    = y + (1-delta)*k(-1);
i        = k - (1-delta)*k(-1);
log(z)     = rho*log(z(-1)) + eps;
log(vphi)  = rho_vphi*log(vphi(-1)) + eta;   % labor disutility process
end;

steady_state_model;
z    = 1;
vphi = 1;
R    = 1/beta;
rk   = R - (1 - delta);
kn   = (rk/alpha)^(1/(alpha-1));
w    = (1-alpha)*(kn^alpha);
cn   = kn^alpha - delta*kn;
n    = ( (cn^(-sigma))*(1-alpha)*(kn^alpha) )^( 1/(phi+sigma) );
k    = kn*n;
c    = cn*n;
y    = (kn^alpha)*n;
i    = delta*k;
end;

steady;
check;

shocks;
var eps = 0.01^2;
var eta = 0.01^2;
end;

stoch_simul(irf=20,loglinear,order=1,hp_filter=1600) y c n k w z vphi;

% RBC model - variant with sigma = 10 (for Q4 comparative)
close all;

var c n k y z kn cn rk R w i;
varexo eps;

parameters beta, alpha, delta, sigma, phi, rho;
beta  = 0.99;
alpha = 1/3;
delta = 0.025;
sigma = 10;         % <-- changed from baseline (sigma=1)
phi   = 1;
rho   = 0.9;

model;
R        = rk + 1 - delta;
c^(-sigma) = beta*c(+1)^(-sigma)*R(+1);
c^(-sigma)*w = n^(phi);
cn       = c / n;
y        = z*(k(-1)^alpha)*(n^(1-alpha));
w        = (1-alpha)*z*kn^alpha;
rk       = alpha*z*kn^(alpha-1);
kn       = k(-1)/n;
c + k    = y + (1-delta)*k(-1);
i        = k - (1-delta)*k(-1);
log(z)   = rho*log(z(-1)) + eps;
end;

steady_state_model;
z  = 1;
R  = 1/beta;
rk = R - (1 - delta);
kn = (rk/alpha)^(1/(alpha-1));
w  = (1-alpha)*(kn^alpha);
cn = kn^alpha - delta*kn;
n  = ( (cn^(-sigma))*(1-alpha)*(kn^alpha) )^( 1/(phi+sigma) );
k  = kn*n;
c  = cn*n;
y  = (kn^alpha)*n;
i  = delta*k;
end;

steady;
check;

shocks;
var eps = 0.01^2;
end;

stoch_simul(irf=20,loglinear,order=1,hp_filter=1600) y c n k w z;

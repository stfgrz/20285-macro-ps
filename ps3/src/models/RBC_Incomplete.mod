% This Dynare code simulates a simple RBC model by first-order log-linear approximation.
% Author: Henri Graul
% This version: 08/04/2026
% COMPLETED VERSION

% In order to fill out this code, please refer to the set-up given in PS3 Q3

%%%%%%%%%%%%%%%%%%%%%%% Prelims %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
%%
%%%%%%%%%%%%%%%%%%%%%%% Endogenous Variables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
var
c		% consumption 
n		% employment 
k		% capital
y		% output
z		% TFP

% auxiliary variables
kn		% capital stock per employee
cn		% consumption per capita
rk		% rental rate of capital
R		% gross real interest rate
w		% wage rate
i		% investment
;

%%
%%%%%%%%%%%%%%%%%%%%%%% Exogenous Variables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
varexo 
eps		% productivity shocks
;  
    
%%
%%%%%%%%%%%%%%%%%%%%%%% Parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

parameters beta, alpha, delta, sigma, phi, rho;

beta	= 0.99; 	                      % discount rate
alpha	= 1/3;		                      % capital share
delta	= 0.025;	                      % depreciation rate
sigma	= 1;		                      % inverse elasticity of inter-temporal substitution
phi		= 1;	 	                      % inverse Frisch elasticity of labor supply
rho		= 0.9;		                      % persistence of TFP shocks


%%
%%%%%%%%%%%%%%%%%%%%%%% Model Equations %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

model;

% Households
R = rk + 1 - delta;                                % Gross real rate
c^(-sigma) = beta*c(+1)^(-sigma)*R(+1);            % Euler equation
c^(-sigma)*w = n^(phi);                             % Labor supply
cn		= c / n;                                    % Consumption per capita

% Firms
y		= z*(k(-1)^alpha)*(n^(1-alpha));            % Production function
w		= (1-alpha) * z * kn^alpha;                 % Wage rate
rk		= alpha * z * kn^(alpha-1);                 % Rental rate of capital
kn		= k(-1) / n;                                % Capital stock per employee


% Market clearing
c + k = y + (1-delta)*k(-1);                        % Good market clearing

% Get investment from capital lom
i = k - (1-delta)*k(-1);                            % Investment 

% Shocks
log(z) = rho*log(z(-1)) + eps;                      % Technology process

end;

%%%%%%%%%%%%%%%%%%%%%%% Steady State %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

steady_state_model;
z	= 1;                                
R	= 1/beta;
rk	= R - (1 - delta);
kn	= (rk/alpha)^(1/(alpha-1));
w	= (1-alpha)*(kn^alpha);
cn	= kn^alpha - delta*kn;
n	= ( (cn^(-sigma))*(1-alpha)*(kn^alpha) )^( 1 / (phi+sigma) );
k	= kn*n;
c	= cn*n;
y	= (kn^alpha)*n;
i	= delta*k;
end;

steady;
check;

%%%%%%%%%%%%%%%%%%%%%%%%% Shocks%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
shocks;
var eps  = 0.01^2;                           % 1% Shock to technology 
end;

%% Obtain policy functions, IRFs and second moments
stoch_simul(irf=20,loglinear,order=1,hp_filter=1600)
y c n k w z;                         

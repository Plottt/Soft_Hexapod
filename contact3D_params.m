% *************************** %
% 4. Ground Interaction Model %
% *************************** %

% body mass
m = 10; %[kg] 

% gravitational acceleration
g = 9.81; %[m/s^2]

% ----------------------
% 4.1 Vertical component
% ----------------------

% stiffness of ground interaction along contact normal axis
k_gn = m*g/0.01; %[N/m]

% max relaxation speed of normal ground interaction
v_gn_max = 0.03; %[m/s]



% ------------------------
% 4.2 Horizontal component
% ------------------------

% sliding friction coefficient
mu_slide = 0.8; %[]

% sliding to stiction transition velocity limit
vLimit = 0.01; %[m/s]

% stiffness of ground stiction along contact tangential
k_gt = m*g/0.1; %[N/m]

% max relaxation speed of ground stiction
v_gt_max = 0.03; %[m/s] 

% stiction to sliding transition coefficient
mu_stick = 0.9; %[]



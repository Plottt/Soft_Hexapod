
% limb parameters
k_limb = 0.0005; % N*m/deg
c_limb = 0.007; % N*m / (deg/s)
r_SMA2limb = 0.009; % distance from SMA centerline to limb centerline [m]
rad_limb = 0.0125; % limb radius [m]
n_segs = 10; % number of discretized segments per limb
seg_length = 0.01; % segment length [m]
limb_density = 500; % [kg/m^3]

% SMA parameters
Fmax_SMA = 10; % Max SMA Spring force [N]
R_SMA = .08; % Ohms
c_SMA = 837.36; % SMA specific heat [J / kg * K]
m_SMA = 0.0025; % mass of SMA [kg]
h_SMA = .3; %.2; % Heat transfer coefficient [W / K]
max_SMA_Energy_J = 150; % Max SMA energy in J. This is a cap that makes the SMA behave nicely, but should be removed with a better model

% Other parameters
T_amb = 23; % Ambient Temp [C]
V_0 = 7; % Supply Voltage [V]
PWM_max = 0.35; % Max PWM to limb
% 
% 
% swing_angles = [3.5, 4.5, 5.5];
% num_angles = length(swing_angles);
% 
% final_xs = zeros(length(num_angles));
% final_ys = zeros(length(num_angles));
% final_zs = zeros(length(num_angles));
% 
% for i = 1:num_angles
%     swing_angle = swing_angles(i)
%     simOut = sim("model.slx", 'SrcWorkspace', 'current');
%     final_xs(i) = simOut.x.Data(end);
%     final_ys(i) = simOut.y.Data(end);
%     final_zs(i) = simOut.z.Data(end);
% end
% 
% writematrix(swing_angles, "swing_angles.txt")
% writematrix(final_xs, "final_xs.txt");
% writematrix(final_ys, "final_ys.txt");
% writematrix(final_zs, "final_zs.txt");


% FOR TURNING
swing_angles = [1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5, 6];
num_angles = length(swing_angles);

final_yaws = zeros(length(num_angles));


for i = 1:num_angles
    swing_angle = swing_angles(i)
    simOut = sim("Model_turn.slx", 'SrcWorkspace', 'current');
    final_yaws(i) = simOut.theta_z.Data(end);

end

writematrix(swing_angles, "swing_angles.txt")

writematrix(final_yaws, "final_zs.txt");
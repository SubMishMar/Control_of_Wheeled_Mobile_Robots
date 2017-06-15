clear all
% Kinematic Parameters
L = 0.13;               % distance from fixed wheel to O_m (half track gauge)
r = 0.1;                % fixed wheel radius
d = 0.15;               % distance from P' to O_m along x-axis
R = 2;                  % radius of circular trajectory
wd = 0.5;
D_fixed = [-1;-1];      % fixed point position
D_theta = pi;           % fixed orientation
mode = 0;               % 0 - circular trajectory tracking/ 1 - fixed point tracking
animation = 0;          % 0 - no animation/ 1-with animation
if(mode==0)
    sim_time = '15';
else
    sim_time = '5';
end;

% Estimated Parameters
err_r = 0;              % percentage error in fixed wheel radius
err_L = 0;              % percentage error in track gauge

r_e = (1 + err_r)*r;    % estimated fixed wheel radius
L_e = (1 + err_L)*L;    % estimated L (half of track gauge)

% Initial posture
theta0 = pi;
x0 = 2.3;
y0 = 0;

% Static Decoupling Gain
K = 10;             

% % Dynamic Decoupling Gains
Kp = 25;
Kv = 10;
% 
% % Lyapunov Control Gains
Kx = 10;
Ky = 15;
Kt = 10;

RunLyapunovControl;
% RunStaticControl
% RunDynamicControl;
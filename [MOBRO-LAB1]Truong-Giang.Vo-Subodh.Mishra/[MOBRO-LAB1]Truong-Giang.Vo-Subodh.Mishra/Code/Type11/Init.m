clear all
% Kinematic Parameters
a = 0.15;               % distance from steerable wheel to O_m
r = 0.1;                % fixed wheel radius
d = 0.05;               % distance from P'' to steerable wheel along x-axis
R = 2;                  % radius of circular trajectory
wd = 0.5;

% Estimated Parameters
err_r = 0;              % percentage error in fixed wheel radius
err_a = 0;              % percentage error in track gauge

r_e = (1 + err_r)*r;    % estimated fixed wheel radius
a_e = (1 + err_a)*a;    % estimated L (half of track gauge)

K=5;

Kp = 25;
Kd = 10;

Kx=10;
Ky=10;
Kpsi=10;

x0 = 2.3;
y0 = 0;
theta0 = pi;

% RunStaticControl
% RunDynamicControl
RunLyapunov11
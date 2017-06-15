close all;
clear;
%Initial Conditions
x0=2.3;
y0=0;
theta0=pi;
%System Parameters
R=2;
wd=0.5;
a=0.3;
r=0.1;
%Controller Gains
kx=1;
ky=5;
kth=6;
load_system('lyapunov11');
sim('lyapunov11');
%Plot trajectory
f=figure('Position', [100, 100, 1600, 650]);
movegui(f,'center');
traj = subplot(1,2,1);
dplot = plot(traj,hd(:,1),hd(:,2),'g-','linewidth',3);
axis equal;
axis([-2.5 2.5 -2.5 2.5]);
hold on;
aplot = plot(traj,h(:,1),h(:,2),'b-','linewidth',1.5);
grid on;
xlabel('x (m)','Interpreter','latex');
ylabel('y (m)','Interpreter','latex');
title('\textbf{Robot Trajectory}','Interpreter','latex')
legend([dplot,aplot],'Desired Trajectory','Actual Trajectory','Location','SouthEast');
%Plot error
error_plot = subplot(1,2,2);
etheta = hd(:,3)-h(:,3);
error=hd-h;
[hAx,hLine1,hLine2] = plotyy(error_plot,[tout, tout],[error(:,1), error(:,2)],tout,etheta);
hLine1(1).Color = 'b';
hLine1(2).Color = 'c';
hLine2.Color = 'r';
hLine1(1).LineWidth = 1.5;
hLine1(2).LineWidth = 1.5;
hLine2(1).LineWidth = 1.5;
hold on;
grid on;

title('\textbf{Tracking Errors}','Interpreter','latex');
xlabel('Time (s)','Interpreter','latex');
ylabel(hAx(1),'Distance (m)','Interpreter','latex') % left y-axis
ylabel(hAx(2),'Angle (rad)','Interpreter','latex','Color','r') % right y-axis
hAx(1).YColor = [0 0 1];
hAx(2).YColor = [1 0 0];
set(hAx(1),'YLim',[-0.3 0.7]);
set(hAx(1),'YTick',[-0.3:0.05:0.7]);
set(hAx(2),'YLim',[-1.6 3.725]);
set(hAx(2),'YTick',[-1.6:0.5:3.725]);
[hleg1, hobj1] = legend([hLine1(1) hLine1(2) hLine2],'Error along x-axis','Error along y-axis','Error in orientation','Location','SouthEast');

plotInput;

close all;
load_system('LyapunovControl');
set_param('LyapunovControl','StopTime',sim_time);
sim('LyapunovControl');
% Plot animation
% dplot = plot(hd(:,1),hd(:,2),'g-','linewidth',2);
% axis equal;
% axis([-2.5 2.5 -2.5 2.5]);
% hold on;
% title('Desired and Actual Trajectory of Robot using Static Decoupling Control');
% xlabel('$x\ (m)$','Interpreter','latex');
% ylabel('$y\ (m)$','Interpreter','latex');
% aplot = plotVehicle(h(1,:),2);
% for i=2:2:size(h,1)
%     plotVehicle(h(i,:));
%     pause(0.0001);
% end;
% legend([dplot,aplot],'Desired Trajectory','Actual Trajectory','Location','NorthEast');

%Plot trajectory
%Plot trajectory
f=figure('Position', [100, 100, 1600, 650]);
movegui(f,'center');
traj = subplot(1,2,1);
if mode==0
    dplot = plot(traj,hd(:,1),hd(:,2),'g-','linewidth',3);
else
    plot(traj,D_fixed(1),D_fixed(2),'go','markersize',4,'markerfacecolor','g');
    dplot = plot(traj,[x0 D_fixed(1)],[y0 D_fixed(2)],'g-','linewidth',3)';
end;
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
% [hAx,hLine1,hLine2] = plotyy(error_plot,[tout, tout],[error(:,1), error(:,2)],tout,etheta);
[hAx,hLine1,hLine2] = plotyy(error_plot,[tout, tout],[hd(:,1)-h(:,1), hd(:,2)-h(:,2)],tout,etheta);
hLine1(1).Color = 'b';
hLine1(2).Color = 'c';
hLine2.Color = 'r';
hLine1(1).LineWidth = 1.5;
hLine1(2).LineWidth = 1.5;
hLine2(1).LineWidth = 1.5;
hold on;
grid on;

title('\textbf{Errors in Positions and Orientation}','Interpreter','latex');
xlabel('Time (s)','Interpreter','latex');
ylabel(hAx(1),'Distance (m)','Interpreter','latex') % left y-axis
ylabel(hAx(2),'Angle (rad)','Interpreter','latex','Color','r') % right y-axis
hAx(1).YColor = [0 0 1];
hAx(2).YColor = [1 0 0];
set(hAx(1),'YLim',[-0.8 0.4]);
set(hAx(1),'YTick',[-0.8:0.1:0.4]);
set(hAx(2),'YLim',[-1.6 0.8]);
set(hAx(2),'YTick',[-1.6:0.2:0.8]);
[hleg1, hobj1] = legend([hLine1(1) hLine1(2) hLine2],'Error along x-axis','Error along y-axis','Error in orientation','Location','SouthEast');
plotInput;

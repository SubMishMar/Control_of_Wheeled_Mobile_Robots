L = 0.13;
d = 0.15;
r = 0.1;
close all
qdot = [2;2];
plot(0,0);
hold on;
axis equal;
axis([-0.4 2.2 -0.25 1.4]);
title('\textbf{Trajectory of robot type (2,0) with different sets of $\dot{q}_m$}','Interpreter','latex');
xlabel('x (m)');
ylabel('y (m)');

sim('DKM');
for i=1:size(h,1)
    plotVehicle(h(i,:));
    pause(0.01);
end;
h22 = h;

qdot = [2;1.5];
sim('DKM');
for i=1:size(h,1)
    plotVehicle(h(i,:));
    pause(0.01);
end;
h15_2 = h;



qdot = [2;1];
sim('DKM');
for i=1:size(h,1)
    plotVehicle(h(i,:));
    pause(0.01);
end;
h12 = h;

qdot = [2;0.5];
sim('DKM');
for i=1:size(h,1)
    plotVehicle(h(i,:));
    pause(0.01);
end;
h05_2 = h;

qdot = [2;0];
sim('DKM');
for i=1:size(h,1)
    plotVehicle(h(i,:));
    pause(0.01);
end;
h02 = h;
p22 = plot(h22(:,1),h22(:,2),'b-','LineWidth',2);
p15_2 = plot(h15_2(:,1),h15_2(:,2),'c','LineWidth',2);
p12 = plot(h12(:,1),h12(:,2),'g','LineWidth',2);
p05_2 = plot(h05_2(:,1),h05_2(:,2),'y','LineWidth',2);
p02 = plot(h02(:,1),h02(:,2),'m','LineWidth',2);


% qdot = [5;1];
% sim('DKM');
% p51 = plot(h(:,1),h(:,2),'LineWidth',2);
% qdot = [5;0];
% sim('DKM');
% p50 = plot(h(:,1),h(:,2),'LineWidth',2);
legend([p22 p15_2 p12 p05_2 p02],'[2.0;2.0]',...
       '[2.0;1.5]','[2.0;1.0]','[2.0;0.5]','[2.0;0.0]',...
       'Location','NorthEast');
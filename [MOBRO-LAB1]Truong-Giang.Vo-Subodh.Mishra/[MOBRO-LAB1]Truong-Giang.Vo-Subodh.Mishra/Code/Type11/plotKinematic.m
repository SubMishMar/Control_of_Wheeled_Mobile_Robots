% clear all;
close all;
a = 0.13;
d = 0.1;
r = 0.1;
phi_dot = 5;
beta_dot = 0;
beta0 = 0;
plot(0,0);
axis equal;
grid on;
axis([-2 5 -3 4]);
hold on;
title('\textbf{Trajectories of robot type (1,1) with $\mathbf{\dot{\varphi}=5(rad.s^{-1})\ and\ \dot{\beta}=0(rad.s^{-1})}$}','Interpreter','latex');
xlabel('$x\ (m)$','Interpreter','latex');
ylabel('$y\ (m)$','Interpreter','latex');
h=[];
for K = 1:5
    beta0 = (K-1)*0.05;
%     set_params('DKM','stop_time','10');
    sim('DKM');
    for i=1:10:size(p,1)
    plotVehicle(p(i,:),beta(i),d,a,1.5);
    pause(0.0001);
    end;
    h(K) = plot(p(:,1),p(:,2),'linewidth',1.5);
end;
lg=legend(h,'$\beta(0)=0.00$','$\beta(0)=0.00$','$\beta(0)=0.05$','$\beta(0)=0.10$','$\beta(0)=0.15$','location','southeast');
set(lg,'Interpreter','latex');


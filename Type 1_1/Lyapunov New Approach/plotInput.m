h=figure('position',[100 100 800 500]);
movegui('center');
u1 = subplot(2,1,1);
plot(u1,tout,u(:,1),'linewidth',1.5);
title('\textbf{Control input $u_m$ of the system in $\mathrm{m.s^{-1}}$}','Interpreter','latex');
% title('Control input $u_m$ of the system in $\mathrm{m.s^{-1}}$','Interpreter','latex');

% xlabel('Time ($s$)','Interpreter','latex');
ylabel('$u_m\ (m.s^{-1})$','interpreter','latex');
grid on;
u2 = subplot(2,1,2);
plot(u2,tout,u(:,2),'linewidth',1.5);
title('\textbf{Control input $u_{\omega}$ of the system $\mathrm{rad.s^{-1}}$}','Interpreter','latex');
xlabel('Time ($s$)','Interpreter','latex');
ylabel('$u_m\ (m.rad^{-1})$','interpreter','latex');
grid on;

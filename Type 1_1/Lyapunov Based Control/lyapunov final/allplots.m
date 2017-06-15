figure('Name','Path followed by Type (1,1) Robot','NumberTitle','off')
plot(0,0);
hold on;
axis([-3 3 -3 3]);
axis equal;
grid;
for i=1:200:size(output,1)
    plotVehicle(output(i,:));
    pause(0.01);
end;
figure('Name','Position, steering angle and orientation errors','NumberTitle','off');
subplot(2,2,1);
plot(t,xR-x,'LineWidth',1);
grid;
xlabel('time(s)');
ylabel('Error along X(m) axis');
title('Error along X axis vs Time');
subplot(2,2,2);
plot(t,yR-y,'LineWidth',1);
grid;
xlabel('time(s)');
ylabel('Error along Y(m) axis');
title('Error along Y axis vs Time');
subplot(2,2,3);
plot(t,betaR-beta,'LineWidth',1);
grid;
xlabel('time(s)');
ylabel('Error in Steering Angle (rad)');
title('Error in Steering Angle (\beta) vs Time');
subplot(2,2,4)
plot(t,(psiR-betaR)-(psi-beta),'LineWidth',1);
grid;
xlabel('time(s)');
ylabel('Error in Orientation Angle (rad)');
title('Error in Orientation Angle (\theta) vs Time');
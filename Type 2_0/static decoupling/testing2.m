plot(0,0);
hold on;
axis([-5 5 -5 5]);
axis equal;

for i=1:5:size(Posture,1)
    plotVehicle(Posture(i,:));
    pause(0.01);
end;
hold on;
plot(Posture(1,1),Posture(1,2),'*');


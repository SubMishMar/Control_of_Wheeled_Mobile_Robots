plot(0,0);
hold on;
axis([-5 5 -5 5]);
axis equal;
thetaop=[output(end,1)*ones(length(thetaop),1),output(end,2)*ones(length(thetaop),1),thetaop];
output=[output;thetaop];
for i=1:2:size(output,1)
    plotVehicle(output(i,:));
    pause(0.01);
end;


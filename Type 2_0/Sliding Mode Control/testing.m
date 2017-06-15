plot(0,0);
hold on;
axis([-5 5 -5 5]);
axis equal;
output=[x y theta];
for i=1:300:size(output,1)
    plotVehicle(output(i,:));
    pause(0.01);
end;


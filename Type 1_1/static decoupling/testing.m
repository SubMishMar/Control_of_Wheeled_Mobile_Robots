plot(0,0);
hold on;
axis([-5 5 -5 5]);
axis equal;

for i=1:5:size(output,1)
    plotVehicle(output(i,:));
    pause(0.01);
end;


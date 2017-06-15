plot(0,0);
hold on;
axis([-5 5 -5 5]);
axis equal;
for i=1:10:size(output,1)
    plotVehicle(output(i,:));
    pause(0.1);
end;


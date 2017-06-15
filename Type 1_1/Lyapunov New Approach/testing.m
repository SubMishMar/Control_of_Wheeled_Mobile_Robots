plot(0,0);
hold on;
axis([-3 3 -3 3]);
axis equal;
output=h;
for i=1:20:size(output,1)
    plotVehicle(output(i,:));
    pause(0.01);
end;


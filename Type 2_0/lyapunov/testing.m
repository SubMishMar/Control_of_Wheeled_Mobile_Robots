plot(0,0);
hold on;
axis([-3 3 -3 3]);
axis equal;
for i=1:10:size(output,1)
    plotVehicle(output(i,:));
    pause(0.01);
end;
figure(2)
plot(t,output(:,1)-input(:,1))


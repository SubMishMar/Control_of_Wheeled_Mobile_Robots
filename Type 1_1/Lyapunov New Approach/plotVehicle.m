function [] = plotVehicle(pos)

x = pos(1);
y = pos(2);
theta = pos(3);
d=0.1;
L = 0.03;
p1 = [x+d*cos(theta);y+d*sin(theta)];
p2 = [x+L*cos(theta+pi/2);y+L*sin(theta+pi/2)];
p3 = [x+L*cos(theta-pi/2);y+L*sin(theta-pi/2)];

h = get(gca);
hold on;
plot([p1(1) p2(1)],[p1(2) p2(2)],'-','Color',[0.28,0.51,0.7]);
plot([p1(1) p3(1)],[p1(2) p3(2)],'-','Color',[0.28,0.51,0.7]);
plot([p2(1) p3(1)],[p2(2) p3(2)],'-','Color',[0.28,0.51,0.7]);

end
function hdl = plotVehicle(pos,w)
if nargin == 1
    w=1;
end;
d=0.15;
L = 0.13;
theta = pos(3);
x = pos(1)-d*cos(theta);
y = pos(2)-d*sin(theta);


p1 = [x+d*cos(theta);y+d*sin(theta)];
p2 = [x+L*cos(theta+pi/2);y+L*sin(theta+pi/2)];
p3 = [x+L*cos(theta-pi/2);y+L*sin(theta-pi/2)];

h = get(gca);
hold on;
hdl=plot([p1(1) p2(1)],[p1(2) p2(2)],'-','Color',[0.28,0.51,0.7],'linewidth',w);
plot([p1(1) p3(1)],[p1(2) p3(2)],'-','Color',[0.28,0.51,0.7],'linewidth',w);
plot([p2(1) p3(1)],[p2(2) p3(2)],'-','Color',[0.28,0.51,0.7],'linewidth',w);

end
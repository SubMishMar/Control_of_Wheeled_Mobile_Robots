function hdl = plotVehicle(pos,beta,d,L,w)
if nargin == 4
    w=1;
end;
l = 0.13;
theta = pos(3);
x = pos(1)-L*cos(theta)-d*cos(beta+theta);
y = pos(2)-L*sin(theta)-d*sin(beta+theta);


p1 = [x+L*cos(theta);y+L*sin(theta)]; %tip
p2 = [x+l*cos(theta+pi/2);y+l*sin(theta+pi/2)];
p3 = [x+l*cos(theta-pi/2);y+l*sin(theta-pi/2)];
p4 = [pos(1);pos(2)];

h = get(gca);
hold on;
hdl=plot([p1(1) p2(1)],[p1(2) p2(2)],'-','Color',[0.28,0.51,0.7],'linewidth',w);
plot([p1(1) p3(1)],[p1(2) p3(2)],'-','Color',[0.28,0.51,0.7],'linewidth',w);
plot([p2(1) p3(1)],[p2(2) p3(2)],'-','Color',[0.28,0.51,0.7],'linewidth',w);
plot([p1(1) p4(1)],[p1(2) p4(2)],'g-');
plot(p4(1),p4(2),'r.');

end
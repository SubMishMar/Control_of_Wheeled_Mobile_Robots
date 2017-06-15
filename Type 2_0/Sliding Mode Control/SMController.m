function u_m=SMController(u)

lambdaX=10;
lambdaY=10;

v=u(1:2);
v=v(:);

ddxr=u(3);
dxr=u(4);
dx=u(5);

ddyr=u(6);
dyr=u(7);
dy=u(8);

V=u(9);
theta=u(10);

alpha=[ddxr+lambdaX*(dxr-dx);ddyr+lambdaY*(dyr-dy)];
beta=-[cos(theta) -V*sin(theta);sin(theta) V*cos(theta)];

u_m=inv(beta)*(v-alpha);
end
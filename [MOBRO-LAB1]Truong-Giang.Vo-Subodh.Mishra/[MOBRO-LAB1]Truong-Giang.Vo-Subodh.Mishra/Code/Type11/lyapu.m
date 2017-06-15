function u_m=lyapu(u)
global a;
a=0.15;
u=u(:);

vr=u(1);
omegar=u(2);
betar=u(3);
xe=u(4);
ye=u(5);
psie=u(6);

beta=u(7);

A=vr*a*cos(psie);
B=vr*a*sinc(psie/pi);
C=vr*sin(betar)+omegar;

kxe=u(8);
kye=u(9);
kpsie=u(10);

V=(1/a)*(A+kxe*xe);
W=B*kye*ye+kpsie*psie+C-sin(beta)*V;

u_m=[V;W];
end
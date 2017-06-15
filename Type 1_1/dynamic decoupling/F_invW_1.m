function u_m=F_invW_1(u)

W=u(1:2);
W=W(:);
v=u(3);
omega=u(4);
theta=u(5);
beta=u(6);
fx1=-0.3*v*v*sin(beta)*sin(beta+theta)-0.3*v*omega*sin(beta+theta)-0.1*v*omega*sin(theta+beta)*cos(beta)-0.1*cos(theta+beta)*(v*sin(beta)+omega)^2;
fx2=0.3*v*v*sin(beta)*cos(beta+theta)+0.3*v*omega*cos(beta+theta)+0.1*v*omega*cos(theta+beta)*cos(beta)-0.1*sin(theta+beta)*(v*sin(beta)+omega)^2;
fx=[fx1;fx2];
alpha=[0.3*cos(theta+beta)-0.1*sin(theta+beta)*sin(beta) -0.1*sin(theta+beta);
       0.3*sin(theta+beta)+0.1*cos(theta+beta)*sin(beta)  0.1*cos(theta+beta)];
u_m=inv(alpha)*(W-fx);
end

function u_m=kinv(u)
theta=u(1);
beta=u(2);
Kinv=inv([0.3*cos(theta+beta)-0.1*sin(theta+beta)*sin(beta) -0.1*sin(theta+beta);
          0.3*sin(theta+beta)+0.1*cos(theta+beta)*sin(beta)  0.1*cos(theta+beta)]);
u_m=Kinv*[u(3);u(4)];  
end
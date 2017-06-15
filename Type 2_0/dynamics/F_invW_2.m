function u_m=F_invW_2(u)

W=u(1:3);
W=W(:);
theta=u(4);
v=u(5);

u_m=pinv([cos(theta) -v*sin(theta) 0;sin(theta) v*cos(theta) 0;0 0 1])*W;
u_m=u_m(1:2:3);
end

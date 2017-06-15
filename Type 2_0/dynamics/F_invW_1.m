function u_m=F_invW_1(u)

W=u(1:2);
W=W(:);
theta=u(3);
v=u(4);

u_m=pinv([cos(theta) -v*sin(theta);sin(theta) v*cos(theta)])*W;

end

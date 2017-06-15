function u_m=F_invW_1(u)
W=u(1:2);
W=W(:);
theta=u(4);
u_m=inv([cos(theta),-0.15*sin(theta);sin(theta),0.15*cos(theta)])*W;
end

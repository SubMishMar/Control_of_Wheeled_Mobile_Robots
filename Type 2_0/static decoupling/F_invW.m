function u_m=F_invW(u)


W=u(1:2);

W=W(:);
theta=u(3);
u_m=inv([cos(theta),-0.15*sin(theta);sin(theta),0.15*cos(theta)])*W;

end

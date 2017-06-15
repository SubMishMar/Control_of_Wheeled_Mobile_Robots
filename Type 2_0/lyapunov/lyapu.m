function u_m=lyapu(u)

u=u(:);

Xe=u(1);
Ye=u(2);
ThetaE=u(3);
Vref=u(4);
wref=u(5);

% Kx=235;
% Ky=235;
% Ktheta=175;

 Kx=10;
 Ky=10;
 Ktheta=10;

u_m=[Vref*cos(ThetaE)+Kx*Xe;wref+Ky*Vref*(sinc(ThetaE/pi))*Ye+Ktheta*ThetaE];
u_m=u_m(:);

end
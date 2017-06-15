function u_m=lypo(u)

Vref=u(1);
ThetaE=u(2);
Xe=u(3);
wRef=u(4);
Ye=u(5);


Kx=1;
Ky=0.7;
Ktheta=0.009;

u_m=[Vref*cos(ThetaE)+Kx*Xe;wRef+Ky*Vref*sinc(ThetaE/pi)*Ye+Ktheta*ThetaE];
u_m=u_m(:);

end
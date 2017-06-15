function [x,y,theta,V,W]=traject(dphi1,dphi2,t)
 global thetaInit;
 global xInit;
 global yInit;
 
r=0.1;
L=0.13;
V=(r/2)*(dphi1+dphi2);
W=(r/(2*L))*(dphi1-dphi2);

if W==0
    
theta=thetaInit;
x=xInit+V*cos(theta)*t;
y=yInit+V*sin(theta)*t;

else
 
theta=thetaInit+W*t;
x=xInit+(V/W)*sin(W*t);
y=yInit-(V/W)*cos(W*t);

end

end
function dYdt = ControlledIndProjFun(t,Y,Miu,YKs,Kc,tau_i,F0,ysp,YSo,xo,Kla,Ko2P,u_air,theta,tau_s)
x = Y(1);
y = Y(2);
y_s = Y(3);
I = Y(4);
e = ysp - y_s;
if t > 120
    F = F0+Kc*e+(Kc*I)/tau_i;
else
    F = 0;
end

if y_s > ysp
    e = 0;
else
   e = ysp - y_s; 
end
M = (1- u_air).*F;
u = u_air+(M/25);
B = xo+YSo-x;
D = YKs+xo+YSo-x;

dxdt = Miu*x.*(B/D);
dydt = Kla.*((u/u_air)-y) - Ko2P*dxdt;
dy_sdt = (y-y_s)./tau_s;
dIdt = e;
dYdt = [dxdt; dydt; dy_sdt; dIdt];
end
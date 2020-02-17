function dYdt = IndProjFun(t,Y,Miu,YKs,YSo,xo,Kla,Ko2P,u_air,theta,tau_s)
x = Y(1);
y = Y(2);
y_s = Y(3);

F = 0;
M = (1- u_air).*F;
u = u_air+(M/25);
B = xo+YSo-x;
D = YKs+xo+YSo-x;

dxdt = Miu*x.*(B/D);
dydt = Kla.*((u/u_air)-y) - Ko2P*dxdt;
dy_sdt = (y-y_s)./tau_s;
dYdt = [dxdt; dydt; dy_sdt];
end
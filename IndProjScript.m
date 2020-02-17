u_air = 0.21;
theta = 0.16667; % min
tau_s =  0.16667;% min
Miu = 0.0640; % min^-1
YKs = 22.33; % OD
YSo = 12.53; % OD
Kla = 7.08; % min^-1
Ko2P = 69.7; % mol/[L.OD]
xo = 0.18; %OD
fhandle = @IndProjFun; 
tspan = [0 1000]; 
Y0 = [0.18; 1; 1];
[t,Y] = ode45(fhandle,tspan,Y0,[],Miu,YKs,YSo,xo,Kla,Ko2P,u_air,theta,tau_s);

x = Y(:,1);
y = Y(:,2);
y_s = Y(:,3);

plot(t,y_s,'linewidth',2)
xlabel('t (min)')
ylabel('Y_s')
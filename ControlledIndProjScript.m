u_air = 0.21;
theta = 0.16667; % min
tau_s =  0.16667;% min
Miu = 0.0640; % min^-1
YKs = 22.33; % OD
YSo = 12.53; % OD
Kc = 20000;
F0 = 0;
tau_i = 1.6667;
ysp = 0.5;
Kla = 7.08; % min^-1
Ko2P = 69.7; G4V5[% mol/[L.OD]
xo = 0.18; %OD
fhandle = @ControlledIndProjFun; 
tspan = [0 1000]; 
Y0 = [0.18; 1; 1; 0];
[t,Y] = ode45(fhandle,tspan,Y0,[],Miu,YKs,Kc,tau_i,F0,ysp,YSo,xo,Kla,Ko2P,u_air,theta,tau_s);

x = Y(:,1);
y = Y(:,2);
y_s = Y(:,3);
I = Y(:,4);

plot(t,y_s,'linewidth',2)
xlabel('t (min)')
ylabel('Y_s')
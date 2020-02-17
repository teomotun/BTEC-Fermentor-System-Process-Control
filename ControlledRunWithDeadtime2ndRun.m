%15% Proportional Band, Kc = 44.3038SLPM
tau_s = 0.16667; %MIN
tau_p = 0.132275; %MIN^-1
Kp = 4.7619;
theta = 0.1667;
Ka = 0.0316; %SLPM^-1
Kc = 44.3038; %SLPM
tau_i = 1.6667; %MIN
a = tau_i*tau_p*tau_s*theta;
b = (2*tau_i*tau_p*tau_s)+(tau_i*tau_p*theta)+(tau_i*tau_s*theta);
c = (2*tau_i*tau_p)+(2*tau_i*tau_s)+(tau_i*theta)-(Ka*Kp*Kc*theta*tau_i);
d = (2*Ka*Kc*Kp*tau_i)-(Ka*Kc*Kp*theta)+(2*tau_i);
e = 2*Ka*Kc*Kp;
P = [a b c d e];
r = roots(P);
disp(r)
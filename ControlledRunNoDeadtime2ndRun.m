%15% Proportional Band, Kc = 44.3038SLPM
tau_s = 0.16667; %MIN
tau_p = 0.132275; %MIN^-1
Kp = 4.7619;
Ka = 0.0316; %SLPM^-1
Kc = 44.3038; %SLPM
tau_i = 1.6667; %MIN
a = tau_i*tau_p*tau_s;
b = (tau_p*tau_i) +(tau_s*tau_i);
c = tau_i.*(1+(Ka*Kc*Kp));
d = Ka*Kc*Kp;
P = [a b c d];
r = roots(P);
disp(r)
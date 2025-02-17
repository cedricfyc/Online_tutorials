m = 1000;
b = 50;
r = 10;

s = tf('s');
plant_tf = 1/(m*s + b);

K_p = 1000;

contr_tf = pid(K_p);

% compute closed loop transfer function
% feedback is 1: only output of contr_tf*plant_tf is fedback
closedloop_tf = feedback(contr_tf*plant_tf, 1);

%% P-Controller Simulation

% reference speed = 10 m/s
t = 0:0.1:20;

% simulate step response of closed loop transfer function
figure
step(r*closedloop_tf, t)
axis([0 25 0 15])

%% PID Controller Simulation
K_p = 800;
K_i = 40;
K_d = 30;
contr_tf = pid(K_p, K_i, K_d);

closedloop_tf = feedback(contr_tf*plant_tf, 1);

t = 0:0.1:20;
figure
step(r*closedloop_tf, t)
axis([0 20 0 15])






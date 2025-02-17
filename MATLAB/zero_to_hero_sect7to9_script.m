%% Declaring Variables
m = 1;                              % mass in kg
b = 10;                             % damper constant in N/ms^-1
k = 20;                             % stiffness in N/m
step_val = 1;                       % set point in m
runtime = 7;                        % runtime in s
cond = 0;


K_P = 350;
K_I = 300;
K_D = 50;

%% P-Controller Simulation and Plot
P_Control = 1;
I_Control = 0;
D_Control = 0;

sim('zero_to_hero_sect7to9.slx')

figure
subplot(3, 1, 1)

plot(IN.time, IN.data)
hold on
plot(OUT.time, OUT.data)
hold off
title('Controller Behaviours')
legend('Input Signal', 'P-Controlled Output')
xlabel('t/s')
ylabel('x/m')
ylim([0 1.5])


%% PI-Controller Simulation and Plot
P_Control = 1;
I_Control = 1;
D_Control = 0;

sim('zero_to_hero_sect7to9.slx')

subplot(3, 1, 2)

plot(IN.time, IN.data)
hold on
plot(OUT.time, OUT.data)
hold off
legend('Input Signal', 'PI-Controlled Output')
xlabel('t/s')
ylabel('x/m')
ylim([0 1.5])

%% PID-Controller Simulation and Plot
P_Control = 1;
I_Control = 1;
D_Control = 1;

sim('zero_to_hero_sect7to9.slx')

subplot(3, 1, 3)

plot(IN.time, IN.data)
hold on
plot(OUT.time, OUT.data)
hold off
legend('Input Signal', 'PID-Controlled Output')
xlabel('t/s')
ylabel('x/m')
ylim([0 1.5])

%% Simulink Tuned PID-Controller
figure
cond = 1;
N = 1000;
% N can be adjusted
% tune option requires control design license

sim('zero_to_hero_sect7to9.slx')

plot(IN.time, IN.data)
hold on
plot(OUT.time, OUT.data)
hold off
legend('Input Signal', 'PID-Controlled Output')
xlabel('t/s')
ylabel('x/m')
ylim([0 1.5])


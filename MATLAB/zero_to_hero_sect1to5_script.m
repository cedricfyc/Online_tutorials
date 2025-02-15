m = 1;                              % mass in kg
b = 0.1;                            % damper constant in N/ms^-1
k = 0.3;                            % stiffness in N/m
F = 1.5;                            % input force in N
runtime = 30;                       % runtime in s

sim('zero_to_hero_sect1to5.slx')

figure(1)
plot(ans.x)                         % assignment 3

figure(2)
plot(ans.spring_damper_x)           % assignment 4
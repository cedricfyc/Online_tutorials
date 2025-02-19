m = 1;                              % mass in kg
b = 0.1;                            % damper constant in N/ms^-1
k = 0.3;                            % stiffness in N/m
F = 1.5;                            % input force in N
runtime = 30;                       % runtime in s

sim('zero_to_hero_sect1to5.slx')

figure(1)
plot(x.Time, x.Data)                                       % assignment 3
xlabel('Time/s')
ylabel('x')
title('x against Time')

figure(2)
plot(spring_damper_x.time, spring_damper_x.data)           % assignment 4
xlabel('Time/s')
ylabel('Spring Displacement/m')
title('Spring Displacement against Time')
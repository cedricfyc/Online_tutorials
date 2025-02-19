U_e = 1;                    % input voltage in V
J_Mo = 3.228E-6;            % motor moment of inertia in kgm^2
b = 3.5077E-6;              % motor friction loss coefficient in Nms
K_m = 0.0274;               % motor constant in V/rad/s and in Nm/A
R = 4;                      % coil resistance in ohm
L = 2.75E-6;                % coil inductance in H

target_angular_vel = 20;
simtime = 3;

sim('zero_to_hero_sect11_pid.slx')

figure(1)
subplot(2, 1, 1)
plot(input_voltage.time, input_voltage.data)
xlabel('Time/s'); ylabel('Input Voltage/V'); grid on;

subplot(2, 1, 2)
plot(INPUT.time, INPUT.data)
hold on
plot(ang_vel.time, ang_vel.data)
hold off
xlabel('Time/s'); ylabel('Angular Velocity/rad*s^-1'); grid on;
ylim([0 25])
legend('Target \omega', 'Plant \omega')
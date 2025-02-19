U_e = 1;                    % input voltage in V
J_Mo = 3.228E-6;            % motor moment of inertia in kgm^2
b = 3.5077E-6;              % motor friction loss coefficient in Nms
K_m = 0.0274;               % motor constant in V/rad/s and in Nm/A
R = 4;                      % coil resistance in ohm
L = 2.75E-6;                % coil inductance in H

simtime = 3;

sim('zero_to_hero_sect11_plant.slx')

figure
subplot(4, 1, 1)
plot(input_voltage.time, input_voltage.data)
xlabel('Time/s'); ylabel('Input Voltage/V'); grid on;

subplot(4, 1, 2)
plot(motor_torque.time, motor_torque.data)
xlabel('Time/s'); ylabel('Motor Torque/Nm'); grid on;

subplot(4, 1, 3)
plot(ang_vel.time, ang_vel.data)
xlabel('Time/s'); ylabel('Angular Velocity/rad*s^-1'); grid on;

subplot(4, 1, 4)
plot(theta.time, theta.data)
xlabel('Time/s'); ylabel('Angular Disp./rad'); grid on;
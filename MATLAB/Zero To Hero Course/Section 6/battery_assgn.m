%% Load data from excel sheet
data = readtable('Battery_Parameters.xlsx', VariableNamingRule='preserve');

%% Declare variables
SOC = table2array(data(:, 1));           % State of charge
OCV = table2array(data(:, 2));           % Open-circuit voltage
R_charge = table2array(data(:, 3));      % Charge resistance
R_discharge = table2array(data(:, 4));   % Discharge resistance

%% Plot
figure(1)
plot(SOC, OCV)
title('SOC Vs. OCV')
xlabel('SOC')
ylabel('OCV')

figure(2)
subplot(2,1,1)
plot(SOC, R_charge)
title('SOC Vs. Charging and Discharging Resistances')
legend('Charging Resistance')
xlabel('SOC')
ylabel('Charge Resistance')

subplot(2,1,2)
plot(SOC, R_discharge)
legend('Discharging Resistance')
xlabel('SOC')
ylabel('Discharge Resistance')

%% Model Simulation with 2.3 A starting with a Fully Discharged Cell
sim_time = 3600;                        % Simulation over 1 hr of charging
I = 2.3;                                % Define the Input Current
C_n = 8280;                             % Battery Capacity in Amps Second
                                        % Battery should charge in 1 hr
sim('zero_to_hero_sect6.slx')

%% Model Simulation with 2.3 A starting with a Fully Charged Cell
I = -2.3;                               % Simulation over 1 hr of discharging
                                        % Battery should discharge in 1 hr
sim('zero_to_hero_sect6.slx')
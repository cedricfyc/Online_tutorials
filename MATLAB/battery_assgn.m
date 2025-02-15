%% Load data from excel sheet
data = readtable('Battery_Parameters.xlsx', VariableNamingRule='preserve');

%% Declare variables
SOC = table2array(data(:, 1));           % state of charge
OCV = table2array(data(:, 2));           % open-circuit voltage
R_charge = table2array(data(:, 3));      % charge resistance
R_discharge = table2array(data(:, 4));   % discharge resistance

%% Plot
figure(1)
plot(SOC, OCV)
xlabel('SOC')
ylabel('OCV')

figure(2)
plot(SOC, R_charge)
xlabel('SOC')
ylabel('Charge Resistance')

figure(3)
plot(SOC, R_discharge)
xlabel('SOC')
ylabel('Discharge Resistance')
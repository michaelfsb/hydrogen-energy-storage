addpath("icons")
load("input_data_24h.mat")

URFC = urfc_parameters;
PV = photovoltaic_parameters;
BUS.Voltage = 500;                          % [V]
URFC_TANK.MaxLvl = 1000;                    % [g]
URFC_TANK.MinLvl = 0.2*URFC_TANK.MaxLvl;    % [g]
URFC_TANK.IniLvl = 0.7*URFC_TANK.MaxLvl;    % [g]
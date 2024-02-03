clearvars
load("input_data_24h.mat")
BUS.Voltage = 300;
URFC.Electrolyzer.i_op = 15;
URFC.FuelCell.i_op = 6;
URFC.Tank.Initial = 180;

PV = photovoltaic_parameters;
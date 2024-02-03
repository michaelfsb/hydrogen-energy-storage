classdef photovoltaic_parameters < handle
    properties (Constant)
    % Physical constants
    Q = 1.6e-19; % Elementary charge
    K = 1.38e-23; % Boltzmann constant
    % Photovoltaic parameters
    N_ps = 8;            % Number of panels in parallel
    N_ss = 300;          % Number of panels in series
    T_ps = 298;          % Temperature
    Tr = 298;            % Reference temperature
    Isc = 3.27;          % Short circuit current at Tr
    Kl = 0.0017;         % Short circuit current temperature coeff
    Ior = 2.0793e-6;     % Ior - Irs at Tr
    Ego = 1.1;           % Band gap energy of the semiconductor
    A = 1.6;             % Factor. cell deviation from de ideal pn junction  
    end
end

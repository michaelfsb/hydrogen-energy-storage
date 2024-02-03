classdef urfc_parameters < handle
    % urfc_parameters - Class representing the parameters of the URFC model.
    %
    %   Properties:
    %       - R_gas: Gas constant [J/(mol*K)]
    %       - F_constant: Faraday's constant [C/mol]
    %       - n_electrons: Number of electrons involved in the reaction [dimensionless]
    %       - N_cells: Number of cells in the stack [dimensionless]
    %       - A_cell: Active cell area [cm^2]
    %       - E_rev_0: Reversible potential of URPEMFC [V]
    %       - I_loss_internal: Lost internal current density [A/cm^2]
    %       - I_o_anode: Anode exchange current density [A/cm^2]
    %       - I_o_cathode: Cathode exchange current density [A/cm^2]
    %       - R_ion: Area specific ion resistance [Ohm*cm^2]
    %       - R_CR: Area specific contact resistance [Ohm*cm^2]
    %       - R_elect: Area specific resistance between plates and connections [Ohm*cm^2]
    %       - I_limit_anode: Anode limiting current density [A/cm^2]
    %       - I_limit_cathode: Cathode limiting current density [A/cm^2]
    %       - K_anodo: Value [V]
    %       - K_catodo: Value [V]
    %       - T: Temperature of the cell [K]
    %
    %   Example:
    %       params = urfc_parameters;
    %       gas_constant = params.R_gas;
    %       faraday_constant = params.F_constant;
    %
    %   See also: urfc_model
    %
    properties (Constant)
        % Gas constant [J/(mol*K)]
        R_gas = 8.3145;   
        % Faraday's constant [C/mol]                 
        F_constant = 96485;
        % Number of electrons involved in the reaction [dimensionless]                
        n_electrons = 2;                     
        % Number of cells in the stack [dimensionless]
        N_cells = 10;
        % Active cell area [cm^2]                     
        A_cell = 100;  
        % Reversible potential of URPEMFC [V]                   
        E_rev_0 = 1.23;
        % Lost internal current density [A/cm^2]                    
        I_loss_internal = 0.008;
        % Anode exchange current density [A/cm^2]           
        I_o_anode = 0.15;
        % Cathode exchange current density [A/cm^2]                  
        I_o_cathode = 1.5e-4;
        % Area specific ion resistance [Ohm*cm^2]             
        R_ion = 0.01;
        % Area specific contact resistance [Ohm*cm^2]                      
        R_CR = 0.03;
        % Area specific resistance between plates and connections [Ohm*cm^2]                       
        R_elect = 0;
         % Anode limiting current density [A/cm^2]                       
        I_limit_anode = 15;
        % Cathode limiting current density [A/cm^2]
        I_limit_cathode = 2.5;
        % Value [V]             
        K_anodo = 0.0304;                  
        % Value [V]
        K_catodo = 0.0507;                
        % Temperature of the cell [K]
        T = 353.15;                        
    end
end

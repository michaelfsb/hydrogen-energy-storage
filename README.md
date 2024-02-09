[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=michaelfsb/green-hydrogen-production&file=src)

# Hydrogen Energy Storage

## Overview
This repository houses my contributions to MathWorks' Excellence in Innovation [Project 204](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/tree/main/projects/Green%20Hydrogen%20Production), as part of my MSc in Automation and Systems Engineering at the Federal University of Santa Catarina. The project focuses on the development of a DC microgrid integrating a regenerative fuel cell with a photovoltaic panel.

## Project Description
The project delves into the feasibility and efficiency of green hydrogen as a sustainable energy storage solution in microgrids. It includes detailed modeling of unitized regenerative fuel cell (URFC) documented in `report.mlx` for in-depth understanding and provides a `microgrid.slx` file for simulation to analyze the system's behavior and performance, thus fostering advancements in sustainable energy practices.

## Authors
- **Michael Barbosa** - Graduate Student, Federal University of Santa Catarina
- **Gustavo de Andrade** - Supervisor, Federal University of Santa Catarina

## Dependencies

This project has the following dependencies:

- [MATLAB](https://www.mathworks.com/products/matlab.html): MATLAB is a high-level programming language and environment used for numerical computation, visualization, and algorithm development. It is the main software used for developing and running the simulations in this project.

- [Simulink](https://www.mathworks.com/products/simulink.html): Simulink is an extension of MATLAB that provides a graphical environment for modeling, simulating, and analyzing dynamic systems. It is used to create the `microgrid.slx` Simulink model in this project.

- [Simscape](https://www.mathworks.com/products/simscape.html): Simscape is a multidomain physical modeling and simulation tool that allows you to model and simulate complex systems. It is used in this project to model the regenerative fuel cell and other components of the microgrid system.

## License
This project is licensed under the [MIT License](LICENSE.md) - see the file for details.

## How to execute

The Simulink model, `microgrid.slx`, is shown below. This model represents the DC microgrid integrating a regenerative fuel cell with a photovoltaic panel. 

![microgrid](https://github.com/michaelfsb/green-hydrogen-production/assets/31492967/78d08e1b-264f-4d73-ad87-bc13d3839691)

To run the simulation and analyze the system's behavior and performance, follow these steps:

1. Make sure you have MATLAB, Simulink, and Simscape installed and properly configured in your MATLAB environment.

2. Open the `microgrid.slx` model in Simulink.

3. Click on the "Run" button in Simulink to start the simulation.

4. Once the simulation is complete, you can use the [Simulation Data Inspector](https://www.mathworks.com/help/simulink/slref/simulationdatainspector.html) to explore the simulation results or use the scopes insed the lock scopes.

## Demo

The figure below shows the results of the simulation using the default scenario:

![resultado](https://github.com/michaelfsb/green-hydrogen-production/assets/31492967/bd8c92ba-9ee3-412f-8c8d-299203a34cf7)

## Anylse other operation scenarios

### Power Delivery by URFC

The default scenario involves applying a current to the URFC that was calculated using numerical optimal control. This calculation will be explained in detail in my master's thesis (a link will be added after publication). You can modify the applied current by changing the scenario in the "Signal Editor" block.

Power Delivery Scenarios:
- Optimal_Trajectory (DEFAULT): The current applied to the URFC is determined by the optimal trajectory calculated using numerical optimal control.
- Constant_Current: A constant current is applied to the URFC.
- Only_Electrolyzer: Only the electrolyzer component of the URFC is powered.
- Only_Fuel_Cell: Only the fuel cell component of the URFC is powered.

IMPORTANT: To improve the simulation time, make sure to check the "Interpolate data" option in the "Signal Editor" block.

### Solar Radiation and Power Demand

You can modify the file `input_data_24h.mat` to change the data of solar radiation and power demand in the consumer. You can adjust the values according to your specific scenario or location.

Please note that the solar radiation values in the file are normalized at 1000 W/m^2. 

### Modify system parameters

To modify the system parameters, you can edit the values in the following files:

- `photovoltaic_parameters.m`: This file contains the parameters related to the photovoltaic panel, such as number of panels in serie and paralel.

- `urfc_parameters.m`: This file contains the parameters for the unitized regenerative fuel cell (URFC), including, stack area and number of cells.

- `microgrid_parameters.m`: This file includes the parameters for the microgrid system, such as the bus votage and initial tank value.

## How to Contribute

If you would like to contribute to this project, please follow these steps:

1. Fork the repository.

2. Create a new branch for your contribution.

3. Make your changes and commit them to your branch.

4. Push your branch to your forked repository.

5. Open a pull request to submit your changes for review.

## Acknowledgments
I would like to express my gratitude to the following organizations for their support and contributions to this project:

- MathWorks for providing the opportunity to work on this project and for their continuous support and guidance.

- The Federal University of Santa Catarina for their support in my academic endeavors and for providing the necessary resources and facilities for conducting this research.

I would also like to thank my supervisor, Gustavo de Andrade, for his valuable guidance, expertise, and mentorship throughout this project.

## References

1. C. Ogbonnaya, C. Abeykoon, A. Nasser, and A. Turan, “Unitized regenerative proton exchange membrane fuel cell system for renewable power and hydrogen generation: Modelling, simulation, and a case study,” Cleaner Engineering and Technology, vol. 4, p. 100241, Oct. 2021, doi: 10.1016/j.clet.2021.100241.

2. G. A. De Andrade, P. R. Da Costa Mendes, J. G. G. Clúa, and J. E. Normey‐Rico, “Control of a grid assisted PV-H2 production system: A comparative study between optimal control and hybrid MPC,” Journal of Process Control, vol. 92, pp. 220–233, Aug. 2020, doi: 10.1016/j.jprocont.2020.06.008.

3. E. Batzelis, G. Anagnostou, C. Chakraborty, and B. Pal, “Computation of the Lambert W function in photovoltaic modeling,” in Lecture notes in electrical engineering, 2020, pp. 583–595. doi: 10.1007/978-3-030-37161-6_44.






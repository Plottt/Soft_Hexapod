# Soft_Hexapod

This repo contains code for dynamic model of an SMA powered soft robotic hexapod.

The hexapod has a rigid body and six 2-DOF SMA-actuated limbs.

Limbs are discretized with tunable mass-spring-damper ball joints to approximate silicone stiffness (Shore ~10A). SMAs dynamics are modeled using differential heat transfer equations and experimental temp-force relationship. The limb model is experimentally validated.

Each limb has a feedback controller based on the Nitto 2-axis bend sensor. A CPG (central pattern generator) is used for gait level control (e.g., walking and turning patterns), mimicing the process in biological systems.

Optimization is performed over step size. All simulation is done using Simulink.


To run:
run the .m parameter files first to load params.
Then, run either .slx file for walking or turning gaits.
Running on "accelerator" mode is recommended to significantly reduce computation time.

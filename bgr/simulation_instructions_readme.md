## Simulation Instructions

### To run all the simulations one by one. Run the allSimRun.sh script in the terminal. 

```
./allSimRun.sh 
```

### Alternately, to run the simulation individually.

1. To run a temperature sweep:
```
ngspice bgr_temp_sweep.cir
```

2. To run supply sweep:
```
ngspice bgr_supply_sweep.cir
```

3. To run noise analysis:
```
ngspice bgr_noise_analysis.cir
```

4. To run transient analysis:
```
ngspice bgr_transient_analysis.cir
```

5. To run montecarlo analysis:
```
octave bgr_montecarlo_plot.m
```

### Resultant files (simulation plots) are stored in the ``simulationPlots`` directory.

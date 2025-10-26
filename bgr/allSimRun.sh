echo "****************************************************************************************************"
echo " Title       : Bandgap Reference Circuit All Simulation Script"
echo " Author      : Nagaraj Venkatesh Reddy"
echo " Description : Runs Temperature Sweep, Supply Sweep, Noise, Transient and Montecarlo Analysis"
echo " Date        : "$(date)
echo "****************************************************************************************************"
echo " Note   : Checking PDK_ROOT and PDK path variable."
if [ -z "$PDK_ROOT" ]
then
      echo " Error  : PDK_ROOT is empty. Kindly set the variable PDK_ROOT"
else
      echo " Note   : PDK_ROOT => "$PDK_ROOT
fi
if [ -z "$PDK" ]
then
      echo " Error  : \$PDK is empty. Kindly set the variable PDK"
else
      echo " Note   : PDK      => "$PDK
fi
echo "****************************************************************************************************"
echo " Note   : Start Simulation 1 => BGR Temperature Sweep"
ngspice bgr_temp_sweep.cir
echo " Note   : End   Simulation 1 => BGR Temperature Sweep"
echo "****************************************************************************************************"
echo " Note   : Start Simulation 2 => BGR Supply Sweep"
ngspice bgr_supply_sweep.cir
echo " Note   : End   Simulation 2 => BGR Supply Sweep"
echo "****************************************************************************************************"
echo " Note   : Start Simulation 3 => BGR Noise Analysis"
ngspice bgr_noise_analysis.cir
echo " Note   : End   Simulation 3 => BGR Noise Analysis"
echo "****************************************************************************************************"
echo " Note   : Start Simulation 4 => BGR Transient Analysis"
ngspice bgr_transient_analysis.cir
echo " Note   : End   Simulation 4 => BGR Transient Analysis"
echo "****************************************************************************************************"
echo " Note   : Start Simulation 5 => BGR Montecarlo Analysis"
octave bgr_montecarlo_plot.m
echo " Note   : End   Simulation 5 => BGR Noise Analysis"
echo "****************************************************************************************************"
echo " Note   : Simulation results are found in  simulationPlots directory"
echo "**************************************  END  *******************************************************"
echo "****************************************************************************************************"

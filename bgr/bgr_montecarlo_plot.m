clear;
clc;
system("ngspice bgr_montecarlo_analysis.cir");
vbgr = load("./bgr_montecarlo_plot.txt");
vbgr(:,1) = [];
vbgr(:,1) = [];
vbgrmean = mean(vbgr);
vbgrstd = std(vbgr);
hist(vbgr,15);
title("Montecarlo Analysis");
xlabel("Vbg [V]");
ylabel("Number of samples");
content = strcat("Samples = 200, mean = ",num2str(vbgrmean),", std = ",num2str(vbgrstd));
legend(content)
saveas (1,"./simulationPlots/bgr_montecarlo_analysis_plot.svg")


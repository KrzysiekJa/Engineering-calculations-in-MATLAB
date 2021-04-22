clearvars; close all; clc;


diode = struct('URZ_n', 12, 'PDM', 1,'ips_a', 25, 'ips_jmax', 180);


ips_amax = 80;
PDM = diode.PDM * ((diode.ips_jmax-ips_amax) / (diode.ips_jmax-diode.ips_a));

disp(PDM);


%ips_amax1 = 25;  =>  PDm(25) = diode.PDM
%ips_amax2 = 80;  =>  PDm(80) = PDM
IRZ_max1 = diode.PDM / diode.URZ_n;
IRZ_max2 = PDM / diode.URZ_n;

disp(IRZ_max1);
disp(IRZ_max2);


R_th = (diode.ips_jmax-diode.ips_a) / diode.PDM;
disp(R_th);



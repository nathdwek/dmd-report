clear all; close all;

delay = [10 25:25:500];

vprebuf = [0.090 .167 .294 .417 .538 .657 .773 .887 1.00 1.11 1.22 1.33 1.43 1.54 1.65 1.75 1.85 1.95 2.05 2.15 2.25];

vbuf = [.118 0.185 0.306 .426 .538 .657 .769 .880 .989 1.09 1.20 1.30 1.41 1.51 1.61 1.71 1.81 1.91 2.01 2.11 2.2];

f = figure; hold all; grid on; box on;
plot(delay, vprebuf, '-ob', 'linewidth', 2, 'markersize', 7);
plot(delay, vbuf, '-sr', 'linewidth', 2, 'markersize', 7);
xlabel('Delay [ns]');
ylabel('Output [V]');
title('Delay measurement device static characteristic')
legend('Before buffer', 'After buffer C = 10pF');
set(findall(f,'-property','FontSize'),'FontSize',17);
set(findall(f,'-property','FontName'),'FontName', 'Helvetica');
xlim([0 525]);

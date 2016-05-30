clear all; close all;

delay = 25:25:500;
size(delay)

vprebuf = [.158 .263 .367 .470 .571 .672 .771 .870 .968 1.06 1.16 1.26 1.35 1.45 1.54 1.63 1.73 1.82 1.91 2.00];
size(vprebuf)

vbuf = [.177 .277 .377 .476 .571 .672 .767 .863 .958 1.05 1.15 1.24 1.33 1.42 1.52 1.6 1.7 1.79 1.88 1.96];

f = figure; hold all; grid on; box on;
plot(delay, vprebuf, '-ob', 'linewidth', 2, 'markersize', 7);
plot(delay, vbuf, '-sr', 'linewidth', 2, 'markersize', 7);
xlabel('Delay [ns]');
ylabel('Output [V]');
title('Delay measurement device static characteristic')
legend('Before buffer', 'After buffer C = 10pF');
set(findall(f,'-property','FontSize'),'FontSize',17);
set(findall(f,'-property','FontName'),'FontName', 'Helvetica');

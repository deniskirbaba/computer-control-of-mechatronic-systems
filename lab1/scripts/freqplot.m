function [L,phi] = freqplot(w,Wf)
H = abs(Wf);
L = 20*log10(H);
phi = angle(Wf)*180/pi;

h = figure;
set(h,'DefaultAxesFontSize', 12, 'DefaultAxesFontName','Times New Roman');

ax(1) = subplot(2,1,1);
    plot(w,L,'LineWidth',1)
    hold on
    grid on
    xlabel('\omega\rm,\it rad\rm/\its')
    ylabel('\itL\rm(\omega),\it dB')
    set(ax(1),'XScale','log')
    title('a)', 'FontWeight','normal')
ax(2) = subplot(2,1,2);
    plot(w,phi,'LineWidth',1)
    hold on
    grid on
    xlabel('\omega\rm,\it rad\rm/\its')
    ylabel('\phi(\omega), \circ')
    set(ax(2),'XScale','log')
    title('б)', 'FontWeight','normal')
end


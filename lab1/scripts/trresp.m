t = SimNew.y(:,1);
g = SimNew.y(:,2);
y = SimNew.y(:,3);
er = g-y;

h = figure;
set(h,'DefaultAxesFontSize', 12, 'DefaultAxesFontName','Times New Roman');

ax(1) = subplot(1,2,1);
    plot(t,y,'LineWidth',1)
    hold on
    grid on
    plot(t,g,'LineWidth',1)
    xlabel('\itt\rm,\it s')
    ylabel('\ity\rm,\it g')
    xlim([0 max(t)])
    legend('y(t)', 'g(t)','Location','best')
    title('a)', 'FontWeight','normal')
    if lim == 1
        ylim([0 1.1])
    end
ax(2) = subplot(1,2,2);
    plot(t,er,'LineWidth',1)
    hold on
    grid on
    xlabel('\itt\rm,\it s')
    ylabel('\epsilon')
    xlim([0 max(t)])
    legend('e(t)','Location','best')
    title('б)', 'FontWeight','normal')
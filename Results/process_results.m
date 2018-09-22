%% coaxToWaveguide
folder = 'coaxToWaveguide';

data = dlmread([folder,'/S1,1.dat'],'',2,0);
s11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([folder,'/S2,1.dat'],'',2,0);
s21 = data(:,2).*exp(1i*deg2rad(data(:,3)));
freq = data(:,1);

figure(1)
plot(freq,20*log10(abs(s11))); hold on;
plot(freq,20*log10(abs(s21)));
hold off;
grid on;
xlabel('Frequency [GHz]','interpreter','latex')
ylabel('Magnitude [dB]','interpreter','latex')
xlim([min(freq),max(freq)])
set(gca,'TickLabelInterpreter','latex')
legend({'S1,1','S2,1'},'interpreter','latex','location','best')
title('S-Parameters','interpreter','latex')
saveas(gcf,folder,'png')

%% coaxToWrTE20
folder = 'coaxToWrTE20';

data = dlmread([folder,'/S1(1),1(1).dat'],'',2,0);
s11_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([folder,'/S2(1),1(1).dat'],'',2,0);
s21_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([folder,'/S2(2),1(1).dat'],'',2,0);
s22_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([folder,'/S2(3),1(1).dat'],'',2,0);
s23_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
freq = data(:,1);

figure(1)
plot(freq,20*log10(abs(s11_11))); hold on;
plot(freq,20*log10(abs(s21_11)));
plot(freq,20*log10(abs(s22_11)));
plot(freq,20*log10(abs(s23_11)));
hold off;
grid on;
xlabel('Frequency [GHz]','interpreter','latex')
ylabel('Magnitude [dB]','interpreter','latex')
xlim([min(freq),max(freq)])
set(gca,'TickLabelInterpreter','latex')
legend({'S1(1),1(1)','S2(1),1(1)','S2(2),1(1)','S2(3),1(1)'},'interpreter','latex','location','best')
title('S-Parameters','interpreter','latex')
saveas(gcf,folder,'png')


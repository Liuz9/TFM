%%
figures_folder = 'F:\Google Drive\MSTC\TFM\document\figures';
saveFigures = true;
figuresFormat = 'epsc';
min_eff = 98;

%% coaxToWaveguide
device = 'coaxToWaveguide';

data = dlmread([device,'/S1,1.dat'],'',2,0);
s11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2,1.dat'],'',2,0);
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
legend({'$s_{11}$','$s_{21}$'},'interpreter','latex','location','best')
title('S-Parameters','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device],figuresFormat);
end

figure(2)
plot(freq,abs(s21).^2*100);
grid on;
xlim([min(freq),max(freq)])
ylim([min_eff,100])
set(gca,'TickLabelInterpreter','latex')
xlabel('Frequency [GHz]','interpreter','latex')
ylabel('Conversion Efficiency [\%]','interpreter','latex')
title('Conversion to TE$_{10}$ mode','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device,'_eff'],figuresFormat)
end

%% coaxToWrTE20
device = 'coaxToWrTE20';

data = dlmread([device,'/S1(1),1(1).dat'],'',2,0);
s11_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(1),1(1).dat'],'',2,0);
s21_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(2),1(1).dat'],'',2,0);
s22_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(3),1(1).dat'],'',2,0);
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
xlim([16,17.4])
set(gca,'TickLabelInterpreter','latex')
legend({'$s_{11}$','$s_{21}$ TE$_{10}$','$s_{21}$ TE$_{01}$','$s_{21}$ TE$_{20}$'},'interpreter','latex','location','best')
title('S-Parameters','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device],figuresFormat);
end

figure(2)
plot(freq,abs(s23_11).^2*100);
grid on;
ylim([min_eff,100])
set(gca,'TickLabelInterpreter','latex')
xlabel('Frequency [GHz]','interpreter','latex')
ylabel('Conversion Efficiency [\%]','interpreter','latex')
title('Conversion to TE$_{20}$ mode','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device,'_eff'],figuresFormat)
end

%% coaxToWrTE20_screw
device = 'coaxToWrTE20_screw';

data = dlmread([device,'/S1(1),1(1).dat'],'',2,0);
s11_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(1),1(1).dat'],'',2,0);
s21_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(2),1(1).dat'],'',2,0);
s22_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(3),1(1).dat'],'',2,0);
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
xlim([16,17.4])
set(gca,'TickLabelInterpreter','latex')
legend({'$s_{11}$','$s_{21}$ TE$_{10}$','$s_{21}$ TE$_{01}$','$s_{21}$ TE$_{20}$'},'interpreter','latex','location','best')
title('S-Parameters','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device],figuresFormat)
end

figure(2)
plot(freq,abs(s23_11).^2*100);
grid on;
ylim([min_eff,100])
set(gca,'TickLabelInterpreter','latex')
xlabel('Frequency [GHz]','interpreter','latex')
ylabel('Conversion Efficiency [\%]','interpreter','latex')
title('Conversion to TE$_{20}$ mode','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device,'_eff'],figuresFormat)
end

%% coaxToWrTE20_alternative
device = 'coaxToWrTE20_alternative';

data = dlmread([device,'/S1(1),1(1).dat'],'',2,0);
s11_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(1),1(1).dat'],'',2,0);
s21_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(2),1(1).dat'],'',2,0);
s22_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(3),1(1).dat'],'',2,0);
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
xlim([16,17.4])
set(gca,'TickLabelInterpreter','latex')
legend({'$s_{11}$','$s_{21}$ TE$_{10}$','$s_{21}$ TE$_{01}$','$s_{21}$ TE$_{20}$'},'interpreter','latex','location','best')

title('S-Parameters','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device],figuresFormat)
end

figure(2)
plot(freq,abs(s23_11).^2*100);
grid on;
ylim([min_eff,100])
set(gca,'TickLabelInterpreter','latex')
xlabel('Frequency [GHz]','interpreter','latex')
ylabel('Conversion Efficiency [\%]','interpreter','latex')
title('Conversion to TE$_{20}$ mode','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device,'_eff'],figuresFormat)
end

%% wrToWcTM01_irises
device = 'wrToWcTM01_irises';

data = dlmread([device,'/S1(1),1(1).dat'],'',2,0);
s11_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(1),1(1).dat'],'',2,0);
s21_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(2),1(1).dat'],'',2,0);
s22_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));

freq = data(:,1);

figure(1)
plot(freq,20*log10(abs(s11_11))); hold on;
plot(freq,20*log10(abs(s21_11)));
plot(freq,20*log10(abs(s22_11)));
hold off;
grid on;
xlabel('Frequency [GHz]','interpreter','latex')
ylabel('Magnitude [dB]','interpreter','latex')
xlim([min(freq),max(freq)])
set(gca,'TickLabelInterpreter','latex')
legend({'$s_{11}$','$s_{21}$ TE$_{11s}$','$s_{21}$ TM$_{01c}$'},'interpreter','latex','location','best')

title('S-Parameters','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device],figuresFormat)
end

figure(2)
plot(freq,abs(s22_11).^2*100);
grid on;
ylim([min_eff,100])
set(gca,'TickLabelInterpreter','latex')
xlabel('Frequency [GHz]','interpreter','latex')
ylabel('Conversion Efficiency [\%]','interpreter','latex')
title('Conversion to TE$_{20}$ mode','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device,'_eff'],figuresFormat)
end

%% wrToWcTM01
device = 'wrToWcTM01';

data = dlmread([device,'/S1(1),1(1).dat'],'',2,0);
s11_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(1),1(1).dat'],'',2,0);
s21_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(2),1(1).dat'],'',2,0);
s22_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));

freq = data(:,1);

figure(1)
plot(freq,20*log10(abs(s11_11))); hold on;
plot(freq,20*log10(abs(s21_11)));
plot(freq,20*log10(abs(s22_11)));
hold off;
grid on;
xlabel('Frequency [GHz]','interpreter','latex')
ylabel('Magnitude [dB]','interpreter','latex')
xlim([min(freq),max(freq)])
set(gca,'TickLabelInterpreter','latex')
legend({'$s_{11}$','$s_{21}$ TE$_{11s}$','$s_{21}$ TM$_{01c}$'},'interpreter','latex','location','best')

title('S-Parameters','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device],figuresFormat)
end

figure(2)
plot(freq,abs(s22_11).^2*100);
grid on;
ylim([min_eff,100])
set(gca,'TickLabelInterpreter','latex')
xlabel('Frequency [GHz]','interpreter','latex')
ylabel('Conversion Efficiency [\%]','interpreter','latex')
title('Conversion to TE$_{20}$ mode','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device,'_eff'],figuresFormat)
end

%% wrToWrTE20_irises
device = 'wrToWrTE20_irises';

data = dlmread([device,'/S1(1),1(1).dat'],'',2,0);
s11_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(1),1(1).dat'],'',2,0);
s21_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));
data = dlmread([device,'/S2(2),1(1).dat'],'',2,0);
s22_11 = data(:,2).*exp(1i*deg2rad(data(:,3)));

freq = data(:,1);

figure(1)
plot(freq,20*log10(abs(s11_11))); hold on;
plot(freq,20*log10(abs(s21_11)));
plot(freq,20*log10(abs(s22_11)));
hold off;
grid on;
xlabel('Frequency [GHz]','interpreter','latex')
ylabel('Magnitude [dB]','interpreter','latex')
xlim([min(freq),max(freq)])
set(gca,'TickLabelInterpreter','latex')
legend({'$s_{11}$','$s_{21}$ TE$_{10}$','$s_{21}$ TE$_{20}$'},'interpreter','latex','location','best')

title('S-Parameters','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device],figuresFormat)
end

figure(2)
plot(freq,abs(s22_11).^2*100);
grid on;
ylim([min_eff,100])
set(gca,'TickLabelInterpreter','latex')
xlabel('Frequency [GHz]','interpreter','latex')
ylabel('Conversion Efficiency [\%]','interpreter','latex')
title('Conversion to TE$_{20}$ mode','interpreter','latex')
if(saveFigures)
    saveas(gcf,[figures_folder,'\',device,'_eff'],figuresFormat)
end
clear;clc;
addpath(genpath('toolbox_tensor/'));

iterate=20;
r=1:80;          
n=2:16; 
Success_rate_ADMMR=zeros(numel(r),numel(n));   
Success_rate_ADMMG=zeros(numel(r),numel(n)); 

for j=1:numel(n)
for i=1:numel(r)       
    [Success_rate_ADMMR(i,j),Success_rate_ADMMG(i,j)]=...
    tendec_Nsym_ADMMR_ADMMG_phase_transtioin_fun(n(j),r(i),iterate);       
end
end

 
 
% Plot
set(0,'DefaultTextFontName','Times','DefaultTextFontSize',18,...
   'DefaultAxesFontName','Times','DefaultAxesFontSize',18,...
   'DefaultLineLineWidth',3,'DefaultLineMarkerSize',7.75)

figure(1);
imagesc(n,r,Success_rate_ADMMR);axis xy
xlabel('Dimention $n$','Interpreter','LaTex','FontSize',18);
ylabel('Rank $r$','Interpreter','LaTex','FontSize',18);
xlim([2 16])
set(gca,'XTick',[2:2:16])
ylim([1 80])
colorbar;

figure(2);
imagesc(n,r,Success_rate_ADMMG);axis xy
xlabel('Dimention $n$','Interpreter','LaTex','FontSize',18);
ylabel('Rank $r$','Interpreter','LaTex','FontSize',18);
xlim([2 16])
set(gca,'XTick',[2:2:16])
ylim([1 80])
colorbar;

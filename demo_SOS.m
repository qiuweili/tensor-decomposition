clear;clc;
addpath(genpath('toolbox_tensor/'));

iterate=20;
n=2:8; 
r=1:10;            
Success_rate=zeros(numel(r),numel(n));

order = 2;      % ralax order
for j=1:numel(n)
for i=1:n(j)     
    [Success_rate(i,j)]=...
        SOS_tendec_nonsym_Phasetranstion_fun_moment(n(j),r(i),order,iterate);  
end
end


set(0,'DefaultTextFontName','Times','DefaultTextFontSize',18,...
   'DefaultAxesFontName','Times','DefaultAxesFontSize',18,...
   'DefaultLineLineWidth',3,'DefaultLineMarkerSize',7.75)
 
figure;
imagesc(n,r,Success_rate/20);axis xy
xlabel('Dimention $n$','Interpreter','LaTex','FontSize',18);
ylabel('Rank $r$','Interpreter','LaTex','FontSize',18);
xlim([2 8])
set(gca,'XTick',[2:1:8])
ylim([1 10])
set(gca,'YTick',[1:1:10])
colorbar;

T = dataobl3;

% to convert the RT in ms to s
ax=find(T(:,6)>100);
T(ax,6)=T(ax,6)/1000;
bx=find(T(:,7)>100);
T(bx,7)=T(bx,7)/1000;
cx=find(T(:,8)>100);
T(cx,8)=T(cx,8)/1000;
dx=find(T(:,9)>100);
T(dx,9)=T(dx,9)/1000;

Par1 = T(1:84,:);
Par2 = T(85:168,:);
Par3 = T(169:252,:);
Par4 = T(253:336,:);
Par5 = T(337:420,:);
Par6 = T(421:504,:);
Par7 = T(505:588,:);
Par8 = T(589:672,:);
Par9 = T(673:756,:);
Par10 = T(757:840,:);
Par11 = T(841:924,:);
Par12 = T(925:1008,:);
Par13 = T(1009:1092,:);
Par14 = T(1093:1176,:);
Par15 = T(1177:1260,:);
Par16 = T(1261:1344,:);
Par17 = T(1345:1424,:); 
Par18 = T(1425:1504,:);
Par19 = T(1505:1584,:);
Par20 = T(1585:1664,:);
Par21 = T(1665:1744,:);
Par22 = T(1745:1824,:);
Par23 = T(1825:1904,:);
Par24 = T(1905:1984,:);
Par25 = T(1985:2064,:);
Par26 = T(2065:2144,:);
Par27 = T(2145:2224,:);
Par28 = T(2225:2304,:);
Par29 = T(2305:2384,:);
Par30 = T(2385:2464,:);
Par31 = T(2465:2544,:);
Par32 = T(2545:2624,:);
Par33 = T(2625:2704,:);
Par34 = T(2705:2784,:);
Par35 = T(2785:2864,:);
Par36 = T(2865:2944,:);
Par37 = T(2945:3024,:);
Par38 = T(3025:3104,:);
Par39 = T(3105:3184,:);
Par40 = T(3185:3264,:);
Par41 = T(3265:3344,:);
Par42 = T(3345:3424,:);
Par43 = T(3425:3504,:);
Par44 = T(3505:3584,:);
Par45 = T(3585:3664,:);
Par46 = T(3665:3744,:);
Par47 = T(3745:3824,:);
Par48 = T(3825:3904,:);
Par49 = T(3905:3984,:);
Par50 = T(3985:4064,:);
Par51 = T(4065:4144,:);
Par52 = T(4145:4224,:);
Par53 = T(4225:4304,:);
Par54 = T(4305:4384,:);


% Par55 = T(4385:4444,:);
% Par56 = T(4445:4524,:);




% %column 15=participant number
% F=84;
% T(1:84,15) = zeros(F,1)+1;
% T(85:168,15)=zeros(F,1)+2;
% T(169:252,15)=zeros(F,1)+3;
% T(253:336,15)=zeros(F,1)+4;
% T(337:420,15)=zeros(F,1)+5;
% T(421:504,15)=zeros(F,1)+6;
% T(505:588,15)=zeros(F,1)+7;
% T(589:672,15)=zeros(F,1)+8;
% T(673:756,15)=zeros(F,1)+9;
% T(757:840,15)=zeros(F,1)+10;
% T(841:924,15)=zeros(F,1)+11;
% T(925:1008,15)=zeros(F,1)+12;
% T(1009:1092,15)=zeros(F,1)+13;
% T(1093:1176,15)=zeros(F,1)+14;
% T(1177:1260,15)=zeros(F,1)+15;
% T(1261:1344,15)=zeros(F,1)+16;

C={Par1,Par2,Par3,Par4,Par5,Par6,Par7,Par8,Par9,Par10,Par11,Par12,Par13,...
    Par14,Par15,Par16,Par17,Par18,Par19,Par20,Par21,Par22,Par23,Par24,Par25,Par26,...
    Par27,Par28,Par29,Par30,Par31,Par32,Par33,Par34,Par35,Par36,Par37,Par38,Par39,...
    Par40,Par41,Par42,Par43,Par44,Par45,Par46,Par47,Par48,Par49,Par50,Par51,Par52,...
    Par53,Par54};
nC=length(C);


mean_ep_rt_part = nan(nC, 1);
mean_er_rt_part = nan(nC, 1);
mean_mp_rt_part = nan(nC, 1);
mean_mr_rt_part = nan(nC, 1);

mean_e_deviance_1 = nan(nC, 1);
mean_e_deviance_2 = nan(nC, 1);
mean_e_deviance_3 = nan(nC, 1);
mean_e_deviance_4 = nan(nC, 1);
     
mean_m_deviance_1 = nan(nC, 1);
mean_m_deviance_2 = nan(nC, 1);
mean_m_deviance_3 = nan(nC, 1);
mean_m_deviance_4 = nan(nC, 1);
     
mean_e_deviance_part = nan(nC, 1);
mean_m_deviance_part = nan(nC, 1);
     
     
mean_er_rt_1 = nan(nC, 1);
mean_er_rt_2 = nan(nC, 1);
mean_er_rt_3 = nan(nC, 1);
mean_er_rt_4 = nan(nC, 1);
     
     
mean_mr_rt_1 = nan(nC, 1);
mean_mr_rt_2 = nan(nC, 1);
mean_mr_rt_3 = nan(nC, 1);
mean_mr_rt_4 = nan(nC, 1);
     
     
mean_ep_rt_1 = nan(nC, 1);
mean_ep_rt_2 = nan(nC, 1);
mean_ep_rt_3 = nan(nC, 1);
mean_ep_rt_4 = nan(nC, 1);
     
     
mean_mp_rt_1 = nan(nC, 1);
mean_mp_rt_2 = nan(nC, 1);
mean_mp_rt_3 = nan(nC, 1);
mean_mp_rt_4 = nan(nC, 1);
     

for x=1:nC
    partdata=C{x};
    
    trial_1_indx=find(partdata(:,3)==1);
    trial_2_indx=find(partdata(:,3)==2);
    trial_3_indx=find(partdata(:,3)==3);
    trial_4_indx=find(partdata(:,3)==4);
    
     mean_e_deviance_1(x,1) = nanmean(partdata(trial_1_indx, 17));
     mean_e_deviance_2(x,1) = nanmean(partdata(trial_2_indx, 17));
     mean_e_deviance_3(x,1) = nanmean(partdata(trial_3_indx, 17));
     mean_e_deviance_4(x,1) = nanmean(partdata(trial_4_indx, 17));
     
     mean_m_deviance_1(x,1) = nanmean(partdata(trial_1_indx, 12));
     mean_m_deviance_2(x,1) = nanmean(partdata(trial_2_indx, 12));
     mean_m_deviance_3(x,1) = nanmean(partdata(trial_3_indx, 12));
     mean_m_deviance_4(x,1) = nanmean(partdata(trial_4_indx, 12));
     
     
          mean_e_deviance_part(x,1) = nanmean(partdata(:, 17));
          mean_m_deviance_part(x,1) = nanmean(partdata(:, 12));
     
     
     mean_er_rt_1(x,1) = nanmean(partdata(trial_1_indx, 7));
     mean_er_rt_2(x,1) = nanmean(partdata(trial_2_indx, 7));
     mean_er_rt_3(x,1) = nanmean(partdata(trial_3_indx, 7));
     mean_er_rt_4(x,1) = nanmean(partdata(trial_4_indx, 7));
     
     
     mean_mr_rt_1(x,1) = nanmean(partdata(trial_1_indx, 9));
     mean_mr_rt_2(x,1) = nanmean(partdata(trial_2_indx, 9));
     mean_mr_rt_3(x,1) = nanmean(partdata(trial_3_indx, 9));
     mean_mr_rt_4(x,1) = nanmean(partdata(trial_4_indx, 9));
     
     
     mean_ep_rt_1(x,1) = nanmean(partdata(trial_1_indx, 6));
     mean_ep_rt_2(x,1) = nanmean(partdata(trial_2_indx, 6));
     mean_ep_rt_3(x,1) = nanmean(partdata(trial_3_indx, 6));
     mean_ep_rt_4(x,1) = nanmean(partdata(trial_4_indx, 6));
     
     
     mean_mp_rt_1(x,1) = nanmean(partdata(trial_1_indx, 8));
     mean_mp_rt_2(x,1) = nanmean(partdata(trial_2_indx, 8));
     mean_mp_rt_3(x,1) = nanmean(partdata(trial_3_indx, 8));
     mean_mp_rt_4(x,1) = nanmean(partdata(trial_4_indx, 8));
     
     
         mean_er_rt_part(x,1) = nanmean(partdata(:, 7));
         mean_mr_rt_part(x,1) = nanmean(partdata(:, 9));
         mean_ep_rt_part(x,1) = nanmean(partdata(:, 6));
         mean_mp_rt_part(x,1) = nanmean(partdata(:, 8));
      
     
end

%% Trial 1 vs 2 vs 3 vs 4, matrices and plots

% Task A: Encoding task, Withheld Task
% Task B: Main Task, Concurrent Task

figure(2)
fontSize=10;
facecolor=[.5, 0.75, 0.75];

subplot(2,3,1)
mean_m_deviance = [mean_m_deviance_1, mean_m_deviance_2,mean_m_deviance_3,mean_m_deviance_4];
% bar(mean(mean_m_deviance));
ciwithin(mean_m_deviance,0.05,facecolor);
xlab={'Trial 1', 'Trial 2', 'Trial 3', 'Trial 4'};
title('a','FontSize',50); 
xlabel('Trials in a Session');
set(gca,'xticklabel',xlab,'FontSize', fontSize)
ylabel('Error (degrees) in Concurrent WM Task'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,15])
grid off


subplot(2,3,2)
mean_mr_rt=[mean_mr_rt_1, mean_mr_rt_2, mean_mr_rt_3, mean_mr_rt_4];
% bar(mean(mean_mr_rt));
ciwithin(mean_mr_rt,0.05,facecolor);
xlab={'Trial 1', 'Trial 2', 'Trial 3', 'Trial 4'};
title('b','FontSize',50); 
xlabel('Trials in a Session');
set(gca,'xticklabel',xlab,'FontSize', fontSize)
ylabel('Concurrent WM Task Recall RT (s)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,5])
grid off

subplot(2,3,3)
mean_mp_rt=[mean_mp_rt_1, mean_mp_rt_2, mean_mp_rt_3, mean_mp_rt_4];
% bar(mean(mean_mp_rt));
ciwithin(mean_mp_rt,0.05,facecolor);
xlab={'Trial 1', 'Trial 2', 'Trial 3', 'Trial 4'};
title('c','FontSize',50); 
xlabel('Trials in a Session');
set(gca,'xticklabel',xlab,'FontSize', fontSize)
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylabel('Concurrent WM Task Presentation RT (s)'); 
ylim([0,6])
grid off



subplot(2,3,4)
mean_e_deviance = [mean_e_deviance_2,mean_e_deviance_3,mean_e_deviance_4];
% bar(mean(mean_e_deviance));
ciwithin(mean_e_deviance,0.05,facecolor);
xlab={'Trial 2', 'Trial 3', 'Trial 4'};
title('d','FontSize',50); 
xlabel('Trials in a Session');
set(gca,'xticklabel',xlab,'FontSize', fontSize)
ylabel('Error (degrees) in Withheld WM Task'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,25])
grid off

subplot(2,3,5)
mean_er_rt=[mean_er_rt_2, mean_er_rt_3, mean_er_rt_4];
% bar(mean(mean_er_rt));
ciwithin(mean_er_rt,0.05,facecolor);
xlab={'Trial 2', 'Trial 3','Trial 4'};
title('e','FontSize',50); 
xlabel('Trials in a Session');
set(gca,'xticklabel',xlab,'FontSize', fontSize)
ylabel('Withheld WM Task Recall RT (s)');
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,7])
grid off


subplot(2,3,6)
mean_ep_rt=[mean_ep_rt_1, mean_ep_rt_2, mean_ep_rt_3];
% bar(mean(mean_ep_rt));
ciwithin(mean_ep_rt,0.05,facecolor);
xlab={'Trial 1', 'Trial 2', 'Trial 3'};
title('f', 'FontSize',50); 
xlabel('Trials in a Session');
set(gca,'xticklabel',xlab,'FontSize', fontSize)
ylabel('Withheld WM Task Presentation RT (s)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,6])
grid off



set(gcf, 'units','normalized','outerposition',[0 0 1 1]);

%% Plots and t-tests


%facecolor=[240,128,128]./255;
facecolor=[.5, 0.75, 0.75];
fontsize1=30;



figure(1)




% DV: main task accuracy
%keeping 1 vs 2 Task A load during Task B 
[h,p,ci,stats]=ttest(mean([mean_m_deviance_1,mean_m_deviance_4],2), mean([mean_m_deviance_2,mean_m_deviance_3],2)); % not significant
M_1vs2=[mean([mean_m_deviance_1,mean_m_deviance_4],2), mean([mean_m_deviance_2,mean_m_deviance_3],2)];
subplot(2,3,1)
% b3 = bar (mean(M_1vs2));
% b3.FaceColor=[240,128,128]./255;
ciwithin(M_1vs2,0.05,facecolor);
xlab={'1', '2'};
%title('Task B (Main Task) Deviance'); 
title('a','FontSize',fontsize1);
xlabel('Withheld WM Load');
set(gca,'xticklabel',xlab)
ylabel('Error (degrees) in Concurrent WM Task'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,15])
grid off


% DV : main task recall rt
% keeping 1 vs 2 Task A load during Task B presentation
[h,p,ci,stats]=ttest(mean([mean_mr_rt_1,mean_mr_rt_4],2), mean([mean_mr_rt_2, mean_mr_rt_3],2)); % not significant
MRRT_1vs2=[mean([mean_mr_rt_1,mean_mr_rt_4],2), mean([mean_mr_rt_2, mean_mr_rt_3],2)];
subplot(2,3,2)
% b2 = bar (mean(MRRT_1vs2));
% b2.FaceColor=[205,92,92]./255;
ciwithin(MRRT_1vs2,0.05,facecolor);
xlab={'1', '2'};
%title('Task B (Main Task) Recall RT','FontSize',fontsize1); 
title('b','FontSize',fontsize1);
xlabel('Withheld WM Load');
set(gca,'xticklabel',xlab)
ylabel('Concurrent WM Task Recall RT (s)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,5])
grid off



% DV : main task presentation rt
% keeping 1 vs 2 Task A load during Task B presentation
[h,p,ci,stats]=ttest(mean([mean_mp_rt_1,mean_mp_rt_4],2), mean([mean_mp_rt_2, mean_mp_rt_3],2)); % not significant
MPRT_1vs2=[mean([mean_mp_rt_1,mean_mp_rt_4],2), mean([mean_mp_rt_2, mean_mp_rt_3],2)];
subplot(2,3,3);
% b1 = bar (mean(MPRT_1vs2));
% b1.FaceColor=[255,127,80]./255;
ciwithin(MPRT_1vs2,0.05,facecolor);
b1.FaceColor=[255,127,80]./255;
xlab={'1', '2'};
%title('Task B (Main Task) Presentation RT','FontSize',fontsize1); 
title('c','FontSize',fontsize1);
xlabel('Withheld WM Load');
set(gca,'xticklabel',xlab)
ylabel('Concurrent WM Task Presentation RT (s)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,6])
grid off


% DV: encoding task accuracy !!!
% trial 4 (Task A load:1) vs trial 2and3 (Task A load:2)
[h,p,ci,stats]=ttest(mean_e_deviance_4, mean([mean_e_deviance_2,mean_e_deviance_3],2));
E_1vs2=[mean_e_deviance_4, mean([mean_e_deviance_2,mean_e_deviance_3],2)];
subplot(2,3,4)
% b6 = bar (mean(E_1vs2));
% b6.FaceColor=[220,20,60]./255;
ciwithin(E_1vs2,0.05,facecolor);
xlab={'1', '2'};
%title('Task A (Encoding Task) Deviance'); 
title('d','FontSize',fontsize1);
xlabel('Withheld WM Load');
set(gca,'xticklabel',xlab)
ylabel('Error (degrees) in Withheld WM Task');
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,20])
grid off




% DV: encoding task recall rt ********* significant *********
% trial 4 (Task A load:1) vs trial 2and3 (Task A load:2)
[h,p,ci,stats]=ttest(mean_er_rt_4, mean([mean_er_rt_2, mean_er_rt_3],2));
ERRT_1vs2=[mean_er_rt_4, mean([mean_er_rt_2, mean_er_rt_3],2)];
subplot(2,3,5)
% b5 = bar (mean(ERRT_1vs2));
% b5.FaceColor=[255,160,122]./255;
ciwithin(ERRT_1vs2,0.05,facecolor);
xlab={'1', '2'};
%title('Task A (Encoding Task) Recall RT'); 
title('e','FontSize',fontsize1);
xlabel('Withheld WM Load');
set(gca,'xticklabel',xlab)
ylabel('Wittheld WM Task Recall RT (s)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,7])
grid off
sigstar({[1,2]},[0.01]);




% DV: encoding task presentation rt
% trial 1 vs trial 2and3
[h,p,ci,stats]=ttest(mean_ep_rt_1, mean([mean_ep_rt_2, mean_ep_rt_3],2));
EPRT_1vs2=[mean_ep_rt_1, mean([mean_ep_rt_2, mean_ep_rt_3],2)];
subplot(2,3,6)
% b4 = bar (mean(EPRT_1vs2));
% b4.FaceColor=[233,150,122]./255;
ciwithin(EPRT_1vs2,0.05,facecolor);
xlab={'1', '2'};
%title('Task A (Encoding Task) Presentation RT'); 
title('f','FontSize',fontsize1);
xlabel('Withheld WM Load');
set(gca,'xticklabel',xlab)
ylabel('Withheld WM Task Presentation RT (s)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,6])
grid off





set(gcf, 'units','normalized','outerposition',[0 0 1 1]);


%% Trial 1 vs 2 vs 3 vs 4, matrices and plots - TURKISH

% Task A: Encoding task, Withheld Task
% Task B: Main Task, Concurrent Task

figure(2)
fontSize=10;

%facecolor=[240,128,128]./255;
facecolor=[.5, 0.75, 0.75];
fontsize1=30;

subplot(2,3,1)
mean_m_deviance = [mean_m_deviance_1, mean_m_deviance_2,mean_m_deviance_3,mean_m_deviance_4];
% bar(mean(mean_m_deviance));
ciwithin(mean_m_deviance,0.05,facecolor);
xlab={'Deneme 1','Deneme 2', 'Deneme 3', 'Deneme 4'};
%title('Görev B Hata ve Seanstaki Denemeler'); 
title('a','FontSize',fontsize1);
xlabel('Seanstaki Denemeler');
set(gca,'xticklabel',xlab,'FontSize', fontSize)
ylabel('Görev B Hata (derece)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,15])
grid off


subplot(2,3,2)
mean_mr_rt=[mean_mr_rt_1, mean_mr_rt_2, mean_mr_rt_3, mean_mr_rt_4];
% bar(mean(mean_mr_rt));
ciwithin(mean_mr_rt,0.05,facecolor);
xlab={'Deneme 1','Deneme 2', 'Deneme 3', 'Deneme 4'};
%title('Görev B Uyaran Hatırlama Süresi ve Seanstaki Denemeler');
title('b','FontSize',fontsize1);
xlabel('Seanstaki Denemeler');
set(gca,'xticklabel',xlab,'FontSize', fontSize)
ylabel('Görev B Tepki Zamanı (s)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,5])
grid off


subplot(2,3,3)
mean_mp_rt=[mean_mp_rt_1, mean_mp_rt_2, mean_mp_rt_3, mean_mp_rt_4];
% bar(mean(mean_mp_rt));
ciwithin(mean_mp_rt,0.05,facecolor);
xlab={'Deneme 1','Deneme 2', 'Deneme 3', 'Deneme 4'};
%title('Görev B Uyaran Sunuş Süresi ve Seanstaki Denemeler');
title('c','FontSize',fontsize1);
xlabel('Seanstaki Denemeler');
set(gca,'xticklabel',xlab,'FontSize', fontSize)
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylabel('Görev B Uyaran Sunuş Süresi (s)'); 
ylim([0,6])
grid off


subplot(2,3,4)
mean_e_deviance = [mean_e_deviance_2,mean_e_deviance_3,mean_e_deviance_4];
% bar(mean(mean_e_deviance));
ciwithin(mean_e_deviance,0.05,facecolor);
xlab={'Deneme 2','Deneme 3', 'Deneme 4'};
%title('Görev A Hata ve Seanstaki Denemeler'); 
title('d','FontSize',fontsize1);
xlabel('Seanstaki Denemeler');
set(gca,'xticklabel',xlab,'FontSize', fontSize)
ylabel('Görev A Hata (derece)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,25])
grid off



subplot(2,3,5)
mean_er_rt=[mean_er_rt_2, mean_er_rt_3, mean_er_rt_4];
% bar(mean(mean_er_rt));
ciwithin(mean_er_rt,0.05,facecolor);
xlab={'Deneme 2', 'Deneme 3', 'Deneme 4'};
%title('Görev A Uyaran Hatırlama Süresi ve Seanstaki Denemeler'); 
title('e','FontSize',fontsize1);
xlabel('Seanstaki Denemeler');
set(gca,'xticklabel',xlab,'FontSize', fontSize)
ylabel('Görev A Tepki Süresi (s)');
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,7])
grid off


subplot(2,3,6)
mean_ep_rt=[mean_ep_rt_1, mean_ep_rt_2, mean_ep_rt_3];
% bar(mean(mean_ep_rt));
ciwithin(mean_ep_rt,0.05,facecolor);
xlab={'Deneme 1', 'Deneme 2', 'Deneme 3'};
%title('Görev A Uyaran Sunuş Süresi ve Seanstaki Denemeler'); 
title('f','FontSize',fontsize1);
xlabel('Seanstaki Denemeler');
set(gca,'xticklabel',xlab,'FontSize', fontSize)
ylabel('Görev A Uyaran Sunuş Süresi (s)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,6])
grid off


set(gcf, 'units','normalized','outerposition',[0 0 1 1]);

%% Plots and t-tests - TURKISH

% DV : main task presentation rt
% keeping 1 vs 2 Task A load during Task B presentation

%facecolor=[240,128,128]./255;
facecolor=[.5, 0.75, 0.75];
fontsize1=20;


[h,p,ci,stats]=ttest(mean([mean_mp_rt_1,mean_mp_rt_4],2), mean([mean_mp_rt_2, mean_mp_rt_3],2)); % not significant

MPRT_1vs2=[mean([mean_mp_rt_1,mean_mp_rt_4],2), mean([mean_mp_rt_2, mean_mp_rt_3],2)];

figure(1)


% DV: main task accuracy
%keeping 1 vs 2 Task A load during Task B 

[h,p,ci,stats]=ttest(mean([mean_m_deviance_1,mean_m_deviance_4],2), mean([mean_m_deviance_2,mean_m_deviance_3],2)); % not significant

M_1vs2=[mean([mean_m_deviance_1,mean_m_deviance_4],2), mean([mean_m_deviance_2,mean_m_deviance_3],2)];

subplot(2,3,1)
% b3 = bar (mean(M_1vs2));
% b3.FaceColor=[240,128,128]./255;
ciwithin(M_1vs2,0.05,facecolor);
xlab={'1', '2'};
%title('Task B (Main Task) Deviance'); 
title('a','FontSize',fontsize1);
xlabel('Görev A ÇB Yükü');
set(gca,'xticklabel',xlab)
ylabel('Görev B Hata (derece)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,15])
grid off


% DV : main task recall rt
% keeping 1 vs 2 Task A load during Task B presentation

[h,p,ci,stats]=ttest(mean([mean_mr_rt_1,mean_mr_rt_4],2), mean([mean_mr_rt_2, mean_mr_rt_3],2)); % not significant

MRRT_1vs2=[mean([mean_mr_rt_1,mean_mr_rt_4],2), mean([mean_mr_rt_2, mean_mr_rt_3],2)];

subplot(2,3,2)
% b2 = bar (mean(MRRT_1vs2));
% b2.FaceColor=[205,92,92]./255;
ciwithin(MRRT_1vs2,0.05,facecolor);
xlab={'1', '2'};
%title('Task B (Main Task) Recall RT','FontSize',fontsize1); 
title('b','FontSize',fontsize1);
xlabel('Görev A ÇB Yükü');
set(gca,'xticklabel',xlab)
ylabel('Görev B Tepki Süresi (s)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,5])
grid off


% DV: main task presentation rt
% trial 1and4 vs trial 2and3

subplot(2,3,3);
% b1 = bar (mean(MPRT_1vs2));
% b1.FaceColor=[255,127,80]./255;
ciwithin(MPRT_1vs2,0.05,facecolor);
b1.FaceColor=[255,127,80]./255;
xlab={'1','2'};
%title('Task B (Main Task) Presentation RT','FontSize',fontsize1); 
title('c','FontSize',fontsize1);
xlabel('Görev A ÇB Yükü');
set(gca,'xticklabel',xlab)
ylabel('Görev B Uyaran Sunuş Süresi (s)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,6])
grid off



% DV: encoding task accuracy !!!
% trial 4 (Task A load:1) vs trial 2and3 (Task A load:2)

[h,p,ci,stats]=ttest(mean_e_deviance_4, mean([mean_e_deviance_2,mean_e_deviance_3],2));

E_1vs2=[mean_e_deviance_4, mean([mean_e_deviance_2,mean_e_deviance_3],2)];

subplot(2,3,4)
% b6 = bar (mean(E_1vs2));
% b6.FaceColor=[220,20,60]./255;
ciwithin(E_1vs2,0.05,facecolor);
xlab={'1', '2'};
%title('Task A (Encoding Task) Deviance'); 
title('d','FontSize',fontsize1);
xlabel('Görev A ÇB Yükü');
set(gca,'xticklabel',xlab)
ylabel('Görev A Hata (derece)');
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,20])
grid off


% DV: encoding task recall rt ********* significant *********
% trial 4 (Task A load:1) vs trial 2and3 (Task A load:2)

[h,p,ci,stats]=ttest(mean_er_rt_4, mean([mean_er_rt_2, mean_er_rt_3],2));

ERRT_1vs2=[mean_er_rt_4, mean([mean_er_rt_2, mean_er_rt_3],2)];

subplot(2,3,5)
% b5 = bar (mean(ERRT_1vs2));
% b5.FaceColor=[255,160,122]./255;
ciwithin(ERRT_1vs2,0.05,facecolor);
xlab={'1', '2'};
%title('Task A (Encoding Task) Recall RT'); 
title('e','FontSize',fontsize1);
xlabel('Görev A ÇB Yükü');
set(gca,'xticklabel',xlab)
ylabel('Görev A Tepki Süresi (s)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,7])
grid off



% DV: encoding task presentation rt
% trial 1 vs trial 2and3
[h,p,ci,stats]=ttest(mean_ep_rt_1, mean([mean_ep_rt_2, mean_ep_rt_3],2));

EPRT_1vs2=[mean_ep_rt_1, mean([mean_ep_rt_2, mean_ep_rt_3],2)];

subplot(2,3,6)
% b4 = bar (mean(EPRT_1vs2));
% b4.FaceColor=[233,150,122]./255;
ciwithin(EPRT_1vs2,0.05,facecolor);
xlab={'1', '2'};
%title('Task A (Encoding Task) Presentation RT'); 
title('f','FontSize',fontsize1);
xlabel('Görev A ÇB Yükü');
set(gca,'xticklabel',xlab)
ylabel('Görev A Uyaran Sunuş Süresi (s)'); 
set(gca, 'box','off');
set(gcf, 'color', 'w')
ylim([0,6])
grid off




set(gcf, 'units','normalized','outerposition',[0 0 1 1]);




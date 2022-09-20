T = dataobl4;

% to convert the RT in ms to s
ax=find(T(:,11)>100);
T(ax,11)=T(ax,11)/1000;
bx=find(T(:,12)>100);
T(bx,12)=T(bx,12)/1000;
cx=find(T(:,13)>100);
T(cx,13)=T(cx,13)/1000;
dx=find(T(:,14)>100);
T(dx,14)=T(dx,14)/1000;

Par1 = T(1:80,:);
Par2 = T(81:160,:);
Par3 = T(161:240,:);
Par4 = T(241:320,:);
Par5 = T(321:400,:);
Par6 = T(401:480,:);
Par7 = T(481:560,:);
Par8 = T(561:640,:);
Par9 = T(641:720,:);
Par10 = T(721:800,:);
Par11 = T(801:880,:);
Par12 = T(881:960,:);
Par13 = T(961:1040,:);
Par14 = T(1041:1120,:);
Par15 = T(1121:1200,:);
Par16 = T(1201:1280,:);
Par17 = T(1281:1360,:);
Par18 = T(1361:1440,:);
Par19 = T(1441:1520,:);
Par20 = T(1521:1600,:);
Par21 = T(1601:1680,:);
Par22 = T(1681:1760,:);
Par23 = T(1761:1840,:);
Par24 = T(1841:1920,:);
Par25 = T(1921:2000,:);
Par26 = T(2001:2080,:);
Par27 = T(2081:2160,:);
Par28 = T(2161:2240,:);
Par29 = T(2241:2320,:);
Par30 = T(2321:2400,:);
Par31 = T(2401:2480,:);
Par32 = T(2481:2560,:);
Par33 = T(2561:2640,:);
Par34 = T(2641:2720,:);
Par35 = T(2721:2800,:);
Par36 = T(2801:2880,:);
Par37 = T(2881:2960,:);
Par38 = T(2961:3040,:);
Par39 = T(3041:3120,:);
Par40 = T(3121:3200,:);
Par41 = T(3201:3280,:);
Par42 = T(3281:3360,:);
% Par43 = T(3361:3440,:);
% Par44 = T(3441:3520,:);
% Par45 = T(3521:3600,:);



C={Par1,Par2,Par3,Par4,Par5,Par6,Par7,Par8,Par9,Par10,Par11,Par12,Par13,...
    Par14,Par15,Par16,Par17,Par18,Par19,Par20,Par21,Par22,Par23,Par24,Par25,Par26,...
    Par27,Par28,Par29,Par30,Par31,Par32,Par33,Par34,Par35,Par36,Par37,...
        Par38,Par39,Par40,Par41,Par42};
nC=length(C);


mean_e_deviance_1_3 = nan(nC, 1);
mean_e_deviance_2_3 = nan(nC, 1);
mean_m_deviance_1_3 = nan(nC, 1);
mean_m_deviance_2_3 = nan(nC, 1);

mean_m_deviance_part = nan(nC, 1);
mean_e_deviance_part = nan(nC, 1);



mean_e_r_rt_1_3 = nan(nC, 1);
mean_e_r_rt_2_3 = nan(nC, 1);
mean_m_r_rt_1_3 = nan(nC, 1);
mean_m_r_rt_2_3 = nan(nC, 1);

mean_e_r_rt_part = nan(nC, 1);
mean_m_r_rt_part = nan(nC, 1);

for x=1:nC
    partdata=C{x};

    
    idxx_1_3=find((partdata(:,3)==1) & (partdata(:,4)==3));
    idxx_2_3=find((partdata(:,3)==2) & (partdata(:,4)==3));
    
   
    mean_e_deviance_1_3(x,1) = mean(partdata(idxx_1_3, 10));
    mean_e_deviance_2_3(x,1) = mean(partdata(idxx_2_3, 10));
    mean_m_deviance_1_3(x,1) = mean(partdata(idxx_1_3, 7));
    mean_m_deviance_2_3(x,1) = mean(partdata(idxx_2_3, 7));
    
    mean_m_deviance_part(x,1) = mean(partdata(:, 7));
    mean_e_deviance_part(x,1) = mean(partdata(:,10));
    
    
    
    
    mean_e_r_rt_1_3(x,1) = mean(partdata(idxx_1_3, 12));
    mean_e_r_rt_2_3(x,1) = mean(partdata(idxx_2_3, 12));
    mean_m_r_rt_1_3(x,1) = mean(partdata(idxx_1_3, 14));
    mean_m_r_rt_2_3(x,1) = mean(partdata(idxx_2_3, 14));
    
    
    mean_e_r_rt_part(x,1) = mean(partdata(:, 12));
    mean_m_r_rt_part(x,1) = mean(partdata(:, 14));

end
E = [mean_e_deviance_1_3 mean_e_deviance_2_3];
EE = [mean(mean_e_deviance_1_3) mean(mean_e_deviance_2_3)];

M = [mean_m_deviance_1_3 mean_m_deviance_2_3];
MM = [mean(mean_m_deviance_1_3) mean(mean_m_deviance_2_3)];

ERrt = [mean_e_r_rt_1_3 mean_e_r_rt_2_3];
MRrt = [mean_m_r_rt_1_3 mean_m_r_rt_2_3];



idx_1_3=((T(:,3)==1) & T(:,4)==3);
idx_2_3=((T(:,3)==2) & T(:,4)==3);

e_deviance_1_3 = T(idx_1_3, 10);
e_deviance_2_3 = T(idx_2_3, 10);

m_deviance_1_3 = T(idx_1_3, 7);
m_deviance_2_3 = T(idx_2_3, 7);


%%
% pairwise comparisons

facecolor=[32,178,170]./255;
fontsize1=30;

figure


subplot(2,2,1)
% m deviance_____________________________________________________________
[h,p,ci,stats] = ttest(m_deviance_1_3, m_deviance_2_3); %significant
[h,p,ci,stats] = ttest(M(:,1), M(:,2)); %significant

    %Y2 =[mean(m_deviance_1_3) mean(m_deviance_2_3)];
    Y2 =[(m_deviance_1_3) (m_deviance_2_3)];
    %figure
    %bar(Y2);
    ciwithin(Y2,0.05,facecolor);
    %title('m deviance');
    %barnames={'1-3','2-3'};
    title('a', 'FontSize',fontsize1);
    barnames={'1','2'};
    xlabel('Withheld WM Load');
    set(gca,'xticklabels',barnames);
    %ylabel('error');
    ylabel('Error (degrees) in Concurrent WM Task');
    set(gca, 'box','off');
    set(gcf, 'color', 'w')
    ylim([0,25]);
    sigstar({[1,2]},[0.001]);
    grid off
    


subplot(2,2,2)
% m_recall_rt_____________________________________________________________
[h,p,ci,stats] = ttest(mean_m_r_rt_1_3, mean_m_r_rt_2_3); % not significant
[h,p,ci,stats] = ttest(MRrt(:,1), MRrt(:,2)); % not significant

    %Y4 =[mean(mean_m_r_rt_1_3) mean(mean_m_r_rt_2_3)];
    Y4 =[(mean_m_r_rt_1_3) (mean_m_r_rt_2_3)];
    ciwithin(Y4,0.05,facecolor);
    %figure
    %bar(Y4);
    %title('m recall rt');
    %barnames={'1-3','2-3'};
    title('b', 'FontSize',fontsize1);
    barnames={'1','2'};
    xlabel('Withheld WM Load');
    set(gca,'xticklabels',barnames);
    %ylabel('error');
    ylabel('Concurrent Task Recall RT (s)');
    set(gca, 'box','off');
    set(gcf, 'color', 'w')
    ylim([0,4]);
    grid off



subplot(2,2,3)
% e-deviance_____________________________________________________________
[h,p,ci,stats] = ttest(e_deviance_1_3, e_deviance_2_3); %significant
[h,p,ci,stats] = ttest(E(:,1), E(:,2)); %significant

    %Y1 =[mean(e_deviance_1_3) mean(e_deviance_2_3)];
    Y1 =[(e_deviance_1_3) (e_deviance_2_3)];
    %figure
    %bar(Y1);
    ciwithin(Y1,0.05,facecolor);
    %title('e deviance');
    %barnames={'1-3','2-3'};
    title('c', 'FontSize',fontsize1);
    barnames={'1','2'};
    xlabel('Withheld WM Load');
    set(gca,'xticklabels',barnames);
    %ylabel('error');
    ylabel('Error (degrees) in Withheld WM Task');
    set(gca, 'box','off');
    set(gcf, 'color', 'w')
    grid off
    sigstar({[1,2]},[0.001]);


subplot(2,2,4)
% e_recall_rt_____________________________________________________________
[h,p,ci,stats] = ttest(mean_e_r_rt_1_3, mean_e_r_rt_2_3); %significant
[h,p,ci,stats] = ttest(ERrt(:,1), ERrt(:,2)); %significant

    %Y3 =[mean(mean_e_r_rt_1_3) mean(mean_e_r_rt_2_3)];
    Y3 =[(mean_e_r_rt_1_3) (mean_e_r_rt_2_3)];
%     figure
%     bar(Y3);
    ciwithin(Y3,0.05,facecolor);
    %title('e recall rt');
    %barnames={'1-3','2-3'};
    title('d', 'FontSize',fontsize1);
    barnames={'1','2'};
    xlabel('Withheld WM Load');
    set(gca,'xticklabels',barnames);
    %ylabel('error');
    ylabel('Withheld Task Recall RT (s)');
    set(gca, 'box','off');
    set(gcf, 'color', 'w')
    ylim([0,4.5]);
    sigstar({[1,2]},[0.001]);
    grid off
    

    
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
    
    
%% COMPARING THE FIRST HALF AND SECOND HALF

mean_e_deviance_1_3_half1 = nan(nC, 1);
mean_e_deviance_2_3_half1 = nan(nC, 1);
mean_m_deviance_1_3_half1 = nan(nC, 1);
mean_m_deviance_2_3_half1 = nan(nC, 1);

mean_m_deviance_part_half1 = nan(nC, 1);
mean_e_deviance_part_half1 = nan(nC, 1);

mean_e_r_rt_1_3_half1 = nan(nC, 1);
mean_e_r_rt_2_3_half1 = nan(nC, 1);
mean_m_r_rt_1_3_half1 = nan(nC, 1);
mean_m_r_rt_2_3_half1 = nan(nC, 1);

mean_e_r_rt_part_half1 = nan(nC, 1);
mean_m_r_rt_part_half1 = nan(nC, 1);




mean_e_deviance_1_3_half2 = nan(nC, 1);
mean_e_deviance_2_3_half2 = nan(nC, 1);
mean_m_deviance_1_3_half2 = nan(nC, 1);
mean_m_deviance_2_3_half2 = nan(nC, 1);

mean_m_deviance_part_half2 = nan(nC, 1);
mean_e_deviance_part_half2 = nan(nC, 1);

mean_e_r_rt_1_3_half2 = nan(nC, 1);
mean_e_r_rt_2_3_half2 = nan(nC, 1);
mean_m_r_rt_1_3_half2 = nan(nC, 1);
mean_m_r_rt_2_3_half2 = nan(nC, 1);

mean_e_r_rt_part_half2 = nan(nC, 1);
mean_m_r_rt_part_half2 = nan(nC, 1);




for x=1:nC
    partdata=C{x};
    
    
           % create index for first and second half for 1,3 and 2,3 
    idxx_1_3_half1=find((partdata(1:40,3)==1) & (partdata(1:40,4)==3));
    idxx_2_3_half1=find((partdata(1:40,3)==2) & (partdata(1:40,4)==3));
    
    idxx_1_3_half2=find((partdata(41:80,3)==1) & (partdata(41:80,4)==3));
    idxx_2_3_half2=find((partdata(41:80,3)==2) & (partdata(41:80,4)==3));
    
    
           % create matrices for each independent variable and condition
           % for each halves
           
           % half1
    mean_e_deviance_1_3_half1(x,1) = mean(partdata(idxx_1_3_half1, 10));
    mean_e_deviance_2_3_half1(x,1) = mean(partdata(idxx_2_3_half1, 10));
    mean_m_deviance_1_3_half1(x,1) = mean(partdata(idxx_1_3_half1, 7));
    mean_m_deviance_2_3_half1(x,1) = mean(partdata(idxx_2_3_half1, 7));
    
    mean_m_deviance_part_half1(x,1) = mean(partdata(1:40, 7));
    mean_e_deviance_part_half1(x,1) = mean(partdata(1:40,10));
    
    mean_e_r_rt_1_3_half1(x,1) = mean(partdata(idxx_1_3_half1, 12));
    mean_e_r_rt_2_3_half1(x,1) = mean(partdata(idxx_2_3_half1, 12));
    mean_m_r_rt_1_3_half1(x,1) = mean(partdata(idxx_1_3_half1, 14));
    mean_m_r_rt_2_3_half1(x,1) = mean(partdata(idxx_2_3_half1, 14));
    
    mean_e_r_rt_part_half1(x,1) = mean(partdata(1:40, 12));
    mean_m_r_rt_part_half1(x,1) = mean(partdata(1:40, 14));
    
    
    
           %half2
    mean_e_deviance_1_3_half2(x,1) = mean(partdata(idxx_1_3_half2+40, 10));
    mean_e_deviance_2_3_half2(x,1) = mean(partdata(idxx_2_3_half2+40, 10));
    mean_m_deviance_1_3_half2(x,1) = mean(partdata(idxx_1_3_half2+40, 7));
    mean_m_deviance_2_3_half2(x,1) = mean(partdata(idxx_2_3_half2+40, 7));
    
    mean_m_deviance_part_half2(x,1) = mean(partdata(41:80, 7));
    mean_e_deviance_part_half2(x,1) = mean(partdata(41:80,10));
    
    mean_e_r_rt_1_3_half2(x,1) = mean(partdata(idxx_1_3_half2+40, 12));
    mean_e_r_rt_2_3_half2(x,1) = mean(partdata(idxx_2_3_half2+40, 12));
    mean_m_r_rt_1_3_half2(x,1) = mean(partdata(idxx_1_3_half2+40, 14));
    mean_m_r_rt_2_3_half2(x,1) = mean(partdata(idxx_2_3_half2+40, 14));
    
    mean_e_r_rt_part_half2(x,1) = mean(partdata(41:80, 12));
    mean_m_r_rt_part_half2(x,1) = mean(partdata(41:80, 14));
    
end

  % creating the overall data matrices for each DV for half1
E_half1 = [mean_e_deviance_1_3_half1 mean_e_deviance_2_3_half1];
EE_half1 = [mean(mean_e_deviance_1_3_half1) mean(mean_e_deviance_2_3_half1)];

M_half1 = [mean_m_deviance_1_3_half1 mean_m_deviance_2_3_half1];
MM_half1 = [mean(mean_m_deviance_1_3_half1) mean(mean_m_deviance_2_3_half1)];

ERrt_half1 = [mean_e_r_rt_1_3_half1 mean_e_r_rt_2_3_half1];
MRrt_half1 = [mean_m_r_rt_1_3_half1 mean_m_r_rt_2_3_half1];


  % creating the overall data matrices for each DV for half2
E_half2 = [mean_e_deviance_1_3_half2 mean_e_deviance_2_3_half2];
EE_half2 = [mean(mean_e_deviance_1_3_half2) mean(mean_e_deviance_2_3_half2)];

M_half2 = [mean_m_deviance_1_3_half2 mean_m_deviance_2_3_half2];
MM_half2 = [mean(mean_m_deviance_1_3_half2) mean(mean_m_deviance_2_3_half2)];

ERrt_half2 = [mean_e_r_rt_1_3_half2 mean_e_r_rt_2_3_half2];
MRrt_half2 = [mean_m_r_rt_1_3_half2 mean_m_r_rt_2_3_half2];


% pairwise comparisons for seperated halves

     %% FIRST HALF
     
% e-deviance_____________________________________________________________
[h,p,ci,stats] = ttest(mean_e_deviance_1_3_half1, mean_e_deviance_2_3_half1);
[h,p,ci,stats] = ttest(E_half1(:,1),E_half1(:,2)); % significant

    Y1 =[mean(mean_e_deviance_1_3_half1) mean(mean_e_deviance_2_3_half1)];
    figure
    bar(Y1);
    title('e deviance');
    barnames={'1-3_half1','2-3_half1'};
    set(gca,'xticklabels',barnames);
    ylabel('error');


% m deviance_____________________________________________________________
[h,p,ci,stats] = ttest(mean_m_deviance_1_3_half1, mean_m_deviance_2_3_half1); 
[h,p,ci,stats] = ttest(M_half1(:,1),M_half1(:,2)); % not significant

    Y2 =[mean(mean_m_deviance_1_3_half1) mean(mean_m_deviance_2_3_half1)];
    figure
    bar(Y2);
    title('m deviance');
    barnames={'1-3_half1','2-3_half1'};
    set(gca,'xticklabels',barnames);
    ylabel('error');

% e_recall_rt_____________________________________________________________
[h,p,ci,stats] = ttest(mean_e_r_rt_1_3_half1, mean_e_r_rt_2_3_half1); 
[h,p,ci,stats] = ttest(ERrt_half1(:,1),ERrt_half1(:,2)); % significant

    Y3 =[mean(mean_e_r_rt_1_3_half1) mean(mean_e_r_rt_2_3_half1)];
    figure
    bar(Y3);
    title('e recall rt');
    barnames={'1-3_half1','2-3_half1'};
    set(gca,'xticklabels',barnames);
    ylabel('error');


% m_recall_rt_____________________________________________________________
[h,p,ci,stats] = ttest(mean_m_r_rt_1_3_half1, mean_m_r_rt_2_3_half1); 
[h,p,ci,stats] = ttest(MRrt_half1(:,1),MRrt_half1(:,2)); % significant

    Y4 =[mean(mean_m_r_rt_1_3_half1) mean(mean_m_r_rt_2_3_half1)];
    figure
    bar(Y4);
    title('m recall rt');
    barnames={'1-3_half1','2-3_half1'};
    set(gca,'xticklabels',barnames);
    ylabel('error');


    
    %%% SECOND HALF
    
    
 % e-deviance_____________________________________________________________
[h,p,ci,stats] = ttest(mean_e_deviance_1_3_half2, mean_e_deviance_2_3_half2); 
[h,p,ci,stats] = ttest(E_half2(:,1),E_half2(:,2)); % more significant

    Y5 =[mean(mean_e_deviance_1_3_half2) mean(mean_e_deviance_2_3_half2)];
    figure
    bar(Y5);
    title('e deviance');
    barnames={'1-3_half2','2-3_half2'};
    set(gca,'xticklabels',barnames);
    ylabel('error');


% m deviance_____________________________________________________________
[h,p,ci,stats] = ttest(mean_m_deviance_1_3_half2, mean_m_deviance_2_3_half2); 
[h,p,ci,stats] = ttest(M_half2(:,1),M_half2(:,2)); % significant

    Y6 =[mean(mean_m_deviance_1_3_half2) mean(mean_m_deviance_2_3_half2)];
    figure
    bar(Y6);
    title('m deviance');
    barnames={'1-3_half2','2-3_half2'};
    set(gca,'xticklabels',barnames);
    ylabel('error');

% e_recall_rt_____________________________________________________________
[h,p,ci,stats] = ttest(mean_e_r_rt_1_3_half2, mean_e_r_rt_2_3_half2); 
[h,p,ci,stats] = ttest(ERrt_half2(:,1),ERrt_half2(:,2)); %significant

    Y7 =[mean(mean_e_r_rt_1_3_half2) mean(mean_e_r_rt_2_3_half2)];
    figure
    bar(Y7);
    title('e recall rt');
    barnames={'1-3_half2','2-3_half2'};
    set(gca,'xticklabels',barnames);
    ylabel('error');


% m_recall_rt_____________________________________________________________
[h,p,ci,stats] = ttest(mean_m_r_rt_1_3_half2, mean_m_r_rt_2_3_half2); 
[h,p,ci,stats] = ttest(MRrt_half2(:,1),MRrt_half2(:,2)); % not significant

    Y8 =[mean(mean_m_r_rt_1_3_half2) mean(mean_m_r_rt_2_3_half2)];
    figure
    bar(Y8);
    title('m recall rt');
    barnames={'1-3_half2','2-3_half2'};
    set(gca,'xticklabels',barnames);
    ylabel('error');


% E=table(E);
% M=table(M);
% ERrt=table(ERrt);
% MRrt=table(MRrt);
% 
% writetable(E,'obl4_all2conditions_e.xlsx'); % the matrix with all 2 within levels (2x1) for encoding deviance
% writetable(M,'obl4_all2conditions_m.xlsx'); % the matrix with all 2 within levels (2x1) for main deviance
% writetable(ERrt,'obl4_all2conditions_errt.xlsx'); % the matrix with all 2 within levels (2x1) for ER rt
% writetable(MRrt,'obl4_all2conditions_mrrt.xlsx'); % the matrix with all 2 within levels (2x1) for MR rt


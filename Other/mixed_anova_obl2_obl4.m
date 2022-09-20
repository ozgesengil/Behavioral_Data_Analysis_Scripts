
T2=dataobl2;
T4=dataobl4;

% To convert the RT in ms to s
ax=find(T2(:,11)>100);
T2(ax,11)=T2(ax,11)/1000;
bx=find(T2(:,12)>100);
T2(bx,12)=T2(bx,12)/1000;
cx=find(T2(:,13)>100);
T2(cx,13)=T2(cx,13)/1000;
dx=find(T2(:,14)>100);
T2(dx,14)=T2(dx,14)/1000;

Par1 = T2(1:84,:);
Par2 = T2(85:168,:);
Par3 = T2(169:252,:);
Par4 = T2(253:336,:);
Par5 = T2(337:420,:);
Par6 = T2(421:504,:);
Par7 = T2(505:588,:);
Par8 = T2(589:672,:);
Par9 = T2(673:756,:);
Par10 = T2(757:840,:);
Par11 = T2(841:924,:);
Par12 = T2(925:1008,:);
Par13 = T2(1009:1092,:);
Par14 = T2(1093:1176,:);
Par15 = T2(1177:1260,:);
Par16 = T2(1261:1344,:);
Par17 = T2(1345:1428,:);
Par18 = T2(1429:1512,:);
Par19 = T2(1513:1596,:);
Par20 = T2(1597:1680,:);
Par21 = T2(1681:1764,:);
Par22 = T2(1765:1848,:);
Par23 = T2(1849:1932,:);
Par24 = T2(1933:2016,:);
Par25 = T2(2017:2100,:);
Par26 = T2(2101:2184,:);
Par27 = T2(2185:2268,:);
Par28 = T2(2269:2352,:);
Par29 = T2(2353:2436,:);
Par30 = T2(2437:2520,:);
Par31 = T2(2521:2604,:);
Par32 = T2(2605:2688,:);
Par33 = T2(2689:2772,:);
Par34 = T2(2773:2856,:);
Par35 = T2(2857:2940,:);
Par36 = T2(2941:3024,:);
Par37 = T2(3025:3108,:);
Par38 = T2(3109:3192,:);
Par39 = T2(3193:3276,:);
Par40 = T2(3277:3360,:);
Par41 = T2(3361:3444,:);
Par42 = T2(3445:3528,:);
Par43 = T2(3529:3612,:);
Par44 = T2(3613:3696,:);
Par45 = T2(3697:3780,:);



C={Par1,Par2,Par3,Par4,Par5,Par6,Par7,Par8,Par9,Par10,Par11,Par12,Par13,...
    Par14,Par15,Par16,Par17,Par18,Par19,Par20,Par21,Par22,Par23,Par24,Par25,Par26,...
    Par27,Par28,Par29,Par30,Par31,Par32,Par33,Par34,Par35,Par36,Par37,...
        Par38,Par39,Par40,Par41,Par42,Par43,Par44,Par45};
nC=length(C);

mean_e_deviance_1_2 = nan(nC, 1);
mean_e_deviance_1_3 = nan(nC, 1);
mean_e_deviance_2_2 = nan(nC, 1);
mean_e_deviance_2_3 = nan(nC, 1);
mean_m_deviance_1_2 = nan(nC, 1);
mean_m_deviance_1_3 = nan(nC, 1);
mean_m_deviance_2_2 = nan(nC, 1);
mean_m_deviance_2_3 = nan(nC, 1);
mean_m_deviance_part = nan(nC, 1);
mean_e_deviance_part = nan(nC, 1);

mean_e_p_rt_1_2 = nan(nC, 1);
mean_e_p_rt_1_3 = nan(nC, 1);
mean_e_p_rt_2_2 = nan(nC, 1);
mean_e_p_rt_2_3 = nan(nC, 1);
mean_e_r_rt_1_2 = nan(nC, 1);
mean_e_r_rt_1_3 = nan(nC, 1);
mean_e_r_rt_2_2 = nan(nC, 1);
mean_e_r_rt_2_3 = nan(nC, 1);
mean_m_p_rt_1_2 = nan(nC, 1);
mean_m_p_rt_1_3 = nan(nC, 1);
mean_m_p_rt_2_2 = nan(nC, 1);
mean_m_p_rt_2_3 = nan(nC, 1);
mean_m_r_rt_1_2 = nan(nC, 1);
mean_m_r_rt_1_3 = nan(nC, 1);
mean_m_r_rt_2_2 = nan(nC, 1);
mean_m_r_rt_2_3 = nan(nC, 1);
mean_e_p_rt_part = nan(nC, 1);
mean_e_r_rt_part = nan(nC, 1);
mean_m_p_rt_part = nan(nC, 1);
mean_m_r_rt_part = nan(nC, 1);

for x=1:nC
    partdata=C{x};

    
    idxx_1_3=find((partdata(:,3)==1) & (partdata(:,4)==3));
    idxx_1_2=find((partdata(:,3)==1) & (partdata(:,4)==2));
    idxx_2_3=find((partdata(:,3)==2) & (partdata(:,4)==3));
    idxx_2_2=find((partdata(:,3)==2) & (partdata(:,4)==2));
    
    mean_e_deviance_1_2(x,1) = mean(partdata(idxx_1_2, 10));
    mean_e_deviance_1_3(x,1) = mean(partdata(idxx_1_3, 10));
    mean_e_deviance_2_2(x,1) = mean(partdata(idxx_2_2, 10));
    mean_e_deviance_2_3(x,1) = mean(partdata(idxx_2_3, 10));
    mean_m_deviance_1_2(x,1) = mean(partdata(idxx_1_2, 7));
    mean_m_deviance_1_3(x,1) = mean(partdata(idxx_1_3, 7));
    mean_m_deviance_2_2(x,1) = mean(partdata(idxx_2_2, 7));
    mean_m_deviance_2_3(x,1) = mean(partdata(idxx_2_3, 7));
    mean_m_deviance_part(x,1) = mean(partdata(:, 7));
    mean_e_deviance_part(x,1) = mean(partdata(:,10));
    
    
mean_e_p_rt_1_2(x,1) = mean(partdata(idxx_1_2, 11));
mean_e_p_rt_1_3(x,1) = mean(partdata(idxx_1_3, 11));
mean_e_p_rt_2_2(x,1) = mean(partdata(idxx_2_2, 11));
mean_e_p_rt_2_3(x,1) = mean(partdata(idxx_2_3, 11));
mean_e_r_rt_1_2(x,1) = mean(partdata(idxx_1_2, 12));
mean_e_r_rt_1_3(x,1) = mean(partdata(idxx_1_3, 12));
mean_e_r_rt_2_2(x,1) = mean(partdata(idxx_2_2, 12));
mean_e_r_rt_2_3(x,1) = mean(partdata(idxx_2_3, 12));
mean_m_p_rt_1_2(x,1) = mean(partdata(idxx_1_2, 13));  
mean_m_p_rt_1_3(x,1) = mean(partdata(idxx_1_3, 13));
mean_m_p_rt_2_2(x,1) = mean(partdata(idxx_2_2, 13));
mean_m_p_rt_2_3(x,1) = mean(partdata(idxx_2_3, 13));
mean_m_r_rt_1_2(x,1) = mean(partdata(idxx_1_2, 14)); 
mean_m_r_rt_1_3(x,1) = mean(partdata(idxx_1_3, 14));
mean_m_r_rt_2_2(x,1) = mean(partdata(idxx_2_2, 14));
mean_m_r_rt_2_3(x,1) = mean(partdata(idxx_2_3, 14));
mean_e_p_rt_part(x,1) = mean(partdata(:, 11));
mean_e_r_rt_part(x,1) = mean(partdata(:, 12));
mean_m_p_rt_part(x,1) = mean(partdata(:, 13));
mean_m_r_rt_part(x,1) = mean(partdata(:, 14));

end
E2 = [mean_e_deviance_1_2 mean_e_deviance_1_3 mean_e_deviance_2_2 mean_e_deviance_2_3];
EE2 = [mean(mean_e_deviance_1_2) mean(mean_e_deviance_1_3) mean(mean_e_deviance_2_2) mean(mean_e_deviance_2_3)];

M2 = [mean_m_deviance_1_2 mean_m_deviance_1_3 mean_m_deviance_2_2 mean_m_deviance_2_3];
MM2 = [mean(mean_m_deviance_1_2) mean(mean_m_deviance_1_3) mean(mean_m_deviance_2_2) mean(mean_m_deviance_2_3)];

ERrt2 = [mean_e_r_rt_1_2 mean_e_r_rt_1_3 mean_e_r_rt_2_2 mean_e_r_rt_2_3];
EPrt2 = [mean_e_p_rt_1_2 mean_e_p_rt_1_3 mean_e_p_rt_2_2 mean_e_p_rt_2_3];
MPrt2 = [mean_m_p_rt_1_2 mean_m_p_rt_1_3 mean_m_p_rt_2_2 mean_m_p_rt_2_3];
MRrt2 = [mean_m_r_rt_1_2 mean_m_r_rt_1_3 mean_m_r_rt_2_2 mean_m_r_rt_2_3];


% Task A Load 1, Task A Load 2, averaging the Task B loads
DATAMAT2=[((M2(:,1)+M2(:,2))./2),((M2(:,3)+M2(:,4))./2)];

% only getting 1,3 and 2,3 conditions
datamat2=[M2(:,2), M2(:,4)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
% To convert the RT in ms to s
ax=find(T4(:,11)>100);
T4(ax,11)=T4(ax,11)/1000;
bx=find(T4(:,12)>100);
T4(bx,12)=T4(bx,12)/1000;
cx=find(T4(:,13)>100);
T4(cx,13)=T4(cx,13)/1000;
dx=find(T4(:,14)>100);
T4(dx,14)=T4(dx,14)/1000;

Par1 = T4(1:80,:);
Par2 = T4(81:160,:);
Par3 = T4(161:240,:);
Par4 = T4(241:320,:);
Par5 = T4(321:400,:);
Par6 = T4(401:480,:);
Par7 = T4(481:560,:);
Par8 = T4(561:640,:);
Par9 = T4(641:720,:);
Par10 = T4(721:800,:);
Par11 = T4(801:880,:);
Par12 = T4(881:960,:);
Par13 = T4(961:1040,:);
Par14 = T4(1041:1120,:);
Par15 = T4(1121:1200,:);
Par16 = T4(1201:1280,:);
Par17 = T4(1281:1360,:);
Par18 = T4(1361:1440,:);
Par19 = T4(1441:1520,:);
Par20 = T4(1521:1600,:);
Par21 = T4(1601:1680,:);
Par22 = T4(1681:1760,:);
Par23 = T4(1761:1840,:);
Par24 = T4(1841:1920,:);
Par25 = T4(1921:2000,:);
Par26 = T4(2001:2080,:);
Par27 = T4(2081:2160,:);
Par28 = T4(2161:2240,:);
Par29 = T4(2241:2320,:);
Par30 = T4(2321:2400,:);
Par31 = T4(2401:2480,:);
Par32 = T4(2481:2560,:);
Par33 = T4(2561:2640,:);
Par34 = T4(2641:2720,:);
Par35 = T4(2721:2800,:);
Par36 = T4(2801:2880,:);
Par37 = T4(2881:2960,:);
Par38 = T4(2961:3040,:);
Par39 = T4(3041:3120,:);
Par40 = T4(3121:3200,:);
Par41 = T4(3201:3280,:);
Par42 = T4(3281:3360,:);
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


mean_e_p_rt_1_3 = nan(nC, 1);
mean_e_p_rt_2_3 = nan(nC, 1);
mean_e_r_rt_1_3 = nan(nC, 1);
mean_e_r_rt_2_3 = nan(nC, 1);
mean_m_p_rt_1_3 = nan(nC, 1);
mean_m_p_rt_2_3 = nan(nC, 1);
mean_m_r_rt_1_3 = nan(nC, 1);
mean_m_r_rt_2_3 = nan(nC, 1);
mean_e_p_rt_part = nan(nC, 1);
mean_e_r_rt_part = nan(nC, 1);
mean_m_p_rt_part = nan(nC, 1);
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
    
    

mean_e_p_rt_1_3(x,1) = mean(partdata(idxx_1_3, 11));
mean_e_p_rt_2_3(x,1) = mean(partdata(idxx_2_3, 11));
mean_e_r_rt_1_3(x,1) = mean(partdata(idxx_1_3, 12));
mean_e_r_rt_2_3(x,1) = mean(partdata(idxx_2_3, 12));
mean_m_p_rt_1_3(x,1) = mean(partdata(idxx_1_3, 13));
mean_m_p_rt_2_3(x,1) = mean(partdata(idxx_2_3, 13));
mean_m_r_rt_1_3(x,1) = mean(partdata(idxx_1_3, 14));
mean_m_r_rt_2_3(x,1) = mean(partdata(idxx_2_3, 14));
mean_e_p_rt_part(x,1) = mean(partdata(:, 11));
mean_e_r_rt_part(x,1) = mean(partdata(:, 12));
mean_m_p_rt_part(x,1) = mean(partdata(:, 13));
mean_m_r_rt_part(x,1) = mean(partdata(:, 14));

end
E4 = [mean_e_deviance_1_3 mean_e_deviance_2_3];
EE4 = [mean(mean_e_deviance_1_3) mean(mean_e_deviance_2_3)];

M4 = [mean_m_deviance_1_3 mean_m_deviance_2_3];
MM4 = [mean(mean_m_deviance_1_3) mean(mean_m_deviance_2_3)];

ERrt4 = [mean_e_r_rt_1_3 mean_e_r_rt_2_3];
MRrt4 = [mean_m_r_rt_1_3 mean_m_r_rt_2_3];

% Task A Load 1, Task A Load 2
DATAMAT4=M4;


%%
DATAMAT=[DATAMAT2;DATAMAT4]; 

datamat=[datamat2;DATAMAT4];

%%

% Between_Factors Matrix (will be 87x1, column: 1=obl2, 2=obl4)

Between_Factors(1:size(M2,1),:)=1;
Between_Factors((size(M2,1)+1):(size(M4,1)+size(M2,1)),:)=2;

%%
% Simple_mixed_anova with Experiment (obl2 or obl4) as between subjects
% factor and Task A Load (1 or 2) as within subjects factor...

% Dependent variable: Main Task Deviance (Error)
% Independent variables: Task A Load (2levels), Experiment (2levels)

% % VERSION 1_____NOT NECESSARY___________________________________________________________
% % For obl2, Task A Load error values are calculated by
% % averaging across Task B Load 2 and 3 for each level of Task A Load.
% % (1,2)and(1,3) are averaged together=TaskA1 and (2,2)and(2,3) are averaged
% % together=TaskA2
% 
% % For obl4, the matrix only consists of Task B Load 3 condition for each
% % level of Taks A load.
% 
% [tbl1,rm1] = simple_mixed_anova(DATAMAT, Between_Factors, {'TaskALoad'}, {'Experiment'});
%      % Both of the main effects are present, no interaction

% VERSION 2________________________________________________________________
% For obl2, Task A Load error values are calculated by
% only getting 1,3 and 2,3 conditions (Task B load is always 3).

% For obl4, the matrix only consists of Task B Load 3 condition for each
% level of Taks A load.

[tbl2,rm2] = simple_mixed_anova(datamat, Between_Factors, {'TaskALoad'}, {'Experiment'});
    % Both of the main effects are present, no interaction
%% Writing Data to excel for SPSS analysis

% Mix_2_4_mdev_version1=[DATAMAT, Between_Factors];
% Mix_2_4_mdev_version2=[datamat, Between_Factors];
% 
% Mix_2_4_mdev_version1=table(Mix_2_4_mdev_version1);
% Mix_2_4_mdev_version2=table(Mix_2_4_mdev_version2);
% 
% writetable(Mix_2_4_mdev_version1,'obl_2_4_mixed_m_version1.xlsx');
% writetable(Mix_2_4_mdev_version2,'obl_2_4_mixed_m_version2.xlsx');

%%



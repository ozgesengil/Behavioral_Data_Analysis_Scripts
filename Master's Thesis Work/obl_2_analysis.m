
T = dataobl2;

% to convert the RT in ms to s
ax=find(T(:,11)>100);
T(ax,11)=T(ax,11)/1000;
bx=find(T(:,12)>100);
T(bx,12)=T(bx,12)/1000;
cx=find(T(:,13)>100);
T(cx,13)=T(cx,13)/1000;
dx=find(T(:,14)>100);
T(dx,14)=T(dx,14)/1000;

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
Par17 = T(1345:1428,:);
Par18 = T(1429:1512,:);
Par19 = T(1513:1596,:);
Par20 = T(1597:1680,:);
Par21 = T(1681:1764,:);
Par22 = T(1765:1848,:);
Par23 = T(1849:1932,:);
Par24 = T(1933:2016,:);
Par25 = T(2017:2100,:);
Par26 = T(2101:2184,:);
Par27 = T(2185:2268,:);
Par28 = T(2269:2352,:);
Par29 = T(2353:2436,:);
Par30 = T(2437:2520,:);
Par31 = T(2521:2604,:);
Par32 = T(2605:2688,:);
Par33 = T(2689:2772,:);
Par34 = T(2773:2856,:);
Par35 = T(2857:2940,:);
Par36 = T(2941:3024,:);
Par37 = T(3025:3108,:);
Par38 = T(3109:3192,:);
Par39 = T(3193:3276,:);
Par40 = T(3277:3360,:);
Par41 = T(3361:3444,:);
Par42 = T(3445:3528,:);
Par43 = T(3529:3612,:);
Par44 = T(3613:3696,:);
Par45 = T(3697:3780,:);


%column 15=participant number
F=84;
T(1:84,15) = zeros(F,1)+1;
T(85:168,15)=zeros(F,1)+2;
T(169:252,15)=zeros(F,1)+3;
T(253:336,15)=zeros(F,1)+4;
T(337:420,15)=zeros(F,1)+5;
T(421:504,15)=zeros(F,1)+6;
T(505:588,15)=zeros(F,1)+7;
T(589:672,15)=zeros(F,1)+8;
T(673:756,15)=zeros(F,1)+9;
T(757:840,15)=zeros(F,1)+10;
T(841:924,15)=zeros(F,1)+11;
T(925:1008,15)=zeros(F,1)+12;
T(1009:1092,15)=zeros(F,1)+13;
T(1093:1176,15)=zeros(F,1)+14;
T(1177:1260,15)=zeros(F,1)+15;
T(1261:1344,15)=zeros(F,1)+16;
T(1345:1428,15)=zeros(F,1)+17;
T(1429:1512,15)=zeros(F,1)+18;
T(1513:1596,15)=zeros(F,1)+19;
T(1597:1680,15)=zeros(F,1)+20;
T(1681:1764,15)=zeros(F,1)+21;
T(1765:1848,15)=zeros(F,1)+22;
T(1849:1932,15)=zeros(F,1)+23;
T(1933:2016,15)=zeros(F,1)+24;
T(2017:2100,15)=zeros(F,1)+25;
T(2101:2184,15)=zeros(F,1)+26;
T(2185:2268,15)=zeros(F,1)+27;
T(2269:2352,15)=zeros(F,1)+28;
T(2353:2436,15)=zeros(F,1)+29;
T(2437:2520,15)=zeros(F,1)+30;
T(2521:2604,15)=zeros(F,1)+31;
T(2605:2688,15)=zeros(F,1)+32;
T(2689:2772,15)=zeros(F,1)+33;
T(2773:2856,15)=zeros(F,1)+34;
T(2857:2940,15)=zeros(F,1)+35;
T(2941:3024,15)=zeros(F,1)+36;
T(3025:3108,15)=zeros(F,1)+37;
T(3109:3192,15)=zeros(F,1)+38;
T(3193:3276,15)=zeros(F,1)+39;
T(3277:3360,15)=zeros(F,1)+40;
T(3361:3444,15)=zeros(F,1)+41;
T(3445:3528,15)=zeros(F,1)+42;
T(3529:3612,15)=zeros(F,1)+43;
T(3613:3696,15)=zeros(F,1)+44;
T(3697:3780,15)=zeros(F,1)+45;


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
mean_m_r_rt_2_3(x,1)= mean(partdata(idxx_2_3, 14));
mean_e_p_rt_part(x,1) = mean(partdata(:, 11));
mean_e_r_rt_part(x,1) = mean(partdata(:, 12));
mean_m_p_rt_part(x,1) = mean(partdata(:, 13));
mean_m_r_rt_part(x,1) = mean(partdata(:, 14));

end
E = [mean_e_deviance_1_2 mean_e_deviance_1_3 mean_e_deviance_2_2 mean_e_deviance_2_3];
EE = [mean(mean_e_deviance_1_2) mean(mean_e_deviance_1_3) mean(mean_e_deviance_2_2) mean(mean_e_deviance_2_3)];

M = [mean_m_deviance_1_2 mean_m_deviance_1_3 mean_m_deviance_2_2 mean_m_deviance_2_3];
MM = [mean(mean_m_deviance_1_2) mean(mean_m_deviance_1_3) mean(mean_m_deviance_2_2) mean(mean_m_deviance_2_3)];

ERrt = [mean_e_r_rt_1_2 mean_e_r_rt_1_3 mean_e_r_rt_2_2 mean_e_r_rt_2_3];
EPrt = [mean_e_p_rt_1_2 mean_e_p_rt_1_3 mean_e_p_rt_2_2 mean_e_p_rt_2_3];
MPrt = [mean_m_p_rt_1_2 mean_m_p_rt_1_3 mean_m_p_rt_2_2 mean_m_p_rt_2_3];
MRrt = [mean_m_r_rt_1_2 mean_m_r_rt_1_3 mean_m_r_rt_2_2 mean_m_r_rt_2_3];


idx_1_2=((T(:,3)==1) & T(:,4)==2);
idx_1_3=((T(:,3)==1) & T(:,4)==3);
idx_2_2=((T(:,3)==2) & T(:,4)==2);
idx_2_3=((T(:,3)==2) & T(:,4)==3);

e_deviance_1_3 = T(idx_1_3, 10);
e_deviance_1_2 = T(idx_1_2, 10);
e_deviance_2_2 = T(idx_2_2, 10);
e_deviance_2_3 = T(idx_2_3, 10);

m_deviance_1_3 = T(idx_1_3, 7);
m_deviance_1_2 = T(idx_1_2, 7);
m_deviance_2_2 = T(idx_2_2, 7);
m_deviance_2_3 = T(idx_2_3, 7);

%grouping whole data for condition: 1_1, 1_2, 2_2, 2_3
zerocolumn = zeros(3780, 1);
T = [T zerocolumn];
T(idx_1_2, 16) = 1; % if 16th column is 1: 1_2
T(idx_1_3, 16) = 2; % if 16th column is 2: 1_3
T(idx_2_2, 16) = 3; % if 16th column is 3: 2_2
T(idx_2_3, 16) = 4; % if 16th column is 4: 2_3


TaskA2_indx = find(T(:,3)==2);
TaskA1_indx = find(T(:,3)==1);
TaskB2_indx = find(T(:,4)==2);
TaskB3_indx = find(T(:,4)==3);

mean(mean(T(TaskA1_indx, 10)));
mean(mean(T(TaskA2_indx, 10)));
mean(mean(T(TaskB2_indx, 10)));
mean(mean(T(TaskB3_indx, 10)));


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% pairwise comparisons for load pair conditions (A,B)

[h,p,ci,stats] = ttest(e_deviance_1_2, e_deviance_1_3); %significant

[h,p,ci,stats] = ttest(e_deviance_2_2, e_deviance_2_3); %not significant

Y3=[mean(e_deviance_1_2) mean(e_deviance_1_3)
mean(e_deviance_2_2) mean(e_deviance_2_3)];
%bar(Y3)

[h,p,ci,stats] = ttest(m_deviance_1_2, m_deviance_1_3); %significant

[h,p,ci,stats] = ttest(m_deviance_2_2, m_deviance_2_3); %significant

Y4=[mean(m_deviance_1_2) mean(m_deviance_1_3)
mean(m_deviance_2_2) mean(m_deviance_2_3)];




[h,p,ci,stats] = ttest(m_deviance_1_2, m_deviance_2_2); %significant

[h,p,ci,stats] = ttest(m_deviance_1_3, m_deviance_2_3); %significant

Y5=[mean(m_deviance_1_2) mean(m_deviance_2_2)
mean(m_deviance_1_3) mean(m_deviance_2_3)];
%bar(Y5)

[h,p,ci,stats] = ttest(e_deviance_1_2, e_deviance_2_2); % significant

[h,p,ci,stats] = ttest(e_deviance_1_3, e_deviance_2_3); % significant

Y6=[mean(e_deviance_1_2) mean(e_deviance_2_2)
mean(e_deviance_1_3) mean(e_deviance_2_3)];
%bar(Y6)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%RT

% Task load on Task A presentation rt
Y7=[mean(mean(T(TaskA1_indx,11))), mean(mean(T(TaskA2_indx, 11)))
mean(mean(T(TaskB2_indx, 11))), mean(mean(T(TaskB3_indx, 11)))];
%bar(Y7)

% Task load on Task A recall rt
Y8=[mean(mean(T(TaskA1_indx, 12))), mean(mean(T(TaskA2_indx, 12)))
mean(mean(T(TaskB2_indx, 12))), mean(mean(T(TaskB3_indx, 12)))];
%bar(Y8)

% Task load on Task B presentation rt
Y9=[mean(mean(T(TaskA1_indx, 13))), mean(mean(T(TaskA2_indx, 13)))
mean(mean(T(TaskB2_indx, 13))), mean(mean(T(TaskB3_indx, 13)))];
%bar(Y9)

% Task load on Task B recall rt
Y10=[mean(mean(T(TaskA1_indx, 14))), mean(mean(T(TaskA2_indx, 14)))
mean(mean(T(TaskB2_indx, 14))), mean(mean(T(TaskB3_indx, 14)))];
%bar(Y10)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[h,p,ci,stats] =ttest(mean(T(TaskA1_indx, 7)),mean(T(TaskA2_indx, 7)));
[h,p,ci,stats] =ttest(mean(T(TaskA1_indx, 10)),mean(T(TaskA2_indx, 10)));
[h,p,ci,stats] =ttest(mean(T(TaskA1_indx, 11)),mean(T(TaskA2_indx, 11)));
[h,p,ci,stats] =ttest(mean(T(TaskA1_indx, 12)),mean(T(TaskA2_indx, 12)));
[h,p,ci,stats] =ttest(mean(T(TaskA1_indx, 13)),mean(T(TaskA2_indx, 13)));
[h,p,ci,stats] =ttest(mean(T(TaskA1_indx, 14)),mean(T(TaskA2_indx, 14)));


[h,p,ci,stats] =ttest(mean(T(TaskB2_indx, 7)),mean(T(TaskB3_indx, 7)));
[h,p,ci,stats] =ttest(mean(T(TaskB2_indx, 10)),mean(T(TaskB3_indx, 10)));
[h,p,ci,stats] =ttest(mean(T(TaskB2_indx, 11)),mean(T(TaskB3_indx, 11)));
[h,p,ci,stats] =ttest(mean(T(TaskB2_indx, 12)),mean(T(TaskB3_indx, 12)));
[h,p,ci,stats] =ttest(mean(T(TaskB2_indx, 13)),mean(T(TaskB3_indx, 13)));
[h,p,ci,stats] =ttest(mean(T(TaskB2_indx, 14)),mean(T(TaskB3_indx, 14)));


Y1=[mean(mean(T(TaskA1_indx, 10))), mean(mean(T(TaskA2_indx, 10)))
mean(mean(T(TaskB2_indx, 10))), mean(mean(T(TaskB3_indx, 10)))];
%bar(Y1)
Y2=[mean(mean(T(TaskA1_indx, 7))), mean(mean(T(TaskA2_indx, 7)))
mean(mean(T(TaskB2_indx, 7))), mean(mean(T(TaskB3_indx, 7)))];
%bar(Y2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%T-TESTS

[h,p,ci,stats] = ttest(T(TaskB2_indx, 10), T(TaskB3_indx, 10)); %significant
[h,p,ci,stats] = ttest(T(TaskB2_indx, 7), T(TaskB3_indx, 7)); %significant

[h,p,ci,stats] = ttest(T(TaskB2_indx, 11), T(TaskB3_indx, 11)); % ns
[h,p,ci,stats] = ttest(T(TaskB2_indx, 12), T(TaskB3_indx, 12)); %significant
[h,p,ci,stats] = ttest(T(TaskB2_indx, 13), T(TaskB3_indx, 13)); %significant
[h,p,ci,stats] = ttest(T(TaskB2_indx, 14), T(TaskB3_indx, 14)); %significant

[h,p,ci,stats] = ttest(T(TaskA1_indx, 10), T(TaskA2_indx, 10)); %significant
[h,p,ci,stats] = ttest(T(TaskA1_indx, 7), T(TaskA2_indx, 7)); % ns

[h,p,ci,stats] = ttest(T(TaskA1_indx, 11), T(TaskA2_indx, 11)); %significant
[h,p,ci,stats] = ttest(T(TaskA1_indx, 12), T(TaskA2_indx, 12)); %significant
[h,p,ci,stats] = ttest(T(TaskA1_indx, 13), T(TaskA2_indx, 13)); % ns
[h,p,ci,stats] = ttest(T(TaskA1_indx, 14), T(TaskA2_indx, 14)); % ns

% DEVIANCE
% two sample t test with participant means
[h,p,ci,stats] = ttest(E(:,1), E(:,2)); % significant
[h,p,ci,stats] = ttest(E(:,1), E(:,3)); % significant
[h,p,ci,stats] = ttest(E(:,1), E(:,4)); % significant
[h,p,ci,stats] = ttest(E(:,2), E(:,3)); % marginally significant
[h,p,ci,stats] = ttest(E(:,2), E(:,4)); % significant
[h,p,ci,stats] = ttest(E(:,3), E(:,4)); % not significant

[h,p,ci,stats] = ttest(M(:,1), M(:,2)); % significant
[h,p,ci,stats] = ttest(M(:,1), M(:,3)); % not significant
[h,p,ci,stats] = ttest(M(:,1), M(:,4)); % significant
[h,p,ci,stats] = ttest(M(:,2), M(:,3)); % not significant
[h,p,ci,stats] = ttest(M(:,2), M(:,4)); % not significant
[h,p,ci,stats] = ttest(M(:,3), M(:,4)); % significant

%condition vs population mean, one sample t test
[h,p,ci,stats] = ttest(E(:,1), mean_e_deviance_part); % significant
[h,p,ci,stats] = ttest(E(:,2), mean_e_deviance_part); % not significant
[h,p,ci,stats] = ttest(E(:,3), mean_e_deviance_part); % marginally significant
[h,p,ci,stats] = ttest(E(:,4), mean_e_deviance_part); % significant

[h,p,ci,stats] = ttest(M(:,1), mean_m_deviance_part); % significant
[h,p,ci,stats] = ttest(M(:,2), mean_m_deviance_part); % not significant
[h,p,ci,stats] = ttest(M(:,3), mean_m_deviance_part); % significant
[h,p,ci,stats] = ttest(M(:,4), mean_m_deviance_part); % significant



% RT 
% two sample t test with participant means
[h,p,ci,stats] = ttest(ERrt(:,1), ERrt(:,2)); % not significant, marginally
[h,p,ci,stats] = ttest(ERrt(:,1), ERrt(:,3)); % significant
[h,p,ci,stats] = ttest(ERrt(:,1), ERrt(:,4)); % significant
[h,p,ci,stats] = ttest(ERrt(:,2), ERrt(:,3)); % significant
[h,p,ci,stats] = ttest(ERrt(:,2), ERrt(:,4)); % significant
[h,p,ci,stats] = ttest(ERrt(:,3), ERrt(:,4)); % not significant

[h,p,ci,stats] = ttest(EPrt(:,1), EPrt(:,2)); % not significant
[h,p,ci,stats] = ttest(EPrt(:,1), EPrt(:,3)); % significant
[h,p,ci,stats] = ttest(EPrt(:,1), EPrt(:,4)); % significant
[h,p,ci,stats] = ttest(EPrt(:,2), EPrt(:,3)); % significant
[h,p,ci,stats] = ttest(EPrt(:,2), EPrt(:,4)); % significant
[h,p,ci,stats] = ttest(EPrt(:,3), EPrt(:,4)); % not significant

[h,p,ci,stats] = ttest(MRrt(:,1), MRrt(:,2)); % significant
[h,p,ci,stats] = ttest(MRrt(:,1), MRrt(:,3)); % not significant
[h,p,ci,stats] = ttest(MRrt(:,1), MRrt(:,4)); % significant
[h,p,ci,stats] = ttest(MRrt(:,2), MRrt(:,3)); % significant
[h,p,ci,stats] = ttest(MRrt(:,2), MRrt(:,4)); % not significant
[h,p,ci,stats] = ttest(MRrt(:,3), MRrt(:,4)); % significant

[h,p,ci,stats] = ttest(MPrt(:,1), MPrt(:,2)); % significant
[h,p,ci,stats] = ttest(MPrt(:,1), MPrt(:,3)); % significant
[h,p,ci,stats] = ttest(MPrt(:,1), MPrt(:,4)); % significant
[h,p,ci,stats] = ttest(MPrt(:,2), MPrt(:,3)); % significant
[h,p,ci,stats] = ttest(MPrt(:,2), MPrt(:,4)); % not significant
[h,p,ci,stats] = ttest(MPrt(:,3), MPrt(:,4)); % significant


%condition vs population mean, one sample t test
[h,p,ci,stats] = ttest(ERrt(:,1), mean_e_r_rt_part); % significant
[h,p,ci,stats] = ttest(ERrt(:,2), mean_e_r_rt_part); % significant
[h,p,ci,stats] = ttest(ERrt(:,3), mean_e_r_rt_part); % significant
[h,p,ci,stats] = ttest(ERrt(:,4), mean_e_r_rt_part); % significant

[h,p,ci,stats] = ttest(EPrt(:,1), mean_e_p_rt_part); % significant
[h,p,ci,stats] = ttest(EPrt(:,2), mean_e_p_rt_part); % significant
[h,p,ci,stats] = ttest(EPrt(:,3), mean_e_p_rt_part); % significant
[h,p,ci,stats] = ttest(EPrt(:,4), mean_e_p_rt_part); % significant

[h,p,ci,stats] = ttest(MRrt(:,1), mean_m_r_rt_part); % significant
[h,p,ci,stats] = ttest(MRrt(:,2), mean_m_r_rt_part); % significant
[h,p,ci,stats] = ttest(MRrt(:,3), mean_m_r_rt_part); % significant
[h,p,ci,stats] = ttest(MRrt(:,4), mean_m_r_rt_part); % not significant

[h,p,ci,stats] = ttest(MPrt(:,1), mean_m_p_rt_part); % significant
[h,p,ci,stats] = ttest(MPrt(:,2), mean_m_p_rt_part); % significant
[h,p,ci,stats] = ttest(MPrt(:,3), mean_m_p_rt_part); % significant
[h,p,ci,stats] = ttest(MPrt(:,4), mean_m_p_rt_part); % significant

%%%%%%%%%%%%%%%%%%%%%%%%%%

%REPEATED MEASURES ANOVA, 2x2, (TaskA Conditions(1vs2))x(TaskB
%Conditions(2vs3))

varNames = cell(2*2,1); 
for i = 1 : 2*2
v = strcat('V',num2str(i));
varNames{i,1} = v;
end
% Create a table storing the responses
tE=array2table(E, 'VariableNames',varNames); % for encoding deviance
tM=array2table(M, 'VariableNames',varNames); % for main task deviance
tERrt=array2table(ERrt, 'VariableNames',varNames); % for encoding recall rt
tEPrt=array2table(EPrt, 'VariableNames',varNames); % for encoding presentation rt
tMRrt=array2table(MRrt, 'VariableNames',varNames); % for main task recall rt
tMPrt=array2table(MPrt, 'VariableNames',varNames); % for main task presentation rt
% Create a table reflecting the within subject factors
ET = cell(2*2,1); % Task A (Encoding) load conditions
MT = cell(2*2,1); % Task B (Main) load conditions
% Assigning the values to the parameters based on the data sorting
c1 = cell(1,1); c1{1} = 'A1'; c1 = repmat(c1,2,1); ET(1:2, 1) = c1; 
c1 = cell(1,1); c1{1} = 'A2'; c1 = repmat(c1,2,1); ET(3: end,1) = c1;
c1 = cell(1,1); c1{1} = 'B2'; c1 = repmat(c1,2,1); MT(1:2:end, 1) = c1; 
c1 = cell(1,1); c1{1} = 'B3'; c1 = repmat(c1,2,1); MT(2:2:end,1) = c1;
% Create the within table
factorNames = {'ETT','MTT'}; 
within = table(ET, MT, 'VariableNames', factorNames);

%repeated measures anova for encoding task deviance 
rm1 = fitrm(tE,'V1-V4~1','WithinDesign',within); 
[ranovatblb_e] = ranova(rm1, 'WithinModel','ETT*MTT'); % *  Both of the main effects are present
Mrm1 = multcompare(rm1,'ETT','By','MTT','ComparisonType','bonferroni'); 
Mrm2 = multcompare(rm1,'MTT','By','ETT','ComparisonType','bonferroni'); 

%repeated measures anova for main task deviance 
rm2 = fitrm(tM,'V1-V4~1','WithinDesign',within);
[ranovatblb_m] = ranova(rm2, 'WithinModel','ETT*MTT'); % * Main effect of the main task
Mrm3 = multcompare(rm2,'ETT','By','MTT','ComparisonType','bonferroni'); 
Mrm4 = multcompare(rm2,'MTT','By','ETT','ComparisonType','bonferroni'); 

%repeated measures anova for encoding recall rt
rm3 = fitrm(tERrt,'V1-V4~1','WithinDesign',within); 
[ranovatblb] = ranova(rm3, 'WithinModel','ETT*MTT'); % * Both of the main effects are present
Mrm5 = multcompare(rm3,'ETT','By','MTT','ComparisonType','bonferroni'); 
Mrm6 = multcompare(rm3,'MTT','By','ETT','ComparisonType','bonferroni'); 

%repeated measures anova for encoding presentation rt
rm4 = fitrm(tEPrt,'V1-V4~1','WithinDesign',within); 
[ranovatblb] = ranova(rm4, 'WithinModel','ETT*MTT'); % Main effect of encoding task load
Mrm7 = multcompare(rm4,'ETT','By','MTT','ComparisonType','bonferroni');
Mrm8 = multcompare(rm4,'MTT','By','ETT','ComparisonType','bonferroni');

%repeated measures anova for main task recall rt
rm5 = fitrm(tMRrt,'V1-V4~1','WithinDesign',within); 
[ranovatblb_mr_rt] = ranova(rm5, 'WithinModel','ETT*MTT'); % Main effect of Main task load
Mrm9 = multcompare(rm5,'ETT','By','MTT','ComparisonType','bonferroni');
Mrm10 = multcompare(rm5,'MTT','By','ETT','ComparisonType','bonferroni');

%repeated measures anova for main task presentation rt
rm6 = fitrm(tMPrt,'V1-V4~1','WithinDesign',within); 
[ranovatblb_mp_rt] = ranova(rm6, 'WithinModel','ETT*MTT'); % Main effect of Main task load
Mrm11 = multcompare(rm6,'ETT','By','MTT','ComparisonType','bonferroni');
Mrm12 = multcompare(rm6,'MTT','By','ETT','ComparisonType','bonferroni');





%% 


%%%%%%%%%%%%%%%%%%%%%%%%

%%%% SEQUENTIAL POSITION ANALYSIS

C={Par1,Par2,Par3,Par4,Par5,Par6,Par7,Par8,Par9,Par10,Par11,Par12,Par13,...
    Par14,Par15,Par16,Par17,Par18,Par19,Par20,Par21,Par22,Par23,Par24,Par25,Par26,...
    Par27,Par28,Par29,Par30,Par31,Par32,Par33,Par34,Par35,Par36,Par37,...
        Par38,Par39,Par40,Par41,Par42,Par43,Par44,Par45};
    
nC=length(C);
pos_1as_1_2=nan(nC,1);
pos_2as_1_2=nan(nC,1);
pos_3as_1_2=nan(nC,1);
pos_4as_1_2=nan(nC,1);

pos_1as_1_3=nan(nC,1);
pos_2as_1_3=nan(nC,1);
pos_3as_1_3=nan(nC,1);
pos_4as_1_3=nan(nC,1);

pos_1as_2_2=nan(nC,1);
pos_2as_2_2=nan(nC,1);
pos_3as_2_2=nan(nC,1);
pos_4as_2_2=nan(nC,1);

pos_1as_2_3=nan(nC,1);
pos_2as_2_3=nan(nC,1);
pos_3as_2_3=nan(nC,1);
pos_4as_2_3=nan(nC,1);

for x=1:nC
    partdata=C{x};

indx_1as_1_2= find((partdata(:,2)==1) & (partdata(:,3)==1) & (partdata(:,4)==2));
indx_2as_1_2= find((partdata(:,2)==2) & (partdata(:,3)==1) & (partdata(:,4)==2));
indx_3as_1_2= find((partdata(:,2)==3) & (partdata(:,3)==1) & (partdata(:,4)==2));
indx_4as_1_2= find((partdata(:,2)==4) & (partdata(:,3)==1) & (partdata(:,4)==2));

indx_1as_1_3= find((partdata(:,2)==1) & (partdata(:,3)==1) & (partdata(:,4)==3));
indx_2as_1_3= find((partdata(:,2)==2) & (partdata(:,3)==1) & (partdata(:,4)==3));
indx_3as_1_3= find((partdata(:,2)==3) & (partdata(:,3)==1) & (partdata(:,4)==3));
indx_4as_1_3= find((partdata(:,2)==4) & (partdata(:,3)==1) & (partdata(:,4)==3));

indx_1as_2_2= find((partdata(:,2)==1) & (partdata(:,3)==2) & (partdata(:,4)==2));
indx_2as_2_2= find((partdata(:,2)==2) & (partdata(:,3)==2) & (partdata(:,4)==2));
indx_3as_2_2= find((partdata(:,2)==3) & (partdata(:,3)==2) & (partdata(:,4)==2));
indx_4as_2_2= find((partdata(:,2)==4) & (partdata(:,3)==2) & (partdata(:,4)==2));

indx_1as_2_3= find((partdata(:,2)==1) & (partdata(:,3)==2) & (partdata(:,4)==3));
indx_2as_2_3= find((partdata(:,2)==2) & (partdata(:,3)==2) & (partdata(:,4)==3));
indx_3as_2_3= find((partdata(:,2)==3) & (partdata(:,3)==2) & (partdata(:,4)==3));
indx_4as_2_3= find((partdata(:,2)==4) & (partdata(:,3)==2) & (partdata(:,4)==3));

pos_1as_1_2(x,1)= length(indx_1as_1_2);
pos_2as_1_2(x,1)= length(indx_2as_1_2);
pos_3as_1_2(x,1)= length(indx_3as_1_2);
pos_4as_1_2(x,1)= length(indx_4as_1_2);

pos_1as_1_3(x,1)= length(indx_1as_1_3);
pos_2as_1_3(x,1)= length(indx_2as_1_3);
pos_3as_1_3(x,1)= length(indx_3as_1_3);
pos_4as_1_3(x,1)= length(indx_4as_1_3);

pos_1as_2_2(x,1)= length(indx_1as_2_2);
pos_2as_2_2(x,1)= length(indx_2as_2_2);
pos_3as_2_2(x,1)= length(indx_3as_2_2);
pos_4as_2_2(x,1)= length(indx_4as_2_2);

pos_1as_2_3(x,1)= length(indx_1as_2_3);
pos_2as_2_3(x,1)= length(indx_2as_2_3);
pos_3as_2_3(x,1)= length(indx_3as_2_3);
pos_4as_2_3(x,1)= length(indx_4as_2_3);

end

pos_1_2= [pos_1as_1_2 pos_2as_1_2 pos_3as_1_2 pos_4as_1_2];
pos_1_3= [pos_1as_1_3 pos_2as_1_3 pos_3as_1_3 pos_4as_1_3];
pos_2_2= [pos_1as_2_2 pos_2as_2_2 pos_3as_2_2 pos_4as_2_2];
pos_2_3= [pos_1as_2_3 pos_2as_2_3 pos_3as_2_3 pos_4as_2_3];

% figure;
% for i=1:length(pos_1_2)
% subplot(2,2,1);
% bar(pos_1_2(i,:));
% subplot(2,2,2);
% bar(pos_1_3(i,:));
% subplot(2,2,3);
% bar(pos_2_2(i,:));
% subplot(2,2,4);
% bar(pos_2_3(i,:));
% %uncomment 'pause' and then need to press enter to see the data plotted for each participant
% pause;
% end
    

mean(pos_1_2);
mean(pos_1_3);
mean(pos_2_2);
mean(pos_2_3);

f=figure(2);
subplot(2,2,1);
p1=bar(mean(pos_1_2));
title('Distribution of 1-2 to trials in a session');
subplot(2,2,2);
p2=bar(mean(pos_1_3));
title('Distribution of 1-3 to trials in a session');
subplot(2,2,3);
p3=bar(mean(pos_2_2));
title('Distribution of 2-2 to trials in a session');
subplot(2,2,4);
p4=bar(mean(pos_2_3));
title('Distribution of 2-3 to trials in a session');
get(f);
set(p1, 'FaceColor', 'magenta');
set(p2, 'FaceColor', 'cyan');
set(p3, 'FaceColor', 'green');
set(p4, 'FaceColor', 'blue');



%% Plotting the principle finding for the poster - m deviance

% %Finding SEM; Loftus and Masson (1994); assuming the same SEM for all
% %levels - not used for now
% SEMm=sqrt(ranovatblb_m{2,3}/nC);
% SEMe=sqrt(ranovatblb_e{2,3}/nC);

%arrange the output matrix in a grouped way
Y4=[mean(m_deviance_1_2) mean(m_deviance_2_2)
mean(m_deviance_1_3) mean(m_deviance_2_3)];

%setting plot parameters
xlab={'2', '3'}; 
b=bar(Y4, 'grouped');
title('a','FontSize',30); 
xlabel('Concurrent Task WM Load');
set(gca,'xticklabel',xlab)


ylabel('Error (degrees) in Concurrent WM Task'); 
%set(b, {'DisplayName'}, {'Concurrent WM Load:2','Concurrent WM Load:3'}');

b(1).FaceColor = [.2 .6 .5]; %bar colour 1
b(2).FaceColor = [.5, 0.75, 0.75]; %bar colour 2

set(gca, 'box','off');
set(gcf, 'color', 'w')
grid off
ylim([0,20]); %plot height



%%%%%%% CALCULATING CONFIDENCE INTERVALS FOR WITHIN DESIGN%%%%%%%%%%

% remove between subject variances by Simply subtract each participant’s mean 
% from each of the four conditions (for 2x2). 
%This will balance each participant’s data around 0 ms.

newM= M-(mean(M,2));


%These RTs/errors no longer makes sense (negatives exists).
%To make the data appropriate for the conditions, simply add the grand mean
%to all the normalised means. (original means-participant means+grand mean)

newM=newM+mean(MM);


%after that notice that the patterns in the last two operations are the same, 
%but the reaction times are now in a normal range for the conditions 
%(i.e. we have removed the between-participant variance, but the normalised 
%means are the same as the original means).

%calculate within-participant confidence intervals, but we need to make one change 
%to the original formula (this is the Morey part of the Cousineau-Morey method).
%where c is the number of within-participant conditions. In our 2×2 example, there are four conditions. Evaluating sqrt(4 / (4-1)) gives us 1.15, so this correction factor is going to make the confidence intervals slightly larger. Note that the largest increase in the confidence intervals would be with 2 within-participant conditions [sqrt(2 / (2-1)) = 1.41] and that this correction decreases with more conditions.
% use the normalized data mean and SD 

%CI = Mean +/- t(1-alpha/2, n-1) * (SD / sqrt(n)) * sqrt(c / (c-1))

%to claculate critical t value: (you need to download CritT function)
alpha = 0.05; n = 45; 
tcrit2 = tinv(1-alpha/2,n-1); 
%tcrit1 = tinv(1-alpha,n-1); 
tcrit2;

c=4; %number of within participant conditions

%find normalized means and SDs
normalized_M_mean = mean(newM);
normalized_M_SD = std(newM);
normalized_M_SD = [normalized_M_SD(1), normalized_M_SD(3), normalized_M_SD(2), normalized_M_SD(4)];

CILower_m=[];
CIHigher_m=[];

MPLOT=[normalized_M_mean(1), normalized_M_mean(3), normalized_M_mean(2), normalized_M_mean(4)];
for i=1:4
CILower_m =  [CILower_m, MPLOT(i)-(tcrit2.*(normalized_M_SD(i)./sqrt(n)).*(sqrt(c/(c-1))))]; 
CIHigher_m =  [CIHigher_m, MPLOT(i)+(tcrit2.*(normalized_M_SD(i)./sqrt(n)).*(sqrt(c/(c-1))))];  
end

CILower_m=[CILower_m(1),CILower_m(2);CILower_m(3),CILower_m(4)];
CIHigher_m=[CIHigher_m(1),CIHigher_m(2);CIHigher_m(3),CIHigher_m(4)];
CIdist_Lower_m = abs(Y4-CILower_m);
CIdist_Higher_m = abs(Y4-CIHigher_m);

hold on

[ngroups,nbars] = size(Y4);

% Get the x coordinate of the bars
x = nan(nbars, ngroups);
for i = 1:nbars
    x(i,:) = b(i).XEndPoints;
end

% Plot the errorbars on top of the original means
errorbar(x', Y4, CIdist_Lower_m, CIdist_Higher_m,'k','linestyle','none');
er.Color = [0 0 0];

sigstar({[0.875,1.875],[1.125,2.125]},[0.01,0.01]); 

legend({'Withheld WM Load:1','Withheld WM Load:2'});

hold off


%% Plotting the principle finding for the poster - m RT

%SEMmr_rt=sqrt(ranovatblb_mr_rt{2,3}/nC);

%MRrt = [mean_m_r_rt_1_2 mean_m_r_rt_1_3 mean_m_r_rt_2_2 mean_m_r_rt_2_3];

%organize the output matrix in a grouped fashion
Y44=[mean(mean_m_r_rt_1_2) mean(mean_m_r_rt_2_2)
mean(mean_m_r_rt_1_3) mean(mean_m_r_rt_2_3)];


xlab={'2', '3'};
b=bar(Y44, 'grouped');
title('b', 'FontSize',30); 

xlabel('Concurrent WM Task Load');
set(gca,'xticklabel',xlab)
ylabel('Concurrent WM Task Recall RT (s)'); 
%set(b, {'DisplayName'}, {'Concurrent WM Load:2','Concurrent WM Load:3'}');


b(1).FaceColor = [.2 .6 .5];
b(2).FaceColor = [.5, 0.75, 0.75];

ylim([0,5]);

set(gca, 'box','off');
set(gcf, 'color', 'w')
grid off

%%%%%%% CALCULATING CONFIDENCE INTERVALS FOR WITHIN DESIGN%%%%%%%%%%

% remove between subject variances by Simply subtract each participant’s mean 
% from each of the four conditions (for 2x2). 
%This will balance each participant’s data around 0 ms.

newMRrt = MRrt-(mean(MRrt,2));

%These RTs/errors no longer makes sense (negatives exists).
%To make the data appropriate for the conditions, simply add the grand mean
%to all the normalised means. (original means-participant means+grand mean)

newMRrt = newMRrt+mean(mean(MRrt));

%after that notice that the patterns in the last two operations are the same, 
%but the reaction times are now in a normal range for the conditions 
%(i.e. we have removed the between-participant variance, but the normalised 
%means are the same as the original means).

%calculate within-participant confidence intervals, but we need to make one change 
%to the original formula (this is the Morey part of the Cousineau-Morey method).
%where c is the number of within-participant conditions. In our 2×2 example, there are four conditions. Evaluating sqrt(4 / (4-1)) gives us 1.15, so this correction factor is going to make the confidence intervals slightly larger. Note that the largest increase in the confidence intervals would be with 2 within-participant conditions [sqrt(2 / (2-1)) = 1.41] and that this correction decreases with more conditions.
% use the normalized data mean and SD 

%The formula I will use: CI = Mean +/- t(1-alpha/2, n-1) * (SD / sqrt(n)) * sqrt(c / (c-1))

%to claculate critical t value: (I downloaded CritT function)
alpha = 0.05; n = 45; 
tcrit2 = tinv(1-alpha/2,n-1); 
%tcrit1 = tinv(1-alpha,n-1); 
tcrit2;

c=4; %number of within participant conditions

%find normalized means and SDs

normalized_MRrt_mean = mean(newMRrt);
normalized_MRrt_SD = std(newMRrt);
normalized_MRrt_SD = [normalized_MRrt_SD(1), normalized_MRrt_SD(3), normalized_MRrt_SD(2), normalized_MRrt_SD(4)];

CILower_MRrt=[];
CIHigher_MRrt=[];

MRRTPLOT=[normalized_MRrt_mean(1), normalized_MRrt_mean(3), normalized_MRrt_mean(2), normalized_MRrt_mean(4)];
for i=1:4
CILower_MRrt =  [CILower_MRrt, MRRTPLOT(i)-(tcrit2.*(normalized_MRrt_SD(i)./sqrt(n)).*(sqrt(c/(c-1))))]; 
CIHigher_MRrt =  [CIHigher_MRrt, MRRTPLOT(i)+(tcrit2.*(normalized_MRrt_SD(i)./sqrt(n)).*(sqrt(c/(c-1))))];  
end


CILower_MRrt=[CILower_MRrt(1),CILower_MRrt(2);CILower_MRrt(3),CILower_MRrt(4)];
CIHigher_MRrt=[CIHigher_MRrt(1),CIHigher_MRrt(2);CIHigher_MRrt(3),CIHigher_MRrt(4)];
CIdist_Lower_MRrt = abs(Y44-CILower_MRrt);
CIdist_Higher_MRrt = abs(Y44-CIHigher_MRrt);

hold on

[ngroups,nbars] = size(Y44);

% Get the x coordinate of the bars
x = nan(nbars, ngroups);
for i = 1:nbars
    x(i,:) = b(i).XEndPoints;
end

% Plot the errorbars that you choose

%errorbar(x', Y44, SEMmr_rt_mat,'k','linestyle','none');
errorbar(x', Y44, CIdist_Lower_MRrt, CIdist_Higher_MRrt,'k','linestyle','none');
er.Color = [0 0 0];

sigstar({[0.875,1.875],[1.125,2.125]},[0.01,0.01]); % cellin içindekiler x axisteki başlangış ve bitiş koordinatları, matrixtekiler signifcance değerleri, 0.05 de yapabilirsin, o zaman 1 yıldız çıkıyor

legend({'Withheld WM Load:1','Withheld WM Load:2'});
hold off

%% Calculating effect sizes

% % Cohen's d
% 
% %%%%%% formula : d=abs(meanTaskB1-meanTaskB2)./SDpooled
% %%%%%%%%%%%%%%%%%%%%%%% SDpooled=sqrt(varianceTaskA+varianceVarianceTaskB)
% 
% %for DV: main deviance
% TaskB2Column_m=[M(1);M(3)]; %main task conditions are differing from each other in the results, so we include those
% TaskB3Column_m=[M(2);M(4)];
% d_1=abs((mean(TaskB2Column_m)-mean(TaskB3Column_m)))./(sqrt(std(TaskB2Column_m))^2+(std(TaskB3Column_m))^2);
% %Cohen's d_1: 0.7950
% 
% %for DV: Main Recall RT
% TaskB2Column_MRrt=[MRrt(1);MRrt(3)];
% TaskB3Column_MRrt=[MRrt(2);MRrt(4)];
% d_2= abs((mean(TaskB2Column_MRrt)-mean(TaskB3Column_MRrt)))./(sqrt(std(TaskB2Column_MRrt))^2+(std(TaskB3Column_MRrt))^2);
% %Cohen's d_2: 0.3944
% 
% 
% % Partial Eta-squared / Adjusted R squared
% %%%%%%% formula : η2p=SSeffect/SSeffect+SSerror
% %find the effects SS from corresponding ANOVA table, SSerror is the sum of
% %all errors except error of intercept (?????)
% 
% %for DV: Main Deviance
% %find the effects SS from corresponding ANOVA table
% parteta_1=ranovatblb_m{5,1}/(ranovatblb_m{5,1}+ranovatblb_m{4,1}+ranovatblb_m{6,1}+ranovatblb_m{8,1});
% %parteta_1=0.1807
% 
% %for DV: Main Recall RT
% parteta_2=ranovatblb_mr_rt{5,1}/(ranovatblb_mr_rt{5,1}+ranovatblb_mr_rt{4,1}+ranovatblb_mr_rt{6,1}+ranovatblb_mr_rt{8,1});
% %parteta_2=0.1262
% 
% % %%%%%%% formula : ad.R2= 1- ((n-1)./(p-1)).*(SSE/SST)
% % %p=num of coefficient including intercept ???????
% % p=3;
% % n=45;
% % rsq=(1)-((n-1)./(n-p)).*(ranovatblb_m{4,1}+ranovatblb_m{6,1}+ranovatblb_m{8,1})./...
% %     sum(ranovatblb_m{3:8,1});



%% Writing Some Data to Excel for SPSS Analysis

% E=table(E);
% M=table(M);
% EPrt=table(EPrt);
% MPrt=table(MPrt);
% ERrt=table(ERrt);
% MRrt=table(MRrt);
% 
% writetable(E,'obl2_all4conditions_e.xlsx'); % the matrix with all 4 within levels (2x2) for encoding deviance
% writetable(M,'obl2_all4conditions_m.xlsx'); % the matrix with all 4 within levels (2x2) for main deviance
% writetable(EPrt,'obl2_all4conditions_eprt.xlsx'); % the matrix with all 4 within levels (2x2) for EP rt
% writetable(ERrt,'obl2_all4conditions_errt.xlsx'); % the matrix with all 4 within levels (2x2) for ER rt
% writetable(MPrt,'obl2_all4conditions_mprt.xlsx'); % the matrix with all 4 within levels (2x2) for MP rt
% writetable(MRrt,'obl2_all4conditions_mrrt.xlsx'); % the matrix with all 4 within levels (2x2) for MR rt
% 
% 
% 
%%
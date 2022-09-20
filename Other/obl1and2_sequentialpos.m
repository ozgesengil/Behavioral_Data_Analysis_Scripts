T = dataobl1and2;

% to convert the RT in ms to s
ax=find(T(:,11)>100);
T(ax,11)=T(ax,11)/1000;
bx=find(T(:,12)>100);
T(bx,12)=T(bx,12)/1000;
cx=find(T(:,13)>100);
T(cx,13)=T(cx,13)/1000;
dx=find(T(:,14)>100);
T(dx,14)=T(dx,14)/1000;
ex=find(T(:,17)>100);
T(ex,17)=T(ex,17)/1000;

% axx=find(T(:,11)>20);
% T(axx,11)=nan;
% bxx=find(T(:,12)>20);
% T(bxx,12)=nan;
% cxx=find(T(:,13)>20);
% T(cxx,13)=nan;
% dxx=find(T(:,14)>20);
% T(dxx,14)=nan;
% exx=find(T(:,17)>20);
% T(exx,17)=nan;

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
Par46 = T(3781:3864,:);
Par47 = T(3865:3948,:);
Par48 = T(3949:4032,:);
Par49 = T(4033:4116,:);
Par50 = T(4117:4200,:);
Par51 = T(4201:4284,:);
Par52 = T(4285:4368,:);
Par53 = T(4369:4452,:);
Par54 = T(4453:4536,:);
Par55 = T(4537:4620,:);
Par56 = T(4621:4704,:);
Par57 = T(4705:4788,:);
Par58 = T(4789:4872,:);
Par59 = T(4873:4956,:);
Par60 = T(4957:5040,:);
Par61 = T(5041:5124,:);
Par62 = T(5125:5208,:);
Par63 = T(5209:5292,:);
Par64 = T(5293:5376,:);
Par65 = T(5377:5460,:);
Par66 = T(5461:5544,:);
Par67 = T(5545:5628,:);
Par68 = T(5629:5712,:);
Par69 = T(5713:5796,:);
Par70 = T(5797:5880,:);
Par71 = T(5881:5964,:);
Par72 = T(5965:6048,:);
Par73 = T(6049:6132,:);



C={Par1,Par2,Par3,Par4,Par5,Par6,Par7,Par8,Par9,Par10,Par11,Par12,Par13,...
    Par14,Par15,Par16,Par17,Par18,Par19,Par20,Par21,Par22,Par23,Par24,Par25,Par26,...
    Par27,Par28,Par29,Par30,Par31,Par32,Par33,Par34,Par35,Par36,Par37,...
        Par38,Par39,Par40,Par41,Par42,Par43,Par44,Par45,Par46,Par47,Par48,Par49,Par50,Par51,Par52,...
        Par53,Par54,Par55,Par56,Par57,Par58,Par59,Par60,Par61,Par62,Par63,Par64,Par65,Par66,Par67,...
        Par68,Par69,Par70,Par71,Par72,Par73};


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

% below; plotting the occurrences for each participant seperately

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

% plotting the mean occurrences across trials

f=figure(1);
subplot(2,2,1);
p1=bar(mean(pos_1_2));
title('Distribution of 1-2 to trials in a session');
xlabel('Position (Trial)');
ylabel('Number of trials')
subplot(2,2,2);
p2=bar(mean(pos_1_3));
title('Distribution of 1-3 to trials in a session');
xlabel('Position (Trial)');
ylabel('Number of trials')
subplot(2,2,3);
p3=bar(mean(pos_2_2));
title('Distribution of 2-2 to trials in a session');
xlabel('Position (Trial)');
ylabel('Number of trials')
subplot(2,2,4);
p4=bar(mean(pos_2_3));
title('Distribution of 2-3 to trials in a session');
xlabel('Position (Trial)');
ylabel('Number of trials')
get(f);
set(p1, 'FaceColor', 'magenta');
set(p2, 'FaceColor', 'cyan');
set(p3, 'FaceColor', 'green');
set(p4, 'FaceColor', 'blue');


%%


e_trial_1as_1_2=nan(nC,1);
e_trial_2as_1_2=nan(nC,1);
e_trial_3as_1_2=nan(nC,1);
e_trial_4as_1_2=nan(nC,1);

e_trial_1as_1_3=nan(nC,1);
e_trial_2as_1_3=nan(nC,1);
e_trial_3as_1_3=nan(nC,1);
e_trial_4as_1_3=nan(nC,1);

e_trial_1as_2_2=nan(nC,1);
e_trial_2as_2_2=nan(nC,1);
e_trial_3as_2_2=nan(nC,1);
e_trial_4as_2_2=nan(nC,1);

e_trial_1as_2_3=nan(nC,1);
e_trial_2as_2_3=nan(nC,1);
e_trial_3as_2_3=nan(nC,1);
e_trial_4as_2_3=nan(nC,1);


m_trial_1as_1_2=nan(nC,1);
m_trial_2as_1_2=nan(nC,1);
m_trial_3as_1_2=nan(nC,1);
m_trial_4as_1_2=nan(nC,1);

m_trial_1as_1_3=nan(nC,1);
m_trial_2as_1_3=nan(nC,1);
m_trial_3as_1_3=nan(nC,1);
m_trial_4as_1_3=nan(nC,1);

m_trial_1as_2_2=nan(nC,1);
m_trial_2as_2_2=nan(nC,1);
m_trial_3as_2_2=nan(nC,1);
m_trial_4as_2_2=nan(nC,1);

m_trial_1as_2_3=nan(nC,1);
m_trial_2as_2_3=nan(nC,1);
m_trial_3as_2_3=nan(nC,1);
m_trial_4as_2_3=nan(nC,1);


mrrt_trial_1as_1_2=nan(nC,1);
mrrt_trial_2as_1_2=nan(nC,1);
mrrt_trial_3as_1_2=nan(nC,1);
mrrt_trial_4as_1_2=nan(nC,1);

mrrt_trial_1as_1_3=nan(nC,1);
mrrt_trial_2as_1_3=nan(nC,1);
mrrt_trial_3as_1_3=nan(nC,1);
mrrt_trial_4as_1_3=nan(nC,1);

mrrt_trial_1as_2_2=nan(nC,1);
mrrt_trial_2as_2_2=nan(nC,1);
mrrt_trial_3as_2_2=nan(nC,1);
mrrt_trial_4as_2_2=nan(nC,1);

mrrt_trial_1as_2_3=nan(nC,1);
mrrt_trial_2as_2_3=nan(nC,1);
mrrt_trial_3as_2_3=nan(nC,1);
mrrt_trial_4as_2_3=nan(nC,1);


errt_trial_1as_1_2=nan(nC,1);
errt_trial_2as_1_2=nan(nC,1);
errt_trial_3as_1_2=nan(nC,1);
errt_trial_4as_1_2=nan(nC,1);

errt_trial_1as_1_3=nan(nC,1);
errt_trial_2as_1_3=nan(nC,1);
errt_trial_3as_1_3=nan(nC,1);
errt_trial_4as_1_3=nan(nC,1);

errt_trial_1as_2_2=nan(nC,1);
errt_trial_2as_2_2=nan(nC,1);
errt_trial_3as_2_2=nan(nC,1);
errt_trial_4as_2_2=nan(nC,1);

errt_trial_1as_2_3=nan(nC,1);
errt_trial_2as_2_3=nan(nC,1);
errt_trial_3as_2_3=nan(nC,1);
errt_trial_4as_2_3=nan(nC,1);


mprt_trial_1as_1_2=nan(nC,1);
mprt_trial_2as_1_2=nan(nC,1);
mprt_trial_3as_1_2=nan(nC,1);
mprt_trial_4as_1_2=nan(nC,1);

mprt_trial_1as_1_3=nan(nC,1);
mprt_trial_2as_1_3=nan(nC,1);
mprt_trial_3as_1_3=nan(nC,1);
mprt_trial_4as_1_3=nan(nC,1);

mprt_trial_1as_2_2=nan(nC,1);
mprt_trial_2as_2_2=nan(nC,1);
mprt_trial_3as_2_2=nan(nC,1);
mprt_trial_4as_2_2=nan(nC,1);

mprt_trial_1as_2_3=nan(nC,1);
mprt_trial_2as_2_3=nan(nC,1);
mprt_trial_3as_2_3=nan(nC,1);
mprt_trial_4as_2_3=nan(nC,1);


eprt_trial_1as_1_2=nan(nC,1);
eprt_trial_2as_1_2=nan(nC,1);
eprt_trial_3as_1_2=nan(nC,1);
eprt_trial_4as_1_2=nan(nC,1);

eprt_trial_1as_1_3=nan(nC,1);
eprt_trial_2as_1_3=nan(nC,1);
eprt_trial_3as_1_3=nan(nC,1);
eprt_trial_4as_1_3=nan(nC,1);

eprt_trial_1as_2_2=nan(nC,1);
eprt_trial_2as_2_2=nan(nC,1);
eprt_trial_3as_2_2=nan(nC,1);
eprt_trial_4as_2_2=nan(nC,1);

eprt_trial_1as_2_3=nan(nC,1);
eprt_trial_2as_2_3=nan(nC,1);
eprt_trial_3as_2_3=nan(nC,1);
eprt_trial_4as_2_3=nan(nC,1);

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

% m deviance
m_trial_1as_1_2(x,1)= mean(partdata(indx_1as_1_2, 7));
m_trial_2as_1_2(x,1)= mean(partdata(indx_2as_1_2, 7));
m_trial_3as_1_2(x,1)= mean(partdata(indx_3as_1_2, 7));
m_trial_4as_1_2(x,1)= mean(partdata(indx_4as_1_2, 7));

m_trial_1as_1_3(x,1)= mean(partdata(indx_1as_1_3, 7));
m_trial_2as_1_3(x,1)= mean(partdata(indx_2as_1_3, 7));
m_trial_3as_1_3(x,1)= mean(partdata(indx_3as_1_3, 7));
m_trial_4as_1_3(x,1)= mean(partdata(indx_4as_1_3, 7));

m_trial_1as_2_2(x,1)= mean(partdata(indx_1as_2_2, 7));
m_trial_2as_2_2(x,1)= mean(partdata(indx_2as_2_2, 7));
m_trial_3as_2_2(x,1)= mean(partdata(indx_3as_2_2, 7));
m_trial_4as_2_2(x,1)= mean(partdata(indx_4as_2_2, 7));

m_trial_1as_2_3(x,1)= mean(partdata(indx_1as_2_3, 7));
m_trial_2as_2_3(x,1)= mean(partdata(indx_2as_2_3, 7));
m_trial_3as_2_3(x,1)= mean(partdata(indx_3as_2_3, 7));
m_trial_4as_2_3(x,1)= mean(partdata(indx_4as_2_3, 7));

% e deviance
e_trial_1as_1_2(x,1)= mean(partdata(indx_1as_1_2, 10));
e_trial_2as_1_2(x,1)= mean(partdata(indx_2as_1_2, 10));
e_trial_3as_1_2(x,1)= mean(partdata(indx_3as_1_2, 10));
e_trial_4as_1_2(x,1)= mean(partdata(indx_4as_1_2, 10));

e_trial_1as_1_3(x,1)= mean(partdata(indx_1as_1_3, 10));
e_trial_2as_1_3(x,1)= mean(partdata(indx_2as_1_3, 10));
e_trial_3as_1_3(x,1)= mean(partdata(indx_3as_1_3, 10));
e_trial_4as_1_3(x,1)= mean(partdata(indx_4as_1_3, 10));

e_trial_1as_2_2(x,1)= mean(partdata(indx_1as_2_2, 10));
e_trial_2as_2_2(x,1)= mean(partdata(indx_2as_2_2, 10));
e_trial_3as_2_2(x,1)= mean(partdata(indx_3as_2_2, 10));
e_trial_4as_2_2(x,1)= mean(partdata(indx_4as_2_2, 10));

e_trial_1as_2_3(x,1)= mean(partdata(indx_1as_2_3, 10));
e_trial_2as_2_3(x,1)= mean(partdata(indx_2as_2_3, 10));
e_trial_3as_2_3(x,1)= mean(partdata(indx_3as_2_3, 10));
e_trial_4as_2_3(x,1)= mean(partdata(indx_4as_2_3, 10));

% main task recall rt
mrrt_trial_1as_1_2(x,1)= mean(partdata(indx_1as_1_2, 14));
mrrt_trial_2as_1_2(x,1)= mean(partdata(indx_2as_1_2, 14));
mrrt_trial_3as_1_2(x,1)= mean(partdata(indx_3as_1_2, 14));
mrrt_trial_4as_1_2(x,1)= mean(partdata(indx_4as_1_2, 14));

mrrt_trial_1as_1_3(x,1)= mean(partdata(indx_1as_1_3, 14));
mrrt_trial_2as_1_3(x,1)= mean(partdata(indx_2as_1_3, 14));
mrrt_trial_3as_1_3(x,1)= mean(partdata(indx_3as_1_3, 14));
mrrt_trial_4as_1_3(x,1)= mean(partdata(indx_4as_1_3, 14));

mrrt_trial_1as_2_2(x,1)= mean(partdata(indx_1as_2_2, 14));
mrrt_trial_2as_2_2(x,1)= mean(partdata(indx_2as_2_2, 14));
mrrt_trial_3as_2_2(x,1)= mean(partdata(indx_3as_2_2, 14));
mrrt_trial_4as_2_2(x,1)= mean(partdata(indx_4as_2_2, 14));

mrrt_trial_1as_2_3(x,1)= mean(partdata(indx_1as_2_3, 14));
mrrt_trial_2as_2_3(x,1)= mean(partdata(indx_2as_2_3, 14));
mrrt_trial_3as_2_3(x,1)= mean(partdata(indx_3as_2_3, 14));
mrrt_trial_4as_2_3(x,1)= mean(partdata(indx_4as_2_3, 14));

% enconding task recall rt
eprt_trial_1as_1_2(x,1)= mean(partdata(indx_1as_1_2, 11));
eprt_trial_2as_1_2(x,1)= mean(partdata(indx_2as_1_2, 11));
eprt_trial_3as_1_2(x,1)= mean(partdata(indx_3as_1_2, 11));
eprt_trial_4as_1_2(x,1)= mean(partdata(indx_4as_1_2, 11));

eprt_trial_1as_1_3(x,1)= mean(partdata(indx_1as_1_3, 11));
eprt_trial_2as_1_3(x,1)= mean(partdata(indx_2as_1_3, 11));
eprt_trial_3as_1_3(x,1)= mean(partdata(indx_3as_1_3, 11));
eprt_trial_4as_1_3(x,1)= mean(partdata(indx_4as_1_3, 11));

eprt_trial_1as_2_2(x,1)= mean(partdata(indx_1as_2_2, 11));
eprt_trial_2as_2_2(x,1)= mean(partdata(indx_2as_2_2, 11));
eprt_trial_3as_2_2(x,1)= mean(partdata(indx_3as_2_2, 11));
eprt_trial_4as_2_2(x,1)= mean(partdata(indx_4as_2_2, 11));

eprt_trial_1as_2_3(x,1)= mean(partdata(indx_1as_2_3, 11));
eprt_trial_2as_2_3(x,1)= mean(partdata(indx_2as_2_3, 11));
eprt_trial_3as_2_3(x,1)= mean(partdata(indx_3as_2_3, 11));
eprt_trial_4as_2_3(x,1)= mean(partdata(indx_4as_2_3, 11));

% main task presentation rt
mprt_trial_1as_1_2(x,1)= mean(partdata(indx_1as_1_2, 13));
mprt_trial_2as_1_2(x,1)= mean(partdata(indx_2as_1_2, 13));
mprt_trial_3as_1_2(x,1)= mean(partdata(indx_3as_1_2, 13));
mprt_trial_4as_1_2(x,1)= mean(partdata(indx_4as_1_2, 13));

mprt_trial_1as_1_3(x,1)= mean(partdata(indx_1as_1_3, 13));
mprt_trial_2as_1_3(x,1)= mean(partdata(indx_2as_1_3, 13));
mprt_trial_3as_1_3(x,1)= mean(partdata(indx_3as_1_3, 13));
mprt_trial_4as_1_3(x,1)= mean(partdata(indx_4as_1_3, 13));

mprt_trial_1as_2_2(x,1)= mean(partdata(indx_1as_2_2, 13));
mprt_trial_2as_2_2(x,1)= mean(partdata(indx_2as_2_2, 13));
mprt_trial_3as_2_2(x,1)= mean(partdata(indx_3as_2_2, 13));
mprt_trial_4as_2_2(x,1)= mean(partdata(indx_4as_2_2, 13));

mprt_trial_1as_2_3(x,1)= mean(partdata(indx_1as_2_3, 13));
mprt_trial_2as_2_3(x,1)= mean(partdata(indx_2as_2_3, 13));
mprt_trial_3as_2_3(x,1)= mean(partdata(indx_3as_2_3, 13));
mprt_trial_4as_2_3(x,1)= mean(partdata(indx_4as_2_3, 13));


% encoding task reaction time
errt_trial_1as_1_2(x,1)= mean(partdata(indx_1as_1_2, 12));
errt_trial_2as_1_2(x,1)= mean(partdata(indx_2as_1_2, 12));
errt_trial_3as_1_2(x,1)= mean(partdata(indx_3as_1_2, 12));
errt_trial_4as_1_2(x,1)= mean(partdata(indx_4as_1_2, 12));

errt_trial_1as_1_3(x,1)= mean(partdata(indx_1as_1_3, 12));
errt_trial_2as_1_3(x,1)= mean(partdata(indx_2as_1_3, 12));
errt_trial_3as_1_3(x,1)= mean(partdata(indx_3as_1_3, 12));
errt_trial_4as_1_3(x,1)= mean(partdata(indx_4as_1_3, 12));

errt_trial_1as_2_2(x,1)= mean(partdata(indx_1as_2_2, 12));
errt_trial_2as_2_2(x,1)= mean(partdata(indx_2as_2_2, 12));
errt_trial_3as_2_2(x,1)= mean(partdata(indx_3as_2_2, 12));
errt_trial_4as_2_2(x,1)= mean(partdata(indx_4as_2_2, 12));

errt_trial_1as_2_3(x,1)= mean(partdata(indx_1as_2_3, 12));
errt_trial_2as_2_3(x,1)= mean(partdata(indx_2as_2_3, 12));
errt_trial_3as_2_3(x,1)= mean(partdata(indx_3as_2_3, 12));
errt_trial_4as_2_3(x,1)= mean(partdata(indx_4as_2_3, 12));
end


%%


% Task A: Encoding Task, Wittheld Task
% Task B: Main Task, Concurrent Task



%% matrices for every condition for every DV; columns: trial numbers (with NaNs)

e_trial_1_2= ([e_trial_1as_1_2 e_trial_2as_1_2 e_trial_3as_1_2 e_trial_4as_1_2]);
e_trial_1_3= ([e_trial_1as_1_3 e_trial_2as_1_3 e_trial_3as_1_3 e_trial_4as_1_3]);
e_trial_2_2= ([e_trial_1as_2_2 e_trial_2as_2_2 e_trial_3as_2_2 e_trial_4as_2_2]);
e_trial_2_3= ([e_trial_1as_2_3 e_trial_2as_2_3 e_trial_3as_2_3 e_trial_4as_2_3]);

m_trial_1_2= ([m_trial_1as_1_2 m_trial_2as_1_2 m_trial_3as_1_2 m_trial_4as_1_2]);
m_trial_1_3= ([m_trial_1as_1_3 m_trial_2as_1_3 m_trial_3as_1_3 m_trial_4as_1_3]);
m_trial_2_2= ([m_trial_1as_2_2 m_trial_2as_2_2 m_trial_3as_2_2 m_trial_4as_2_2]);
m_trial_2_3= ([m_trial_1as_2_3 m_trial_2as_2_3 m_trial_3as_2_3 m_trial_4as_2_3]);

mrrt_trial_1_2= ([mrrt_trial_1as_1_2 mrrt_trial_2as_1_2 mrrt_trial_3as_1_2 mrrt_trial_4as_1_2]);
mrrt_trial_1_3= ([mrrt_trial_1as_1_3 mrrt_trial_2as_1_3 mrrt_trial_3as_1_3 mrrt_trial_4as_1_3]);
mrrt_trial_2_2= ([mrrt_trial_1as_2_2 mrrt_trial_2as_2_2 mrrt_trial_3as_2_2 mrrt_trial_4as_2_2]);
mrrt_trial_2_3= ([mrrt_trial_1as_2_3 mrrt_trial_2as_2_3 mrrt_trial_3as_2_3 mrrt_trial_4as_2_3]);

errt_trial_1_2= ([errt_trial_1as_1_2 errt_trial_2as_1_2 errt_trial_3as_1_2 errt_trial_4as_1_2]);
errt_trial_1_3= ([errt_trial_1as_1_3 errt_trial_2as_1_3 errt_trial_3as_1_3 errt_trial_4as_1_3]);
errt_trial_2_2= ([errt_trial_1as_2_2 errt_trial_2as_2_2 errt_trial_3as_2_2 errt_trial_4as_2_2]);
errt_trial_2_3= ([errt_trial_1as_2_3 errt_trial_2as_2_3 errt_trial_3as_2_3 errt_trial_4as_2_3]);

mprt_trial_1_2= ([mprt_trial_1as_1_2 mprt_trial_2as_1_2 mprt_trial_3as_1_2 mprt_trial_4as_1_2]);
mprt_trial_1_3= ([mprt_trial_1as_1_3 mprt_trial_2as_1_3 mprt_trial_3as_1_3 mprt_trial_4as_1_3]);
mprt_trial_2_2= ([mprt_trial_1as_2_2 mprt_trial_2as_2_2 mprt_trial_3as_2_2 mprt_trial_4as_2_2]);
mprt_trial_2_3= ([mprt_trial_1as_2_3 mprt_trial_2as_2_3 mprt_trial_3as_2_3 mprt_trial_4as_2_3]);

eprt_trial_1_2= ([eprt_trial_1as_1_2 eprt_trial_2as_1_2 eprt_trial_3as_1_2 eprt_trial_4as_1_2]);
eprt_trial_1_3= ([eprt_trial_1as_1_3 eprt_trial_2as_1_3 eprt_trial_3as_1_3 eprt_trial_4as_1_3]);
eprt_trial_2_2= ([eprt_trial_1as_2_2 eprt_trial_2as_2_2 eprt_trial_3as_2_2 eprt_trial_4as_2_2]);
eprt_trial_2_3= ([eprt_trial_1as_2_3 eprt_trial_2as_2_3 eprt_trial_3as_2_3 eprt_trial_4as_2_3]);


%% figures

figure(2) % DV: e-deviance and m-deviance; plotting conditions vs trials they occurred

subplot(1,2,1)
e_trial=[nanmean(e_trial_1_2); nanmean(e_trial_1_3); nanmean(e_trial_2_2); nanmean(e_trial_2_3)];
bar3(e_trial);
ylabel('conditions');
xlabel('positions');
title('condition vs position on encoding deviance')
ylab={'1-2', '1-3', '2-2', '2-3'};
set(gca,'yticklabel',ylab)
xlab={'Trial1', 'Trial2', 'Trial3', 'Trial4'};
set(gca,'xticklabel',xlab);


subplot(1,2,2)
m_trial=[nanmean(m_trial_1_2); nanmean(m_trial_1_3); nanmean(m_trial_2_2); nanmean(m_trial_2_3)];
bar3(m_trial);
ylabel('conditions');
xlabel('positions');
title('condition vs position on main deviance')
ylab={'1-2', '1-3', '2-2', '2-3'};
set(gca,'yticklabel',ylab);
xlab={'Trial1', 'Trial2', 'Trial3', 'Trial4'};
set(gca,'xticklabel',xlab);


legend({'Trial1','Trial2', 'Trial3', 'Trial4'});

set(gcf, 'units','normalized','outerposition',[0 0 1 1]);



figure(3) % DV: deviance; plotting position-wise/trial-wise mean

subplot(1,3,1)
bar(mean(e_trial));
xlabel('trials');
title('e-deviance vs trial number');
subplot(1,3,2)
bar(mean(m_trial));
xlabel('trials');
title('m-deviance vs trial number');
subplot(1,3,3)
Position_means=[mean(e_trial); mean(m_trial)];
bar3(Position_means);
xlabel('trials');
ylabel('measures');
xlab={'e-deviance', 'm-deviance'};
set(gca,'yticklabel',xlab);
 
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);

%%
figure(4) % DV: reaction times; plotting condition vs trial position

% eprt: encoding (Task A, withheld task) presentation rt
% errt: encoding (Task A, wittheld task) recall rt
% mprt: main (Task B, concurrent task) presentation rt
% mrrt: main (Task B, concurrent task) recall rt


subplot(2,2,1)
mprt_trial=[nanmean(mprt_trial_1_2); nanmean(mprt_trial_1_3); nanmean(mprt_trial_2_2); nanmean(mprt_trial_2_3)];
bar3(mprt_trial);
ylabel('conditions');
xlabel('positions');
title('condition vs position on main presentation rt')
ylab={'1-2', '1-3', '2-2', '2-3'};
set(gca,'yticklabel',ylab)
xlab={'Trial1', 'Trial2', 'Trial3', 'Trial4'};
set(gca,'xticklabel',xlab);

subplot(2,2,2)
eprt_trial=[nanmean(eprt_trial_1_2); nanmean(eprt_trial_1_3); nanmean(eprt_trial_2_2); nanmean(eprt_trial_2_3)];
bar3(eprt_trial);
ylabel('conditions');
xlabel('positions');
title('condition vs position on encoding presentation rt')
ylab={'1-2', '1-3', '2-2', '2-3'};
set(gca,'yticklabel',ylab)
xlab={'Trial1', 'Trial2', 'Trial3', 'Trial4'};
set(gca,'xticklabel',xlab);

subplot(2,2,3)
mrrt_trial=[nanmean(mrrt_trial_1_2); nanmean(mrrt_trial_1_3); nanmean(mrrt_trial_2_2); nanmean(mrrt_trial_2_3)];
bar3(mrrt_trial);
ylabel('conditions');
xlabel('positions');
title('condition vs position on main recall rt')
ylab={'1-2', '1-3', '2-2', '2-3'};
set(gca,'yticklabel',ylab)
xlab={'Trial1', 'Trial2', 'Trial3', 'Trial4'};
set(gca,'xticklabel',xlab);

subplot(2,2,4)
errt_trial=[nanmean(errt_trial_1_2); nanmean(errt_trial_1_3); nanmean(errt_trial_2_2); nanmean(errt_trial_2_3)];
bar3(errt_trial);
ylabel('conditions');
xlabel('positions');
title('condition vs position on main encoding recall rt')
ylab={'1-2', '1-3', '2-2', '2-3'};
set(gca,'yticklabel',ylab)
xlab={'Trial1', 'Trial2', 'Trial3', 'Trial4'};
set(gca,'xticklabel',xlab);

set(gcf, 'units','normalized','outerposition',[0 0 1 1]);


figure(5) %DV: RTs; plotting position-wise/trial-wise mean
subplot(2,2,1)
bar(mean(mprt_trial));
xlabel('trials');
title('mean mprt vs trial number');
subplot(2,2,2)
bar(mean(eprt_trial));
xlabel('trials');
title('mean eprt vs trial number');
subplot(2,2,3)
bar(mean(mrrt_trial));
xlabel('trials');
title('mean mrrt vs trial number');
subplot(2,2,4)
bar(mean(errt_trial));
xlabel('trials');
title('mean errt vs trial number');

%%
% %% pair-wise comparisons for trial 1 vs 4 for each condition and dv
% % we need to get rid of the nans for this analysis to make sense...
% 
% [h,p,ci,stats]=ttest(e_trial_1as_1_2, e_trial_4as_1_2);
% 
% [h,p,ci,stats]=ttest(e_trial_1as_1_3, e_trial_4as_1_3);
% 
% [h,p,ci,stats]=ttest(e_trial_1as_2_2, e_trial_4as_2_2);
% 
% [h,p,ci,stats]=ttest(e_trial_1as_2_3, e_trial_4as_2_3);
% 
% 
% [h,p,ci,stats]=ttest(m_trial_1as_1_2, m_trial_4as_1_2);
% 
% [h,p,ci,stats]=ttest(m_trial_1as_1_3, m_trial_4as_1_3);
% 
% [h,p,ci,stats]=ttest(m_trial_1as_2_2, m_trial_4as_2_2);
% 
% [h,p,ci,stats]=ttest(m_trial_1as_2_3, m_trial_4as_2_3);
% 
% 
% [h,p,ci,stats]=ttest(e_trial(1,:), e_trial(4,:));
% [h,p,ci,stats]=ttest(m_trial(1,:), m_trial(4,:)); % significant
% 
% 
% [h,p,ci,stats]=ttest(eprt_trial_1as_1_2, eprt_trial_4as_1_2);
% 
% [h,p,ci,stats]=ttest(eprt_trial_1as_1_3, eprt_trial_4as_1_3);
% 
% [h,p,ci,stats]=ttest(eprt_trial_1as_2_2, eprt_trial_4as_2_2);
% 
% [h,p,ci,stats]=ttest(eprt_trial_1as_2_3, eprt_trial_4as_2_3);
% 
% 
% [h,p,ci,stats]=ttest(mprt_trial_1as_1_2, mprt_trial_4as_1_2);
% 
% [h,p,ci,stats]=ttest(mprt_trial_1as_1_3, mprt_trial_4as_1_3);
% 
% [h,p,ci,stats]=ttest(mprt_trial_1as_2_2, mprt_trial_4as_2_2);
% 
% [h,p,ci,stats]=ttest(mprt_trial_1as_2_3, mprt_trial_4as_2_3);
% 
% 
% [h,p,ci,stats]=ttest(mrrt_trial_1as_1_2, mrrt_trial_4as_1_2);
% 
% [h,p,ci,stats]=ttest(mrrt_trial_1as_1_3, mrrt_trial_4as_1_3);
% 
% [h,p,ci,stats]=ttest(mrrt_trial_1as_2_2, mrrt_trial_4as_2_2);
% 
% [h,p,ci,stats]=ttest(mrrt_trial_1as_2_3, mrrt_trial_4as_2_3);
% 
% 
% [h,p,ci,stats]=ttest(errt_trial_1as_1_2, errt_trial_4as_1_2);
% 
% [h,p,ci,stats]=ttest(errt_trial_1as_1_3, errt_trial_4as_1_3);
% 
% [h,p,ci,stats]=ttest(errt_trial_1as_2_2, errt_trial_4as_2_2);
% 
% [h,p,ci,stats]=ttest(errt_trial_1as_2_3, errt_trial_4as_2_3);

% %% paired t test for only the participants who got to see a condition in both first and fourth condition
% 
% %creating a 3d matrix, each page corresponds to a DV-condition pair (below is the order)
% % in each page; there are 2 columns; 1: trial 1, 2: trial 4
% % we will do paired t test with those
% 
% V={e_trial_1_2, e_trial_1_3, e_trial_2_2, e_trial_2_3, m_trial_1_2, m_trial_1_3,...
%     m_trial_2_2, m_trial_2_3, errt_trial_1_2, errt_trial_1_3, errt_trial_2_2,...
%     errt_trial_2_3, mrrt_trial_1_2, mrrt_trial_1_3, mrrt_trial_2_2, mrrt_trial_2_3,...
%     eprt_trial_1_2, eprt_trial_1_3, eprt_trial_2_2, eprt_trial_2_3, mprt_trial_1_2, ...
%     mprt_trial_1_3, mprt_trial_2_2, mprt_trial_2_3};
% 
% A=zeros(73,2,24);
% 
% nV=length(V);
% 
% for i=1:nV
%     var=V{i};
%     a=0;
%     for x=1:73
%     
%     indxx_comp = (~isnan(var(x,1)) && ~isnan(var(x,4)));
%     
%      if indxx_comp==1
%          a=a+1;
%          A(a,1,i)= var(x, 1);
%          A(a,2,i)= var(x, 4);
%      end
%     
%     end
% 
% end
% 
% % now each page of this 3d matrix A is corresponding to a condition (A DV
% % and condition pair, there are 24 of them)
% 
% file = 'details.txt'; % the p values for comparisons will be written in here
% fp=fopen(file, 'a+');
% if fp==0
%     disp('Sorry, could not open the file');
% else
%     disp(['Text file created in ', pwd])
% end
% fprintf(fp, 'TTEST RESULTS comparing TRIAL 1 vs 4, for each CONDITIONS\n');
% fprintf(fp, '\n');
% fclose(fp);
% 
% N={'e_trial_1_2', 'e_trial_1_3', 'e_trial_2_2', 'e_trial_2_3', 'm_trial_1_2', 'm_trial_1_3',...
%     'm_trial_2_2', 'm_trial_2_3', 'errt_trial_1_2', 'errt_trial_1_3', 'errt_trial_2_2',...
%     'errt_trial_2_3', 'mrrt_trial_1_2', 'mrrt_trial_1_3', 'mrrt_trial_2_2', 'mrrt_trial_2_3',...
%     'eprt_trial_1_2', 'eprt_trial_1_3', 'eprt_trial_2_2', 'eprt_trial_2_3', 'mprt_trial_1_2', ...
%     'mprt_trial_1_3', 'mprt_trial_2_2', 'mprt_trial_2_3'};
% 
% 
% for i=1:24
%     
%     
%     for b=1:73   % remember to get rid of the place-filler zeros before comparing
%         if A(b,1,i)==0 && A(b,2,i)==0
%             B=A(1:b-1,:,i);
%             break;
%         end
%   
%     end
%     
%     [h,p,ci,stats]=ttest(B(:,1,:), B(:,2,:));
%     
%     fp = fopen(file, 'a+');  
%                  % ttest results will be written to the file
%                  
%            % NOTE: For some conditions, there are no participants who saw
%            % it on both 1st and 4th trial - so: pvalue will be NAN for
%            % those conditions
%            
%     fprintf(fp,'Paired-sample ttest between trial 1 and 4 for %s\t p-value:%1.20d\n', N{i}, p);
%     fprintf(fp, '\n');
%     fclose(fp);
%     %pause;
%     
% end
%%

% t test for rts and all measurements for each condition's occurring in 1st vs 4th trial

aa = [(mprt_trial_1_2); (mrrt_trial_1_2); (eprt_trial_1_2); (errt_trial_1_2)];
[h,p,ci,stats]=ttest2(aa(:,1), aa(:,4)); % significant
bb = [aa; e_trial_1_2; m_trial_1_2];
[h,p,ci,stats]=ttest2(bb(:,1), bb(:,4)); % significant

cc = [(mprt_trial_2_3); (mrrt_trial_2_3); (eprt_trial_2_3); (errt_trial_2_3)];
[h,p,ci,stats]=ttest2(cc(:,1), cc(:,4)); % not significant
dd = [cc; e_trial_2_3; m_trial_2_3];
[h,p,ci,stats]=ttest2(dd(:,1), dd(:,4)); % not significant

ee = [(mprt_trial_2_2); (mrrt_trial_2_2); (eprt_trial_2_2); (errt_trial_2_2)];
[h,p,ci,stats]=ttest2(ee(:,1), ee(:,4)); % not significant
ff = [ee; e_trial_2_2; m_trial_2_2];
[h,p,ci,stats]=ttest2(ff(:,1), ff(:,4)); % significant

hh = [(mprt_trial_1_3); (mrrt_trial_1_3); (eprt_trial_1_3); (errt_trial_1_3)];
[h,p,ci,stats]=ttest2(hh(:,1), hh(:,4)); % not significant
gg = [hh; e_trial_1_3; m_trial_1_3];
[h,p,ci,stats]=ttest2(gg(:,1), gg(:,4)); % not significant


%% 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%    SEQUENTIAL BEFOR-TRIAL REST ANALYSIS   %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


rest_before1=nan(nC,1);
rest_before2=nan(nC,1);
rest_before3=nan(nC,1);
rest_before4=nan(nC,1);

for x=1:nC
    partdata=C{x};

indx_before1= find(partdata(:,2)==1);
indx_before2= find(partdata(:,2)==2);
indx_before3= find(partdata(:,2)==3);
indx_before4= find(partdata(:,2)==4);

% intertrial rest rt
rest_before1(x,1)= mean(partdata(indx_before1, 17));
rest_before2(x,1)= mean(partdata(indx_before2, 17));
rest_before3(x,1)= mean(partdata(indx_before3, 17));
rest_before4(x,1)= mean(partdata(indx_before4, 17));

end

intertrial_rest=[rest_before1 rest_before2 rest_before3 rest_before4];

figure(6)
bar(mean(intertrial_rest));
xlabel('trial');
ylabel('rest RT');
title('before-trial rest');



%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%  SEQUENTIAL EFFECTS (DIFFICULTY) ANALYSIS   %%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

seq_ef_1_mdev = nan(nC,1);
seq_ef_2_easy_mdev = nan(nC,1);
seq_ef_3_easy_mdev = nan(nC,1);
seq_ef_4_easy_mdev = nan(nC,1);
seq_ef_2_hard_mdev = nan(nC,1);
seq_ef_3_hard_mdev = nan(nC,1);
seq_ef_4_hard_mdev = nan(nC,1);

seq_ef_1_edev = nan(nC,1);
seq_ef_2_easy_edev = nan(nC,1);
seq_ef_3_easy_edev = nan(nC,1);
seq_ef_4_easy_edev = nan(nC,1);
seq_ef_2_hard_edev = nan(nC,1);
seq_ef_3_hard_edev = nan(nC,1);
seq_ef_4_hard_edev = nan(nC,1);

seq_ef_1_mrrt = nan(nC,1);
seq_ef_2_easy_mrrt = nan(nC,1);
seq_ef_3_easy_mrrt = nan(nC,1);
seq_ef_4_easy_mrrt = nan(nC,1);
seq_ef_2_hard_mrrt = nan(nC,1);
seq_ef_3_hard_mrrt = nan(nC,1);
seq_ef_4_hard_mrrt = nan(nC,1);

seq_ef_1_errt = nan(nC,1);
seq_ef_2_easy_errt = nan(nC,1);
seq_ef_3_easy_errt = nan(nC,1);
seq_ef_4_easy_errt = nan(nC,1);
seq_ef_2_hard_errt = nan(nC,1);
seq_ef_3_hard_errt = nan(nC,1);
seq_ef_4_hard_errt = nan(nC,1);

seq_ef_1_mprt = nan(nC,1);
seq_ef_2_easy_mprt = nan(nC,1);
seq_ef_3_easy_mprt = nan(nC,1);
seq_ef_4_easy_mprt = nan(nC,1);
seq_ef_2_hard_mprt = nan(nC,1);
seq_ef_3_hard_mprt = nan(nC,1);
seq_ef_4_hard_mprt = nan(nC,1);

seq_ef_1_eprt = nan(nC,1);
seq_ef_2_easy_eprt = nan(nC,1);
seq_ef_3_easy_eprt = nan(nC,1);
seq_ef_4_easy_eprt = nan(nC,1);
seq_ef_2_hard_eprt = nan(nC,1);
seq_ef_3_hard_eprt = nan(nC,1);
seq_ef_4_hard_eprt = nan(nC,1);

for x=1:nC
    partdata=C{x};

    %%% these matrices are temporary
seq_ef_1_mdeviance=[];
seq_ef_2_easy_mdeviance=[];
seq_ef_2_hard_mdeviance=[];
seq_ef_3_easy_mdeviance=[];
seq_ef_3_hard_mdeviance=[];
seq_ef_4_easy_mdeviance=[];
seq_ef_4_hard_mdeviance=[];

seq_ef_1_edeviance=[];
seq_ef_2_easy_edeviance=[];
seq_ef_2_hard_edeviance=[];
seq_ef_3_easy_edeviance=[];
seq_ef_3_hard_edeviance=[];
seq_ef_4_easy_edeviance=[];
seq_ef_4_hard_edeviance=[];

seq_ef_1_mr_rt=[];
seq_ef_2_easy_mr_rt=[];
seq_ef_2_hard_mr_rt=[];
seq_ef_3_easy_mr_rt=[];
seq_ef_3_hard_mr_rt=[];
seq_ef_4_easy_mr_rt=[];
seq_ef_4_hard_mr_rt=[];

seq_ef_1_er_rt=[];
seq_ef_2_easy_er_rt=[];
seq_ef_2_hard_er_rt=[];
seq_ef_3_easy_er_rt=[];
seq_ef_3_hard_er_rt=[];
seq_ef_4_easy_er_rt=[];
seq_ef_4_hard_er_rt=[];

seq_ef_1_mp_rt=[];
seq_ef_2_easy_mp_rt=[];
seq_ef_2_hard_mp_rt=[];
seq_ef_3_easy_mp_rt=[];
seq_ef_3_hard_mp_rt=[];
seq_ef_4_easy_mp_rt=[];
seq_ef_4_hard_mp_rt=[];

seq_ef_1_ep_rt=[];
seq_ef_2_easy_ep_rt=[];
seq_ef_2_hard_ep_rt=[];
seq_ef_3_easy_ep_rt=[];
seq_ef_3_hard_ep_rt=[];
seq_ef_4_easy_ep_rt=[];
seq_ef_4_hard_ep_rt=[];

    % checking the trials one by one
for n=2:84
    if (partdata(n,1)==2) && (partdata(n,3)==1) && (partdata(n,4)==2) % if the first trial is 1-2
        seq_ef_1_mdeviance = [seq_ef_1_mdeviance; partdata(n, 7)];
        seq_ef_1_edeviance = [seq_ef_1_edeviance; partdata(n, 10)];
        seq_ef_1_mr_rt= [seq_ef_1_mr_rt; partdata(n, 14)]; 
        seq_ef_1_er_rt= [seq_ef_1_er_rt; partdata(n, 12)];
        seq_ef_1_mp_rt= [seq_ef_1_mp_rt; partdata(n, 13)];
        seq_ef_1_ep_rt= [seq_ef_1_ep_rt; partdata(n, 11)];
    elseif (partdata(n,2)==2) && (partdata(n,3)==1) && (partdata(n,4)==2) %if the second trial is 1-2
        if (partdata(n-1,3)==1) && (partdata(n-1,4)==3) %if it is precedented by 1-3
            seq_ef_2_easy_mdeviance = [seq_ef_2_easy_mdeviance; partdata(n, 7)];
            seq_ef_2_easy_edeviance = [seq_ef_2_easy_edeviance; partdata(n, 10)];
            seq_ef_2_easy_mr_rt = [seq_ef_2_easy_mr_rt; partdata(n, 14)];
            seq_ef_2_easy_er_rt = [seq_ef_2_easy_er_rt; partdata(n, 12)];
            seq_ef_2_easy_mp_rt = [seq_ef_2_easy_mp_rt; partdata(n, 13)];
            seq_ef_2_easy_ep_rt = [seq_ef_2_easy_ep_rt; partdata(n, 11)];      
        elseif (partdata(n-1,3)==2) && (partdata(n-1,4)==3) %if it is precedented by 2-3
            seq_ef_2_hard_mdeviance = [seq_ef_2_hard_mdeviance; partdata(n, 7)];
            seq_ef_2_hard_edeviance = [seq_ef_2_hard_edeviance; partdata(n, 10)];
            seq_ef_2_hard_mr_rt = [seq_ef_2_hard_mr_rt; partdata(n, 14)];
            seq_ef_2_hard_er_rt = [seq_ef_2_hard_er_rt; partdata(n, 12)];
            seq_ef_2_hard_mp_rt = [seq_ef_2_hard_mp_rt; partdata(n, 13)];
            seq_ef_2_hard_ep_rt = [seq_ef_2_hard_ep_rt; partdata(n, 11)];
            
        end
        
    elseif (partdata(n,2)==3) && (partdata(n,3)==1) && (partdata(n,4)==2) % if the third trial is 1-2
        if (partdata(n-1,3)==1) && (partdata(n-1,4)==3)
            seq_ef_3_easy_mdeviance = [seq_ef_3_easy_mdeviance; partdata(n, 7)];
            seq_ef_3_easy_edeviance = [seq_ef_3_easy_edeviance; partdata(n, 10)];
            seq_ef_3_easy_mr_rt = [seq_ef_3_easy_mr_rt; partdata(n, 14)];
            seq_ef_3_easy_mp_rt = [seq_ef_3_easy_mp_rt; partdata(n, 13)];
            seq_ef_3_easy_er_rt = [seq_ef_3_easy_er_rt; partdata(n, 12)];
            seq_ef_3_easy_ep_rt = [seq_ef_3_easy_ep_rt; partdata(n, 11)];
        elseif (partdata(n-1,3)==2) && (partdata(n-1,4)==3)
            seq_ef_3_hard_mdeviance = [seq_ef_3_hard_mdeviance; partdata(n, 7)];
            seq_ef_3_hard_edeviance = [seq_ef_3_hard_edeviance; partdata(n, 10)];
            seq_ef_3_hard_mr_rt = [seq_ef_3_hard_mr_rt; partdata(n, 14)];
            seq_ef_3_hard_mp_rt = [seq_ef_3_hard_mp_rt; partdata(n, 13)];
            seq_ef_3_hard_er_rt = [seq_ef_3_hard_er_rt; partdata(n, 12)];
            seq_ef_3_hard_ep_rt = [seq_ef_3_hard_ep_rt; partdata(n, 11)];
        end
        
    elseif (partdata(n,2)==4) && (partdata(n,3)==1) && (partdata(n,4)==2) % if the fourth trial is 1-2
        if (partdata(n-1,3)==1) && (partdata(n-1,4)==3)
            seq_ef_4_easy_mdeviance = [seq_ef_4_easy_mdeviance; partdata(n, 7)];
            seq_ef_4_easy_edeviance = [seq_ef_4_easy_edeviance; partdata(n, 10)];
            seq_ef_4_easy_mr_rt = [seq_ef_4_easy_mr_rt; partdata(n, 14)];
            seq_ef_4_easy_mp_rt = [seq_ef_4_easy_mp_rt; partdata(n, 13)];
            seq_ef_4_easy_er_rt = [seq_ef_4_easy_er_rt; partdata(n, 12)];
            seq_ef_4_easy_ep_rt = [seq_ef_4_easy_ep_rt; partdata(n, 11)];
        elseif (partdata(n-1,3)==2) && (partdata(n-1,4)==3)
            seq_ef_4_hard_mdeviance = [seq_ef_4_hard_mdeviance; partdata(n, 7)];
            seq_ef_4_hard_edeviance = [seq_ef_4_hard_edeviance; partdata(n, 10)];
            seq_ef_4_hard_mr_rt = [seq_ef_4_hard_mr_rt; partdata(n, 14)];
            seq_ef_4_hard_mp_rt = [seq_ef_4_hard_mp_rt; partdata(n, 13)];
            seq_ef_4_hard_er_rt = [seq_ef_4_hard_er_rt; partdata(n, 12)];
            seq_ef_4_hard_ep_rt = [seq_ef_4_hard_ep_rt; partdata(n, 11)];
        end
    end
    
    
end
seq_ef_1_mdev(x,1)=mean(seq_ef_1_mdeviance);
seq_ef_2_easy_mdev(x,1)=mean(seq_ef_2_easy_mdeviance);
seq_ef_3_easy_mdev(x,1)=mean(seq_ef_3_easy_mdeviance);
seq_ef_4_easy_mdev(x,1)=mean(seq_ef_4_easy_mdeviance);
seq_ef_2_hard_mdev(x,1)=mean(seq_ef_2_hard_mdeviance);
seq_ef_3_hard_mdev(x,1)=mean(seq_ef_3_hard_mdeviance);
seq_ef_4_hard_mdev(x,1)=mean(seq_ef_4_hard_mdeviance);

seq_ef_1_edev(x,1)=mean(seq_ef_1_edeviance);
seq_ef_2_easy_edev(x,1)=mean(seq_ef_2_easy_edeviance);
seq_ef_3_easy_edev(x,1)=mean(seq_ef_3_easy_edeviance);
seq_ef_4_easy_edev(x,1)=mean(seq_ef_4_easy_edeviance);
seq_ef_2_hard_edev(x,1)=mean(seq_ef_2_hard_edeviance);
seq_ef_3_hard_edev(x,1)=mean(seq_ef_3_hard_edeviance);
seq_ef_4_hard_edev(x,1)=mean(seq_ef_4_hard_edeviance);

seq_ef_1_mrrt(x,1)=mean(seq_ef_1_mr_rt);
seq_ef_2_easy_mrrt(x,1)=mean(seq_ef_2_easy_mr_rt);
seq_ef_2_hard_mrrt(x,1)=mean(seq_ef_2_hard_mr_rt);
seq_ef_3_easy_mrrt(x,1)=mean(seq_ef_3_easy_mr_rt);
seq_ef_3_hard_mrrt(x,1)=mean(seq_ef_3_hard_mr_rt);
seq_ef_4_easy_mrrt(x,1)=mean(seq_ef_4_easy_mr_rt);
seq_ef_4_hard_mrrt(x,1)=mean(seq_ef_4_hard_mr_rt);

seq_ef_1_errt(x,1)=mean(seq_ef_1_er_rt);
seq_ef_2_easy_errt(x,1)=mean(seq_ef_2_easy_er_rt);
seq_ef_2_hard_errt(x,1)=mean(seq_ef_2_hard_er_rt);
seq_ef_3_easy_errt(x,1)=mean(seq_ef_3_easy_er_rt);
seq_ef_3_hard_errt(x,1)=mean(seq_ef_3_hard_er_rt);
seq_ef_4_easy_errt(x,1)=mean(seq_ef_4_easy_er_rt);
seq_ef_4_hard_errt(x,1)=mean(seq_ef_4_hard_er_rt);

seq_ef_1_eprt(x,1)=mean(seq_ef_1_ep_rt);
seq_ef_2_easy_eprt(x,1)=mean(seq_ef_2_easy_ep_rt);
seq_ef_2_hard_eprt(x,1)=mean(seq_ef_2_hard_ep_rt);
seq_ef_3_easy_eprt(x,1)=mean(seq_ef_3_easy_ep_rt);
seq_ef_3_hard_eprt(x,1)=mean(seq_ef_3_hard_ep_rt);
seq_ef_4_easy_eprt(x,1)=mean(seq_ef_4_easy_ep_rt);
seq_ef_4_hard_eprt(x,1)=mean(seq_ef_4_hard_ep_rt);

seq_ef_1_mprt(x,1)=mean(seq_ef_1_mp_rt);
seq_ef_2_easy_mprt(x,1)=mean(seq_ef_2_easy_mp_rt);
seq_ef_2_hard_mprt(x,1)=mean(seq_ef_2_hard_mp_rt);
seq_ef_3_easy_mprt(x,1)=mean(seq_ef_3_easy_mp_rt);
seq_ef_3_hard_mprt(x,1)=mean(seq_ef_3_hard_mp_rt);
seq_ef_4_easy_mprt(x,1)=mean(seq_ef_4_easy_mp_rt);
seq_ef_4_hard_mprt(x,1)=mean(seq_ef_4_hard_mp_rt);

end


% Plotting 

figure(7)
subplot(2,3,1)
bar([nanmean(seq_ef_1_mdev), nanmean(seq_ef_2_easy_mdev), nanmean(seq_ef_2_hard_mdev),...
     nanmean(seq_ef_3_easy_mdev), nanmean(seq_ef_3_hard_mdev),  nanmean(seq_ef_4_easy_mdev),...
     nanmean(seq_ef_4_hard_mdev)]);
xlab={'1', '2-easy', '2-hard', '3-easy', '3-hard', '4-easy', '4-hard'}; 
xlabel('condition');
set(gca,'xticklabel',xlab);
ylabel('m-deviance');


subplot(2,3,2)
bar([nanmean(seq_ef_1_edev), nanmean(seq_ef_2_easy_edev), nanmean(seq_ef_2_hard_edev),...
     nanmean(seq_ef_3_easy_edev), nanmean(seq_ef_3_hard_edev),  nanmean(seq_ef_4_easy_edev),...
     nanmean(seq_ef_4_hard_edev)]);
xlab={'1', '2-easy', '2-hard', '3-easy', '3-hard', '4-easy', '4-hard'}; 
xlabel('condition');
set(gca,'xticklabel',xlab);
ylabel('e-deviance');


subplot(2,3,3)
bar([nanmean(seq_ef_1_mrrt), nanmean(seq_ef_2_easy_mrrt), nanmean(seq_ef_2_hard_mrrt),...
     nanmean(seq_ef_3_easy_mrrt), nanmean(seq_ef_3_hard_mrrt),  nanmean(seq_ef_4_easy_mrrt),...
     nanmean(seq_ef_4_hard_mrrt)]);
xlab={'1', '2-easy', '2-hard', '3-easy', '3-hard', '4-easy', '4-hard'}; 
xlabel('condition');
set(gca,'xticklabel',xlab);
ylabel('mrrt');


subplot(2,3,4)
bar([nanmean(seq_ef_1_errt), nanmean(seq_ef_2_easy_errt), nanmean(seq_ef_2_hard_errt),...
     nanmean(seq_ef_3_easy_errt), nanmean(seq_ef_3_hard_errt),  nanmean(seq_ef_4_easy_errt),...
     nanmean(seq_ef_4_hard_errt)]);
xlab={'1', '2-easy', '2-hard', '3-easy', '3-hard', '4-easy', '4-hard'}; 
xlabel('condition');
set(gca,'xticklabel',xlab);
ylabel('errt');


subplot(2,3,5)
bar([nanmean(seq_ef_1_mprt), nanmean(seq_ef_2_easy_mprt), nanmean(seq_ef_2_hard_mprt),...
     nanmean(seq_ef_3_easy_mprt), nanmean(seq_ef_3_hard_mprt),  nanmean(seq_ef_4_easy_mprt),...
     nanmean(seq_ef_4_hard_mprt)]);
xlab={'1', '2-easy', '2-hard', '3-easy', '3-hard', '4-easy', '4-hard'}; 
xlabel('condition');
set(gca,'xticklabel',xlab);
ylabel('mprt');


subplot(2,3,6)
bar([nanmean(seq_ef_1_eprt), nanmean(seq_ef_2_easy_eprt), nanmean(seq_ef_2_hard_eprt),...
     nanmean(seq_ef_3_easy_eprt), nanmean(seq_ef_3_hard_eprt),  nanmean(seq_ef_4_easy_eprt),...
     nanmean(seq_ef_4_hard_eprt)]);
xlab={'1', '2-easy', '2-hard', '3-easy', '3-hard', '4-easy', '4-hard'}; 
xlabel('condition');
set(gca,'xticklabel',xlab);
ylabel('eprt');

set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
 
%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                      % STANDARDIZING BY THE 1ST TRIAL %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% standardizing the 2nd, 3rd and 4th trial measures by the first trial

st_m_trial_1_2=m_trial_1_2;
st_m_trial_1_3=m_trial_1_3;
st_m_trial_2_2=m_trial_2_2;
st_m_trial_2_3=m_trial_2_3;

st_e_trial_1_2=e_trial_1_2;
st_e_trial_1_3=e_trial_1_3;
st_e_trial_2_2=e_trial_2_2;
st_e_trial_2_3=e_trial_2_3;

st_mrrt_trial_1_2=mrrt_trial_1_2;
st_mrrt_trial_1_3=mrrt_trial_1_3;
st_mrrt_trial_2_2=mrrt_trial_2_2;
st_mrrt_trial_2_3=mrrt_trial_2_3;

st_errt_trial_1_2=errt_trial_1_2;
st_errt_trial_1_3=errt_trial_1_3;
st_errt_trial_2_2=errt_trial_2_2;
st_errt_trial_2_3=errt_trial_2_3;

st_eprt_trial_1_2=eprt_trial_1_2;
st_eprt_trial_1_3=eprt_trial_1_3;
st_eprt_trial_2_2=eprt_trial_2_2;
st_eprt_trial_2_3=eprt_trial_2_3;

st_mprt_trial_1_2=mprt_trial_1_2;
st_mprt_trial_1_3=mprt_trial_1_3;
st_mprt_trial_2_2=mprt_trial_2_2;
st_mprt_trial_2_3=mprt_trial_2_3;



% standardizing the trial 4 by the first trial
st_m_trial_1_2(:,4)=m_trial_1_2(:,4)./nanmean(m_trial_1_2(:,1));
st_m_trial_1_3(:,4)=m_trial_1_3(:,4)./nanmean(m_trial_1_3(:,1));
st_m_trial_2_2(:,4)=m_trial_2_2(:,4)./nanmean(m_trial_2_2(:,1));
st_m_trial_2_3(:,4)=m_trial_2_3(:,4)./nanmean(m_trial_2_3(:,1));

st_e_trial_1_2(:,4)=e_trial_1_2(:,4)./nanmean(e_trial_1_2(:,1));
st_e_trial_1_3(:,4)=e_trial_1_3(:,4)./nanmean(e_trial_1_3(:,1));
st_e_trial_2_2(:,4)=e_trial_2_2(:,4)./nanmean(e_trial_2_2(:,1));
st_e_trial_2_3(:,4)=e_trial_2_3(:,4)./nanmean(e_trial_2_3(:,1));

st_mprt_trial_1_2(:,4)=mprt_trial_1_2(:,4)./nanmean(mprt_trial_1_2(:,1));
st_mprt_trial_1_3(:,4)=mprt_trial_1_3(:,4)./nanmean(mprt_trial_1_3(:,1));
st_mprt_trial_2_2(:,4)=mprt_trial_2_2(:,4)./nanmean(mprt_trial_2_2(:,1));
st_mprt_trial_2_3(:,4)=mprt_trial_2_3(:,4)./nanmean(mprt_trial_2_3(:,1));

st_mrrt_trial_1_2(:,4)=mrrt_trial_1_2(:,4)./nanmean(mrrt_trial_1_2(:,1));
st_mrrt_trial_1_3(:,4)=mrrt_trial_1_3(:,4)./nanmean(mrrt_trial_1_3(:,1));
st_mrrt_trial_2_2(:,4)=mrrt_trial_2_2(:,4)./nanmean(mrrt_trial_2_2(:,1));
st_mrrt_trial_2_3(:,4)=mrrt_trial_2_3(:,4)./nanmean(mrrt_trial_2_3(:,1));

st_errt_trial_1_2(:,4)=errt_trial_1_2(:,4)./nanmean(errt_trial_1_2(:,1));
st_errt_trial_1_3(:,4)=errt_trial_1_3(:,4)./nanmean(errt_trial_1_3(:,1));
st_errt_trial_2_2(:,4)=errt_trial_2_2(:,4)./nanmean(errt_trial_2_2(:,1));
st_errt_trial_2_3(:,4)=errt_trial_2_3(:,4)./nanmean(errt_trial_2_3(:,1));

st_eprt_trial_1_2(:,4)=eprt_trial_1_2(:,4)./nanmean(eprt_trial_1_2(:,1));
st_eprt_trial_1_3(:,4)=eprt_trial_1_3(:,4)./nanmean(eprt_trial_1_3(:,1));
st_eprt_trial_2_2(:,4)=eprt_trial_2_2(:,4)./nanmean(eprt_trial_2_2(:,1));
st_eprt_trial_2_3(:,4)=eprt_trial_2_3(:,4)./nanmean(eprt_trial_2_3(:,1));


% standardizing the 3rd trial by the 1st trial
st_m_trial_1_2(:,3)=m_trial_1_2(:,3)./nanmean(m_trial_1_2(:,1));
st_m_trial_1_3(:,3)=m_trial_1_3(:,3)./nanmean(m_trial_1_3(:,1));
st_m_trial_2_2(:,3)=m_trial_2_2(:,3)./nanmean(m_trial_2_2(:,1));
st_m_trial_2_3(:,3)=m_trial_2_3(:,3)./nanmean(m_trial_2_3(:,1));

st_e_trial_1_2(:,3)=e_trial_1_2(:,3)./nanmean(e_trial_1_2(:,1));
st_e_trial_1_3(:,3)=e_trial_1_3(:,3)./nanmean(e_trial_1_3(:,1));
st_e_trial_2_2(:,3)=e_trial_2_2(:,3)./nanmean(e_trial_2_2(:,1));
st_e_trial_2_3(:,3)=e_trial_2_3(:,3)./nanmean(e_trial_2_3(:,1));

st_mprt_trial_1_2(:,3)=mprt_trial_1_2(:,3)./nanmean(mprt_trial_1_2(:,1));
st_mprt_trial_1_3(:,3)=mprt_trial_1_3(:,3)./nanmean(mprt_trial_1_3(:,1));
st_mprt_trial_2_2(:,3)=mprt_trial_2_2(:,3)./nanmean(mprt_trial_2_2(:,1));
st_mprt_trial_2_3(:,3)=mprt_trial_2_3(:,3)./nanmean(mprt_trial_2_3(:,1));

st_mrrt_trial_1_2(:,3)=mrrt_trial_1_2(:,3)./nanmean(mrrt_trial_1_2(:,1));
st_mrrt_trial_1_3(:,3)=mrrt_trial_1_3(:,3)./nanmean(mrrt_trial_1_3(:,1));
st_mrrt_trial_2_2(:,3)=mrrt_trial_2_2(:,3)./nanmean(mrrt_trial_2_2(:,1));
st_mrrt_trial_2_3(:,3)=mrrt_trial_2_3(:,3)./nanmean(mrrt_trial_2_3(:,1));

st_errt_trial_1_2(:,3)=errt_trial_1_2(:,3)./nanmean(errt_trial_1_2(:,1));
st_errt_trial_1_3(:,3)=errt_trial_1_3(:,3)./nanmean(errt_trial_1_3(:,1));
st_errt_trial_2_2(:,3)=errt_trial_2_2(:,3)./nanmean(errt_trial_2_2(:,1));
st_errt_trial_2_3(:,3)=errt_trial_2_3(:,3)./nanmean(errt_trial_2_3(:,1));

st_eprt_trial_1_2(:,3)=eprt_trial_1_2(:,3)./nanmean(eprt_trial_1_2(:,1));
st_eprt_trial_1_3(:,3)=eprt_trial_1_3(:,3)./nanmean(eprt_trial_1_3(:,1));
st_eprt_trial_2_2(:,3)=eprt_trial_2_2(:,3)./nanmean(eprt_trial_2_2(:,1));
st_eprt_trial_2_3(:,3)=eprt_trial_2_3(:,3)./nanmean(eprt_trial_2_3(:,1));



% standardizing the trial 2 by the 1st trial
st_m_trial_1_2(:,2)=m_trial_1_2(:,2)./nanmean(m_trial_1_2(:,1));
st_m_trial_1_3(:,2)=m_trial_1_3(:,2)./nanmean(m_trial_1_3(:,1));
st_m_trial_2_2(:,2)=m_trial_2_2(:,2)./nanmean(m_trial_2_2(:,1));
st_m_trial_2_3(:,2)=m_trial_2_3(:,2)./nanmean(m_trial_2_3(:,1));

st_e_trial_1_2(:,2)=e_trial_1_2(:,2)./nanmean(e_trial_1_2(:,1));
st_e_trial_1_3(:,2)=e_trial_1_3(:,2)./nanmean(e_trial_1_3(:,1));
st_e_trial_2_2(:,2)=e_trial_2_2(:,2)./nanmean(e_trial_2_2(:,1));
st_e_trial_2_3(:,2)=e_trial_2_3(:,2)./nanmean(e_trial_2_3(:,1));

st_mprt_trial_1_2(:,2)=mprt_trial_1_2(:,2)./nanmean(mprt_trial_1_2(:,1));
st_mprt_trial_1_3(:,2)=mprt_trial_1_3(:,2)./nanmean(mprt_trial_1_3(:,1));
st_mprt_trial_2_2(:,2)=mprt_trial_2_2(:,2)./nanmean(mprt_trial_2_2(:,1));
st_mprt_trial_2_3(:,2)=mprt_trial_2_3(:,2)./nanmean(mprt_trial_2_3(:,1));

st_mrrt_trial_1_2(:,2)=mrrt_trial_1_2(:,2)./nanmean(mrrt_trial_1_2(:,1));
st_mrrt_trial_1_3(:,2)=mrrt_trial_1_3(:,2)./nanmean(mrrt_trial_1_3(:,1));
st_mrrt_trial_2_2(:,2)=mrrt_trial_2_2(:,2)./nanmean(mrrt_trial_2_2(:,1));
st_mrrt_trial_2_3(:,2)=mrrt_trial_2_3(:,2)./nanmean(mrrt_trial_2_3(:,1));

st_errt_trial_1_2(:,2)=errt_trial_1_2(:,2)./nanmean(errt_trial_1_2(:,1));
st_errt_trial_1_3(:,2)=errt_trial_1_3(:,2)./nanmean(errt_trial_1_3(:,1));
st_errt_trial_2_2(:,2)=errt_trial_2_2(:,2)./nanmean(errt_trial_2_2(:,1));
st_errt_trial_2_3(:,2)=errt_trial_2_3(:,2)./nanmean(errt_trial_2_3(:,1));

st_eprt_trial_1_2(:,2)=eprt_trial_1_2(:,2)./nanmean(eprt_trial_1_2(:,1));
st_eprt_trial_1_3(:,2)=eprt_trial_1_3(:,2)./nanmean(eprt_trial_1_3(:,1));
st_eprt_trial_2_2(:,2)=eprt_trial_2_2(:,2)./nanmean(eprt_trial_2_2(:,1));
st_eprt_trial_2_3(:,2)=eprt_trial_2_3(:,2)./nanmean(eprt_trial_2_3(:,1));

% standardizing the trial 1 by the 1st trial
st_m_trial_1_2(:,1)=m_trial_1_2(:,1)./nanmean(m_trial_1_2(:,1));
st_m_trial_1_3(:,1)=m_trial_1_3(:,1)./nanmean(m_trial_1_3(:,1));
st_m_trial_2_2(:,1)=m_trial_2_2(:,1)./nanmean(m_trial_2_2(:,1));
st_m_trial_2_3(:,1)=m_trial_2_3(:,1)./nanmean(m_trial_2_3(:,1));

st_e_trial_1_2(:,1)=e_trial_1_2(:,1)./nanmean(e_trial_1_2(:,1));
st_e_trial_1_3(:,1)=e_trial_1_3(:,1)./nanmean(e_trial_1_3(:,1));
st_e_trial_2_2(:,1)=e_trial_2_2(:,1)./nanmean(e_trial_2_2(:,1));
st_e_trial_2_3(:,1)=e_trial_2_3(:,1)./nanmean(e_trial_2_3(:,1));

st_mprt_trial_1_2(:,1)=mprt_trial_1_2(:,1)./nanmean(mprt_trial_1_2(:,1));
st_mprt_trial_1_3(:,1)=mprt_trial_1_3(:,1)./nanmean(mprt_trial_1_3(:,1));
st_mprt_trial_2_2(:,1)=mprt_trial_2_2(:,1)./nanmean(mprt_trial_2_2(:,1));
st_mprt_trial_2_3(:,1)=mprt_trial_2_3(:,1)./nanmean(mprt_trial_2_3(:,1));

st_mrrt_trial_1_2(:,1)=mrrt_trial_1_2(:,1)./nanmean(mrrt_trial_1_2(:,1));
st_mrrt_trial_1_3(:,1)=mrrt_trial_1_3(:,1)./nanmean(mrrt_trial_1_3(:,1));
st_mrrt_trial_2_2(:,1)=mrrt_trial_2_2(:,1)./nanmean(mrrt_trial_2_2(:,1));
st_mrrt_trial_2_3(:,1)=mrrt_trial_2_3(:,1)./nanmean(mrrt_trial_2_3(:,1));

st_errt_trial_1_2(:,1)=errt_trial_1_2(:,1)./nanmean(errt_trial_1_2(:,1));
st_errt_trial_1_3(:,1)=errt_trial_1_3(:,1)./nanmean(errt_trial_1_3(:,1));
st_errt_trial_2_2(:,1)=errt_trial_2_2(:,1)./nanmean(errt_trial_2_2(:,1));
st_errt_trial_2_3(:,1)=errt_trial_2_3(:,1)./nanmean(errt_trial_2_3(:,1));

st_eprt_trial_1_2(:,1)=eprt_trial_1_2(:,1)./nanmean(eprt_trial_1_2(:,1));
st_eprt_trial_1_3(:,1)=eprt_trial_1_3(:,1).o/nanmean(eprt_trial_1_3(:,1));
st_eprt_trial_2_2(:,1)=eprt_trial_2_2(:,1)./nanmean(eprt_trial_2_2(:,1));
st_eprt_trial_2_3(:,1)=eprt_trial_2_3(:,1)./nanmean(eprt_trial_2_3(:,1));


% t test for rts and all measurements for each condition's occurring in 1st vs 4th trial

aa = [(st_mprt_trial_1_2); (st_mrrt_trial_1_2); (st_eprt_trial_1_2); (st_errt_trial_1_2)];
[h,p,ci,stats]=ttest2(aa(:,1), aa(:,4));  % significant
bb = [aa; st_e_trial_1_2; st_m_trial_1_2];
[h,p,ci,stats]=ttest2(bb(:,1), bb(:,4)); % significant

cc = [(st_mprt_trial_2_3); (st_mrrt_trial_2_3); (st_eprt_trial_2_3); (st_errt_trial_2_3)];
[h,p,ci,stats]=ttest2(cc(:,1), cc(:,4));  % not significant
dd = [cc; st_e_trial_2_3; st_m_trial_2_3];
[h,p,ci,stats]=ttest2(dd(:,1), dd(:,4));  % not significant

ee = [(st_mprt_trial_2_2); (st_mrrt_trial_2_2); (st_eprt_trial_2_2); (st_errt_trial_2_2)];
[h,p,ci,stats]=ttest2(ee(:,1), ee(:,4)); % not significant
ff = [ee; st_e_trial_2_2; st_m_trial_2_2];
[h,p,ci,stats]=ttest2(ff(:,1), ff(:,4)); % significant

hh = [(st_mprt_trial_1_3); (st_mrrt_trial_1_3); (st_eprt_trial_1_3); (st_errt_trial_1_3)];
[h,p,ci,stats]=ttest2(hh(:,1), hh(:,4)); % not significant
gg = [hh; st_e_trial_1_3; st_m_trial_1_3];
[h,p,ci,stats]=ttest2(gg(:,1), gg(:,4)); % not significant



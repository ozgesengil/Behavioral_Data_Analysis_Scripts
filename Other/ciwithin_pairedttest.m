% Not necessarily to calculate the ci for individual group means, but for
% calculating the ci for the mean difference. chack if the same formula can
% be also used for the other purpose and then use if you like!!!!

matrix= obl3loadwisemrrt;

difference = matrix(:,1)-matrix(:,2);

n=size(matrix,1);

md=mean(difference);

sd= std(difference);


t=md./(sd/sqrt(n));

alpha = 0.5;
tcrit2 = tinv(1-alpha/2,n-1);


% ci= md+(tcrit1*(sd/sqrt(n)));

CILower_m=[];
CIHigher_m=[];

for i=1:2
    CILower_m =  [CILower_m, mean(matrix(:,i))-(tcrit2*(sd/sqrt(n)))]; 
    CIHigher_m =  [CIHigher_m, mean(matrix(:,i))+(tcrit2*(sd/sqrt(n)))];  
end

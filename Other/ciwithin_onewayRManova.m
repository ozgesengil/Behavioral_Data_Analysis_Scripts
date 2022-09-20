%function result = ciwithin_onewayRManova(matrix,arrayofMSs,N,L,r,alpha)

 % the formulas are from:
  % (based on Loftus & Masson 1994)
  % Jarmasz & Hollands, 2009 - confidence intervals in repeated-measures
  % designs, the number of observations principle

 % consider a one-way RM ANOVA to test the significanceof the effect of Factor A 
 % (N⫽total number of participants; a=levels of Factor A). This design is shown 
 % in Table 1, assumingthree levels of Factor A and N=3 participants (in 
 % this and otherdesign examples we follow the notation of Keppel, 1982).
 % The first step in calculating the CI for Factor A is to calculate the 
 % appropriate MSE (in this case MSAxS). This term is computedfrom the
 % sum-of-squares (SS) for the A x Subjects interaction

 % First find the SS (factor x subject interaction sum of squares)

 % to do that for all levels and then for all participants (sum of)

 % mean score (for each level for each participant) =a

 % marginal totals for a level i of A, find that for every level = b

 % participant mean across all levels =c

 % number of levels = r

 % grand total= sm

 % number of participants = N

 % the formula of relevant SS:
 % sumof(a-(b./N)-(c/r)+(sm/(r*N))


% devide the SS by the relevant degrees of freedom:
% (r-1)x(N-1)

% Then the MSE (mean square error that you find) wil be used in CI
% calculation.


matrix = obl2all4conditionsmrrt;
r=size(matrix,2);
N=size(matrix,1);


for i=1:r
    xx=sum(matrix(:,i))./N; % b/N
    for j=1:N
        aa = matrix(j,i); % a
        c = sum(matrix(j,:)); % c
        dd = sum(sum(matrix))/(r*N);

        nn(j,i) = (aa-xx-(c/r)+dd)*(aa-xx-(c/r)+dd);
        
    end
end

SS = sum(sum(nn));


df = (r-1)*(N-1);


MSE = (SS)/df;






% From here, the CI is calculated with the formula above:
% CI : mean +- tcritical x sqrt(MSE/N)

    % calculate the tcritical with the df above!!!!

    alpha = 0.5;
    tcrit2 = tinv(1-alpha/2,df);

CILower_m=[];
CIHigher_m=[];
 

for i=1:r
    CILower_m =  [CILower_m, mean(matrix(:,i))-(tcrit2.*(sqrt(MSE/N)))]; 
    CIHigher_m =  [CIHigher_m, mean(matrix(:,i))+(tcrit2.*(sqrt(MSE/N)))];  
end
 

% CIdist_Lower_m = abs(mean(new_matrix)-CILower_m);
% CIdist_Higher_m = abs(mean(new_matrix)-CIHigher_m);






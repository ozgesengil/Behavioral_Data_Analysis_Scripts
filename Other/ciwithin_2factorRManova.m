
%%%% NOT READY YET!!!!
%%%% use only for 2x2 rm anova for now...

%%%% In 2x2 rm anova, if the sphericity assumption is met you can go with
%%%% tge one way ci (the other code)

%function result = ciwithin_2factorRManova(matrix,arrayofMSs,N,L,r,alpha)
 % the formulas are from:
  % (based on Loftus & Masson 1994)
  % Jarmasz & Hollands, 2009 - confidence intervals in repeated-measures
  % designs, the number of observations principle


  %matrix should be output matrix of interest with columns for
%within subject events/variables and rows of participant's means (for one
%way comparison with multiple levels)
  
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


matrix = obl1all4conditionsmrrt; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
firstlevelfactors=2; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
secondfactorlevels=2; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x= size(matrix,2);
r=size(matrix,2);
N=size(matrix,1);
matrix = [sum(matrix(:,1:r/2),2), sum(matrix(:,(r/2)+1:r),2)]; % aggreagate the factor levels to create the individual scores we will use
r=size(matrix,2);



for i=1:r
    xx=sum(matrix(:,i))./N; % b/N
    for j=1:N
        aa = matrix(j,i); % a
        c = sum(matrix(j,:))/r; % c
        dd = sum(sum(matrix))/(r*N);

        nn(j,i) = (aa-xx-(c)+dd)*(aa-xx-(c)+dd);
        
    end
end

SS = sum(sum(nn))/secondfactorlevels;


%df = (N*(x/secondfactorlevels));
df = (x-1)*(N-1);

MSE = (SS/df);

% From here, the CI is calculated with the formula above:
% CI : mean +- tcritical x sqrt(MSE/(N*r/secondfactorlevels))

    % calculate the tcritical with the df above!!!!

    alpha = 0.5;
    tcrit2 = tinv(1-alpha/2,df);
matrix = obl1all4conditionsmrrt;
CILower_m=[];
CIHigher_m=[];
 

for i=1:x
    CILower_m =  [CILower_m, mean(matrix(:,i))-(tcrit2.*(sqrt(MSE/N)))]; 
    CIHigher_m =  [CIHigher_m, mean(matrix(:,i))+(tcrit2.*(sqrt(MSE/N)))];  
end
 

% CIdist_Lower_m = abs(mean(new_matrix)-CILower_m);
% CIdist_Higher_m = abs(mean(new_matrix)-CIHigher_m);


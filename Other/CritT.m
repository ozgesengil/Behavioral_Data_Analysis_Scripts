function t = CritT(alfa,v,tail)
% File name : 'CritT.m'. This file can be used 
% for quickly obtaining the critical t-value for 
% alfa values of 0.01, 0.05, 0.10 and degrees of freedom
% between 1 and 100
% 
% One input values : 'alfa','v','tail'
% One output value : 't' 
% 
% alfa: significance level (0.01,0.05,0.10)
% v: degrees of freedom (integer from 1 till 100) 
% tail: one-tailed = 'one' two-tailed = 'two'
% t: critical t-value
% 
% Input syntax : CritT(alfa,v,tail)
% NOTE: Only the above-mentioned values for alfa  and v
% can be used as input arguments
% 
% Table with alfa values and corresponding t-values
% were obtained by using the icdf functions
%
% Developed by Joris Meurs BASc (2015)
if alfa==0.01;
elseif alfa==0.05;
elseif alfa==0.10;
else error('Value of alfa not supported');end
if v<1, error('Value of v not supported');end
if v>100, error('Value of v not supported');end
Tab1 = [
        
    1.0000   31.8205    6.3138    3.0777
    2.0000    6.9646    2.9200    1.8856
    3.0000    4.5407    2.3534    1.6377
    4.0000    3.7469    2.1318    1.5332
    5.0000    3.3649    2.0150    1.4759
    6.0000    3.1427    1.9432    1.4398
    7.0000    2.9980    1.8946    1.4149
    8.0000    2.8965    1.8595    1.3968
    9.0000    2.8214    1.8331    1.3830
   10.0000    2.7638    1.8125    1.3722
   11.0000    2.7181    1.7959    1.3634
   12.0000    2.6810    1.7823    1.3562
   13.0000    2.6503    1.7709    1.3502
   14.0000    2.6245    1.7613    1.3450
   15.0000    2.6025    1.7531    1.3406
   16.0000    2.5835    1.7459    1.3368
   17.0000    2.5669    1.7396    1.3334
   18.0000    2.5524    1.7341    1.3304
   19.0000    2.5395    1.7291    1.3277
   20.0000    2.5280    1.7247    1.3253
   21.0000    2.5176    1.7207    1.3232
   22.0000    2.5083    1.7171    1.3212
   23.0000    2.4999    1.7139    1.3195
   24.0000    2.4922    1.7109    1.3178
   25.0000    2.4851    1.7081    1.3163
   26.0000    2.4786    1.7056    1.3150
   27.0000    2.4727    1.7033    1.3137
   28.0000    2.4671    1.7011    1.3125
   29.0000    2.4620    1.6991    1.3114
   30.0000    2.4573    1.6973    1.3104
   31.0000    2.4528    1.6955    1.3095
   32.0000    2.4487    1.6939    1.3086
   33.0000    2.4448    1.6924    1.3077
   34.0000    2.4411    1.6909    1.3070
   35.0000    2.4377    1.6896    1.3062
   36.0000    2.4345    1.6883    1.3055
   37.0000    2.4314    1.6871    1.3049
   38.0000    2.4286    1.6860    1.3042
   39.0000    2.4258    1.6849    1.3036
   40.0000    2.4233    1.6839    1.3031
   41.0000    2.4208    1.6829    1.3025
   42.0000    2.4185    1.6820    1.3020
   43.0000    2.4163    1.6811    1.3016
   44.0000    2.4141    1.6802    1.3011
   45.0000    2.4121    1.6794    1.3006
   46.0000    2.4102    1.6787    1.3002
   47.0000    2.4083    1.6779    1.2998
   48.0000    2.4066    1.6772    1.2994
   49.0000    2.4049    1.6766    1.2991
   50.0000    2.4033    1.6759    1.2987
   51.0000    2.4017    1.6753    1.2984
   52.0000    2.4002    1.6747    1.2980
   53.0000    2.3988    1.6741    1.2977
   54.0000    2.3974    1.6736    1.2974
   55.0000    2.3961    1.6730    1.2971
   56.0000    2.3948    1.6725    1.2969
   57.0000    2.3936    1.6720    1.2966
   58.0000    2.3924    1.6716    1.2963
   59.0000    2.3912    1.6711    1.2961
   60.0000    2.3901    1.6706    1.2958
   61.0000    2.3890    1.6702    1.2956
   62.0000    2.3880    1.6698    1.2954
   63.0000    2.3870    1.6694    1.2951
   64.0000    2.3860    1.6690    1.2949
   65.0000    2.3851    1.6686    1.2947
   66.0000    2.3842    1.6683    1.2945
   67.0000    2.3833    1.6679    1.2943
   68.0000    2.3824    1.6676    1.2941
   69.0000    2.3816    1.6672    1.2939
   70.0000    2.3808    1.6669    1.2938
   71.0000    2.3800    1.6666    1.2936
   72.0000    2.3793    1.6663    1.2934
   73.0000    2.3785    1.6660    1.2933
   74.0000    2.3778    1.6657    1.2931
   75.0000    2.3771    1.6654    1.2929
   76.0000    2.3764    1.6652    1.2928
   77.0000    2.3758    1.6649    1.2926
   78.0000    2.3751    1.6646    1.2925
   79.0000    2.3745    1.6644    1.2924
   80.0000    2.3739    1.6641    1.2922
   81.0000    2.3733    1.6639    1.2921
   82.0000    2.3727    1.6636    1.2920
   83.0000    2.3721    1.6634    1.2918
   84.0000    2.3716    1.6632    1.2917
   85.0000    2.3710    1.6630    1.2916
   86.0000    2.3705    1.6628    1.2915
   87.0000    2.3700    1.6626    1.2914
   88.0000    2.3695    1.6624    1.2912
   89.0000    2.3690    1.6622    1.2911
   90.0000    2.3685    1.6620    1.2910
   91.0000    2.3680    1.6618    1.2909
   92.0000    2.3676    1.6616    1.2908
   93.0000    2.3671    1.6614    1.2907
   94.0000    2.3667    1.6612    1.2906
   95.0000    2.3662    1.6611    1.2905
   96.0000    2.3658    1.6609    1.2904
   97.0000    2.3654    1.6607    1.2903
   98.0000    2.3650    1.6606    1.2902
   99.0000    2.3646    1.6604    1.2902
  100.0000    2.3642    1.6602    1.2901
];
Tab2 = [
    1.0000   63.6567   12.7062    6.3138
    2.0000    9.9248    4.3027    2.9200
    3.0000    5.8409    3.1824    2.3534
    4.0000    4.6041    2.7764    2.1318
    5.0000    4.0321    2.5706    2.0150
    6.0000    3.7074    2.4469    1.9432
    7.0000    3.4995    2.3646    1.8946
    8.0000    3.3554    2.3060    1.8595
    9.0000    3.2498    2.2622    1.8331
   10.0000    3.1693    2.2281    1.8125
   11.0000    3.1058    2.2010    1.7959
   12.0000    3.0545    2.1788    1.7823
   13.0000    3.0123    2.1604    1.7709
   14.0000    2.9768    2.1448    1.7613
   15.0000    2.9467    2.1314    1.7531
   16.0000    2.9208    2.1199    1.7459
   17.0000    2.8982    2.1098    1.7396
   18.0000    2.8784    2.1009    1.7341
   19.0000    2.8609    2.0930    1.7291
   20.0000    2.8453    2.0860    1.7247
   21.0000    2.8314    2.0796    1.7207
   22.0000    2.8188    2.0739    1.7171
   23.0000    2.8073    2.0687    1.7139
   24.0000    2.7969    2.0639    1.7109
   25.0000    2.7874    2.0595    1.7081
   26.0000    2.7787    2.0555    1.7056
   27.0000    2.7707    2.0518    1.7033
   28.0000    2.7633    2.0484    1.7011
   29.0000    2.7564    2.0452    1.6991
   30.0000    2.7500    2.0423    1.6973
   31.0000    2.7440    2.0395    1.6955
   32.0000    2.7385    2.0369    1.6939
   33.0000    2.7333    2.0345    1.6924
   34.0000    2.7284    2.0322    1.6909
   35.0000    2.7238    2.0301    1.6896
   36.0000    2.7195    2.0281    1.6883
   37.0000    2.7154    2.0262    1.6871
   38.0000    2.7116    2.0244    1.6860
   39.0000    2.7079    2.0227    1.6849
   40.0000    2.7045    2.0211    1.6839
   41.0000    2.7012    2.0195    1.6829
   42.0000    2.6981    2.0181    1.6820
   43.0000    2.6951    2.0167    1.6811
   44.0000    2.6923    2.0154    1.6802
   45.0000    2.6896    2.0141    1.6794
   46.0000    2.6870    2.0129    1.6787
   47.0000    2.6846    2.0117    1.6779
   48.0000    2.6822    2.0106    1.6772
   49.0000    2.6800    2.0096    1.6766
   50.0000    2.6778    2.0086    1.6759
   51.0000    2.6757    2.0076    1.6753
   52.0000    2.6737    2.0066    1.6747
   53.0000    2.6718    2.0057    1.6741
   54.0000    2.6700    2.0049    1.6736
   55.0000    2.6682    2.0040    1.6730
   56.0000    2.6665    2.0032    1.6725
   57.0000    2.6649    2.0025    1.6720
   58.0000    2.6633    2.0017    1.6716
   59.0000    2.6618    2.0010    1.6711
   60.0000    2.6603    2.0003    1.6706
   61.0000    2.6589    1.9996    1.6702
   62.0000    2.6575    1.9990    1.6698
   63.0000    2.6561    1.9983    1.6694
   64.0000    2.6549    1.9977    1.6690
   65.0000    2.6536    1.9971    1.6686
   66.0000    2.6524    1.9966    1.6683
   67.0000    2.6512    1.9960    1.6679
   68.0000    2.6501    1.9955    1.6676
   69.0000    2.6490    1.9949    1.6672
   70.0000    2.6479    1.9944    1.6669
   71.0000    2.6469    1.9939    1.6666
   72.0000    2.6459    1.9935    1.6663
   73.0000    2.6449    1.9930    1.6660
   74.0000    2.6439    1.9925    1.6657
   75.0000    2.6430    1.9921    1.6654
   76.0000    2.6421    1.9917    1.6652
   77.0000    2.6412    1.9913    1.6649
   78.0000    2.6403    1.9908    1.6646
   79.0000    2.6395    1.9905    1.6644
   80.0000    2.6387    1.9901    1.6641
   81.0000    2.6379    1.9897    1.6639
   82.0000    2.6371    1.9893    1.6636
   83.0000    2.6364    1.9890    1.6634
   84.0000    2.6356    1.9886    1.6632
   85.0000    2.6349    1.9883    1.6630
   86.0000    2.6342    1.9879    1.6628
   87.0000    2.6335    1.9876    1.6626
   88.0000    2.6329    1.9873    1.6624
   89.0000    2.6322    1.9870    1.6622
   90.0000    2.6316    1.9867    1.6620
   91.0000    2.6309    1.9864    1.6618
   92.0000    2.6303    1.9861    1.6616
   93.0000    2.6297    1.9858    1.6614
   94.0000    2.6291    1.9855    1.6612
   95.0000    2.6286    1.9853    1.6611
   96.0000    2.6280    1.9850    1.6609
   97.0000    2.6275    1.9847    1.6607
   98.0000    2.6269    1.9845    1.6606
   99.0000    2.6264    1.9842    1.6604
  100.0000    2.6259    1.9840    1.6602
];
switch tail
    case 'one'
        r1 = find(v==Tab1(:,1));%finding row for input value of alfa
        if alfa==0.01, t=Tab1(r1,2);end
        if alfa==0.05, t=Tab1(r1,3);end
        if alfa==0.10, t=Tab1(r1,4);end  
   
    case 'two'
        r2 = find(v==Tab2(:,1));%finding row for input value of alfa
        if alfa==0.01, t=Tab2(r2,2);end
        if alfa==0.05, t=Tab2(r2,3);end
        if alfa==0.10, t=Tab2(r2,4);end
end
function [Position_and_Posture,fval,exitflag] = ForWard_GA()
%2021年11月18日
%本程序用于执行基于遗传算法的并联机构正运动学

% lb = [-300 -300 -300 deg2rad(-90) deg2rad(-90) deg2rad(-45)];
% ub = [300 300 0 deg2rad(90) deg2rad(90) deg2rad(45)];
lb = [-300 -300 -300 -90 -90 -90];%设定搜索空间下限
ub = [300 300 -50 90 90 90]; %上限

% options = gaoptimset('PopInitRange',[lb;ub],'PopulationSize',100,'PlotFcn', @gaplotbestf);
% [PP,fval,exitflag] = gamultiobj(@FirstStep_ForWard_Cal,6,[],[],[],[],lb,ub,options);
% options = optimoptions('ga','PlotFcn', @gaplotbestf);
[PP,fval,exitflag] = ga(@ForWard_GA_Cal,6,[],[],[],[],lb,ub,[]);
Position_and_Posture=PP;

end
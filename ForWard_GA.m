function [Position_and_Posture,fval,exitflag] = ForWard_GA()
%2021��11��18��
%����������ִ�л����Ŵ��㷨�Ĳ����������˶�ѧ

% lb = [-300 -300 -300 deg2rad(-90) deg2rad(-90) deg2rad(-45)];
% ub = [300 300 0 deg2rad(90) deg2rad(90) deg2rad(45)];
lb = [-300 -300 -300 -90 -90 -90];%�趨�����ռ�����
ub = [300 300 -50 90 90 90]; %����

% options = gaoptimset('PopInitRange',[lb;ub],'PopulationSize',100,'PlotFcn', @gaplotbestf);
% [PP,fval,exitflag] = gamultiobj(@FirstStep_ForWard_Cal,6,[],[],[],[],lb,ub,options);
% options = optimoptions('ga','PlotFcn', @gaplotbestf);
[PP,fval,exitflag] = ga(@ForWard_GA_Cal,6,[],[],[],[],lb,ub,[]);
Position_and_Posture=PP;

end
function [Position_and_Posture,fval]=Forward(Points_Static_Local,Points_Movable_Local,L)
%2021��11��18��
%���������ڼ��㲢�����������˶�ѧ�����ݸ˳�����λ��

global Length
global Static_Point
global Movable_Point

Length=L;
Static_Point=Points_Static_Local;
Movable_Point=Points_Movable_Local;

%�����Ŵ��㷨�������˶�ѧ����
[Position_and_Posture,fval,exitflag]=ForWard_GA();
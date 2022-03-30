function [Position_and_Posture,fval]=Forward(Points_Static_Local,Points_Movable_Local,L)
%2021年11月18日
%本程序用于计算并联机构的正运动学即根据杆长计算位姿

global Length
global Static_Point
global Movable_Point

Length=L;
Static_Point=Points_Static_Local;
Movable_Point=Points_Movable_Local;

%利用遗传算法进行正运动学计算
[Position_and_Posture,fval,exitflag]=ForWard_GA();
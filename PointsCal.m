function [Static_P,Movable_P]=PointsCal(R_Static,R_Movable,Angle_Fenbu_Static,Angle_Fenbu_Movable)
%2021年11月18日
%本函数用于计算Stewart构型动静平台上螺杆连接点的局部坐标

%支架器械参数
R_Static=R_Static;%静平台螺杆连接点半径
R_Movable=R_Movable;%动平台螺杆连接点半径
Angle_Fenbu_Static=deg2rad(Angle_Fenbu_Static);%静平台上最近相邻两点与环心连线夹角
Angle_Fenbu_Movable=deg2rad(Angle_Fenbu_Movable);%动平台上最近相邻两点与环心连线夹角

%%定义局部坐标
Pi=pi;
%确定静平台的局部坐标
Static_P=zeros(6,3);
for m=1:3
    Static_P(2*m-1,:)=[R_Static*cos((m-1)*2*Pi/3-0.5*Angle_Fenbu_Static) R_Static*sin((m-1)*2*Pi/3-0.5*Angle_Fenbu_Static) 0];
    Static_P(2*m,:)=[R_Static*cos((m-1)*2*Pi/3-0.5*Angle_Fenbu_Static+Angle_Fenbu_Static) R_Static*sin((m-1)*2*Pi/3-0.5*Angle_Fenbu_Static+Angle_Fenbu_Static) 0];
end
%确定动平台的局部坐标
Movable_P=zeros(6,3);
for n=1:3
    Movable_P(2*n-1,:)=[R_Movable*cos((n-1)*2*Pi/3-0.5*Angle_Fenbu_Movable-Pi/3) R_Movable*sin((n-1)*2*Pi/3-0.5*Angle_Fenbu_Movable-Pi/3) 0];
    Movable_P(2*n,:)=[R_Movable*cos((n-1)*2*Pi/3-Pi/3-0.5*Angle_Fenbu_Movable+Angle_Fenbu_Movable) R_Movable*sin((n-1)*2*Pi/3-Pi/3-0.5*Angle_Fenbu_Movable+Angle_Fenbu_Movable) 0];
end
%本程序用于并联机构仿真及相关实验（Stewart构型）
%2021年11月18日
%正运动学（设定螺杆长度求得位姿）

%clear all;

%输入动静平台的结构尺寸（上端为静平台，下端为动平台）
Radius_Static=100;%静平台螺杆连接点半径
Radius_Movable=100;%动平台螺杆连接点半径
Angle_Static=15;%静平台上最近相邻螺杆两点与环心连线夹角
Angle_Movable=15;%动平台上最近相邻螺杆两点与环心连线夹角

%计算动静平台上螺杆连接点的局部参数
[Points_Static_Local,Points_Movable_Local]=PointsCal(Radius_Static,Radius_Movable,Angle_Static,Angle_Movable);

%设定杆长
L1=156;
L2=147;
L3=158;
L4=122;
L5=171;
L6=160;
L=[L1,L2,L3,L4,L5,L6];

%利用遗传算法根据杆长计算位姿
fval_final_max=1;
for i=1:100
    [Position_and_Posture,fval_final]=Forward(Points_Static_Local,Points_Movable_Local,L);
    disp(fval_final);
    if fval_final_max>fval_final
        break
    end
end
% disp(i);
%计算旋转矩阵
T=TransformMatrixCal(Position_and_Posture(1),Position_and_Posture(2),Position_and_Posture(3),Position_and_Posture(4),Position_and_Posture(5),Position_and_Posture(6));

%计算动静平台上螺杆连接点的全局坐标
Points_Static_Global=[Points_Static_Local';[1,1,1,1,1,1]];
Points_Movable_Global=T*[Points_Movable_Local';[1,1,1,1,1,1]];

%绘图显示
%绘制支架与骨骼得初始状态
figure();
view(50,14);
xlabel('x')
ylabel('y')
zlabel('z')
hold on;
grid on
axis([-200 200 -200 200 -250 350]);
axis square;
hold on;
DrawCircle(Points_Movable_Global',Points_Static_Global');
hold on;
%将上下环上的点都画出来
DrawPoint(Points_Movable_Global',Points_Static_Global');
hold on;
%将连杆绘制出来
[L]=DrawLines(Points_Movable_Global',Points_Static_Global');
hold on;

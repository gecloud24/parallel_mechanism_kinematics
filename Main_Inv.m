%本程序用于并联机构仿真及相关实验（Stewart构型）
%2021年11月18日
%逆运动学（设定位姿求得螺杆长度）

% clear all;

%输入动静平台的结构尺寸（上端为静平台，下端为动平台）
Radius_Static=100;%静平台螺杆连接点半径
Radius_Movable=100;%动平台螺杆连接点半径
Angle_Static=15;%静平台上最近相邻螺杆两点与环心连线夹角
Angle_Movable=15;%动平台上最近相邻螺杆两点与环心连线夹角

%计算动静平台上螺杆连接点的局部坐标
[Points_Static_Local,Points_Movable_Local]=PointsCal(Radius_Static,Radius_Movable,Angle_Static,Angle_Movable);

%设定初始位姿(设置动平台的且为下端的)
Start_X=-23;
Start_Y=40;
Start_Z=-169;
Start_RX=-49.2;%这里是角度制
Start_RY=48;
Start_RZ=-32.4;

%计算旋转矩阵
T=TransformMatrixCal(Start_X,Start_Y,Start_Z,Start_RX,Start_RY,Start_RZ);

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

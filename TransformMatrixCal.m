function T=TransformMatrixCal(X,Y,Z,RX,RY,RZ)
%2021年11月18日
%本程序用于计算旋转矩阵

RX=deg2rad(RX);
RY=deg2rad(RY);
RZ=deg2rad(RZ);

%根据位姿参数计算旋转矩阵
T_Rx=[1 0 0;0 cos(RX) -sin(RX);0 sin(RX) cos(RX)];
T_Ry=[cos(RY) 0 sin(RY);0 1 0;-sin(RY) 0 cos(RY)];
T_Rz=[cos(RZ) -sin(RZ) 0;sin(RZ) cos(RZ) 0;0 0 1];
T_R=T_Rz*T_Ry*T_Rx;
T_t=[X;Y;Z;1];
T=zeros(4,4);
for i=1:3
    for j=1:3
        T(i,j)=T_R(i,j);
    end
end
T(:,4)=T_t;
T(4,:)=[0 0 0 1];
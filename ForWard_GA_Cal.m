function [PP] = ForWard_GA_Cal(Parameters)
%2021��11��18��
%�������������˶�ѧ���Ŵ��㷨���Ż�����

global Length
global Static_Point
global Movable_Point

%ȷ��λ�˲���
X=Parameters(1);
Y=Parameters(2);
Z=Parameters(3);
RX=Parameters(4);
RY=Parameters(5);
RZ=Parameters(6);
%��ȡ����ƽ̨���ݸ����ӵ�ľֲ�����
Static_P=Static_Point;
Movable_P=Movable_Point;

%ȷ����ת
T=TransformMatrixCal(X,Y,Z,RX,RY,RZ);

%��ȡ����ƽ̨���ݸ����ӵ��ȫ������
Static_P_Global=[Static_P';[1,1,1,1,1,1]];
Movable_P_Global=T*[Movable_P';[1,1,1,1,1,1]];
Static_P_Global=Static_P_Global';
Movable_P_Global=Movable_P_Global';

%ɸѡ����1
if max(Movable_P_Global(:,3))<0
    erroflag1=1;
else
    erroflag1=-1;
end

%ɸѡ����2
if (max(abs(Movable_P_Global(:,3)))-min(abs(Movable_P_Global(:,3))))<150
    erroflag2=1;
else
    erroflag2=-1;
end

%��ȡ����˳�
if erroflag1*erroflag2==1
    L=zeros(6,1);
    L(1)=sqrt((Static_P_Global(1,1)-Movable_P_Global(2,1))^2+(Static_P_Global(1,2)-Movable_P_Global(2,2))^2+(Static_P_Global(1,3)-Movable_P_Global(2,3))^2);
    L(2)=sqrt((Static_P_Global(2,1)-Movable_P_Global(3,1))^2+(Static_P_Global(2,2)-Movable_P_Global(3,2))^2+(Static_P_Global(2,3)-Movable_P_Global(3,3))^2);
    L(3)=sqrt((Static_P_Global(3,1)-Movable_P_Global(4,1))^2+(Static_P_Global(3,2)-Movable_P_Global(4,2))^2+(Static_P_Global(3,3)-Movable_P_Global(4,3))^2);
    L(4)=sqrt((Static_P_Global(4,1)-Movable_P_Global(5,1))^2+(Static_P_Global(4,2)-Movable_P_Global(5,2))^2+(Static_P_Global(4,3)-Movable_P_Global(5,3))^2);
    L(5)=sqrt((Static_P_Global(5,1)-Movable_P_Global(6,1))^2+(Static_P_Global(5,2)-Movable_P_Global(6,2))^2+(Static_P_Global(5,3)-Movable_P_Global(6,3))^2);
    L(6)=sqrt((Static_P_Global(6,1)-Movable_P_Global(1,1))^2+(Static_P_Global(6,2)-Movable_P_Global(1,2))^2+(Static_P_Global(6,3)-Movable_P_Global(1,3))^2);
else
    L=zeros(6,1);
end
    
%������Ӧ�Ⱥ���
PP=0;
for ii=1:6
    z=(Length(ii)-L(ii))^2;
    PP=z+PP;
end

end




function [Static_P,Movable_P]=PointsCal(R_Static,R_Movable,Angle_Fenbu_Static,Angle_Fenbu_Movable)
%2021��11��18��
%���������ڼ���Stewart���Ͷ���ƽ̨���ݸ����ӵ�ľֲ�����

%֧����е����
R_Static=R_Static;%��ƽ̨�ݸ����ӵ�뾶
R_Movable=R_Movable;%��ƽ̨�ݸ����ӵ�뾶
Angle_Fenbu_Static=deg2rad(Angle_Fenbu_Static);%��ƽ̨��������������뻷�����߼н�
Angle_Fenbu_Movable=deg2rad(Angle_Fenbu_Movable);%��ƽ̨��������������뻷�����߼н�

%%����ֲ�����
Pi=pi;
%ȷ����ƽ̨�ľֲ�����
Static_P=zeros(6,3);
for m=1:3
    Static_P(2*m-1,:)=[R_Static*cos((m-1)*2*Pi/3-0.5*Angle_Fenbu_Static) R_Static*sin((m-1)*2*Pi/3-0.5*Angle_Fenbu_Static) 0];
    Static_P(2*m,:)=[R_Static*cos((m-1)*2*Pi/3-0.5*Angle_Fenbu_Static+Angle_Fenbu_Static) R_Static*sin((m-1)*2*Pi/3-0.5*Angle_Fenbu_Static+Angle_Fenbu_Static) 0];
end
%ȷ����ƽ̨�ľֲ�����
Movable_P=zeros(6,3);
for n=1:3
    Movable_P(2*n-1,:)=[R_Movable*cos((n-1)*2*Pi/3-0.5*Angle_Fenbu_Movable-Pi/3) R_Movable*sin((n-1)*2*Pi/3-0.5*Angle_Fenbu_Movable-Pi/3) 0];
    Movable_P(2*n,:)=[R_Movable*cos((n-1)*2*Pi/3-Pi/3-0.5*Angle_Fenbu_Movable+Angle_Fenbu_Movable) R_Movable*sin((n-1)*2*Pi/3-Pi/3-0.5*Angle_Fenbu_Movable+Angle_Fenbu_Movable) 0];
end
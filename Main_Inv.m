%���������ڲ����������漰���ʵ�飨Stewart���ͣ�
%2021��11��18��
%���˶�ѧ���趨λ������ݸ˳��ȣ�

% clear all;

%���붯��ƽ̨�Ľṹ�ߴ磨�϶�Ϊ��ƽ̨���¶�Ϊ��ƽ̨��
Radius_Static=100;%��ƽ̨�ݸ����ӵ�뾶
Radius_Movable=100;%��ƽ̨�ݸ����ӵ�뾶
Angle_Static=15;%��ƽ̨����������ݸ������뻷�����߼н�
Angle_Movable=15;%��ƽ̨����������ݸ������뻷�����߼н�

%���㶯��ƽ̨���ݸ����ӵ�ľֲ�����
[Points_Static_Local,Points_Movable_Local]=PointsCal(Radius_Static,Radius_Movable,Angle_Static,Angle_Movable);

%�趨��ʼλ��(���ö�ƽ̨����Ϊ�¶˵�)
Start_X=-23;
Start_Y=40;
Start_Z=-169;
Start_RX=-49.2;%�����ǽǶ���
Start_RY=48;
Start_RZ=-32.4;

%������ת����
T=TransformMatrixCal(Start_X,Start_Y,Start_Z,Start_RX,Start_RY,Start_RZ);

%���㶯��ƽ̨���ݸ����ӵ��ȫ������
Points_Static_Global=[Points_Static_Local';[1,1,1,1,1,1]];
Points_Movable_Global=T*[Points_Movable_Local';[1,1,1,1,1,1]];

%��ͼ��ʾ
%����֧��������ó�ʼ״̬
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
%�����»��ϵĵ㶼������
DrawPoint(Points_Movable_Global',Points_Static_Global');
hold on;
%�����˻��Ƴ���
[L]=DrawLines(Points_Movable_Global',Points_Static_Global');
hold on;

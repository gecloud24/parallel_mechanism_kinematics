%���������ڲ����������漰���ʵ�飨Stewart���ͣ�
%2021��11��18��
%���˶�ѧ���趨�ݸ˳������λ�ˣ�

%clear all;

%���붯��ƽ̨�Ľṹ�ߴ磨�϶�Ϊ��ƽ̨���¶�Ϊ��ƽ̨��
Radius_Static=100;%��ƽ̨�ݸ����ӵ�뾶
Radius_Movable=100;%��ƽ̨�ݸ����ӵ�뾶
Angle_Static=15;%��ƽ̨����������ݸ������뻷�����߼н�
Angle_Movable=15;%��ƽ̨����������ݸ������뻷�����߼н�

%���㶯��ƽ̨���ݸ����ӵ�ľֲ�����
[Points_Static_Local,Points_Movable_Local]=PointsCal(Radius_Static,Radius_Movable,Angle_Static,Angle_Movable);

%�趨�˳�
L1=156;
L2=147;
L3=158;
L4=122;
L5=171;
L6=160;
L=[L1,L2,L3,L4,L5,L6];

%�����Ŵ��㷨���ݸ˳�����λ��
fval_final_max=1;
for i=1:100
    [Position_and_Posture,fval_final]=Forward(Points_Static_Local,Points_Movable_Local,L);
    disp(fval_final);
    if fval_final_max>fval_final
        break
    end
end
% disp(i);
%������ת����
T=TransformMatrixCal(Position_and_Posture(1),Position_and_Posture(2),Position_and_Posture(3),Position_and_Posture(4),Position_and_Posture(5),Position_and_Posture(6));

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

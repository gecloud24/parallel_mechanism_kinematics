function [L]=DrawLines(L_Down_P,L_Up_P)
%%%
%�ú������ڻ������Ӹ�
%%%
%%%%%%%%%%%%%%%%%%%%%%
L_Down_P=L_Down_P;
L_Up_P=L_Up_P;
%ȷ���»����ӵ�
for i=1:6
    L_DP(i,:)=[L_Down_P(i,1),L_Down_P(i,2),L_Down_P(i,3)];
end
%ȷ���ϻ����ӵ�
for j=1:6
    L_UP(j,:)=[L_Up_P(j,1),L_Up_P(j,2),L_Up_P(j,3)];
end
%�������Ӹ�
% line([L_DP(1,1),L_UP(2,1)],[L_DP(1,2),L_UP(2,2)],[L_DP(1,3),L_UP(2,3)],'LineWidth',3,'color','r');
% line([L_DP(2,1),L_UP(3,1)],[L_DP(2,2),L_UP(3,2)],[L_DP(2,3),L_UP(3,3)],'LineWidth',3,'color','g');
% line([L_DP(3,1),L_UP(4,1)],[L_DP(3,2),L_UP(4,2)],[L_DP(3,3),L_UP(4,3)],'LineWidth',3,'color','b');
% line([L_DP(4,1),L_UP(5,1)],[L_DP(4,2),L_UP(5,2)],[L_DP(4,3),L_UP(5,3)],'LineWidth',3,'color','c');
% line([L_DP(5,1),L_UP(6,1)],[L_DP(5,2),L_UP(6,2)],[L_DP(5,3),L_UP(6,3)],'LineWidth',3,'color','m');
% line([L_DP(6,1),L_UP(1,1)],[L_DP(6,2),L_UP(1,2)],[L_DP(6,3),L_UP(1,3)],'LineWidth',3,'color','y');%%��ɫ�е��
% line([L_DP(1,1),L_UP(2,1)],[L_DP(1,2),L_UP(2,2)],[L_DP(1,3),L_UP(2,3)],'LineWidth',3);
% line([L_DP(2,1),L_UP(3,1)],[L_DP(2,2),L_UP(3,2)],[L_DP(2,3),L_UP(3,3)],'LineWidth',3);
% line([L_DP(3,1),L_UP(4,1)],[L_DP(3,2),L_UP(4,2)],[L_DP(3,3),L_UP(4,3)],'LineWidth',3);
% line([L_DP(4,1),L_UP(5,1)],[L_DP(4,2),L_UP(5,2)],[L_DP(4,3),L_UP(5,3)],'LineWidth',3);
% line([L_DP(5,1),L_UP(6,1)],[L_DP(5,2),L_UP(6,2)],[L_DP(5,3),L_UP(6,3)],'LineWidth',3);
% line([L_DP(6,1),L_UP(1,1)],[L_DP(6,2),L_UP(1,2)],[L_DP(6,3),L_UP(1,3)],'LineWidth',3);

% line([L_DP(2,1),L_UP(1,1)],[L_DP(2,2),L_UP(1,2)],[L_DP(2,3),L_UP(1,3)],'LineWidth',3,'color','y');
line([L_DP(2,1),L_UP(1,1)],[L_DP(2,2),L_UP(1,2)],[L_DP(2,3),L_UP(1,3)],'LineWidth',3);
line([L_DP(3,1),L_UP(2,1)],[L_DP(3,2),L_UP(2,2)],[L_DP(3,3),L_UP(2,3)],'LineWidth',3);
line([L_DP(4,1),L_UP(3,1)],[L_DP(4,2),L_UP(3,2)],[L_DP(4,3),L_UP(3,3)],'LineWidth',3);
line([L_DP(5,1),L_UP(4,1)],[L_DP(5,2),L_UP(4,2)],[L_DP(5,3),L_UP(4,3)],'LineWidth',3);
line([L_DP(6,1),L_UP(5,1)],[L_DP(6,2),L_UP(5,2)],[L_DP(6,3),L_UP(5,3)],'LineWidth',3);
line([L_DP(1,1),L_UP(6,1)],[L_DP(1,2),L_UP(6,2)],[L_DP(1,3),L_UP(6,3)],'LineWidth',3);
%����˳�
L=zeros(6,1);
L(1)=sqrt((L_UP(1,1)-L_DP(2,1))^2+(L_UP(1,2)-L_DP(2,2))^2+(L_UP(1,3)-L_DP(2,3))^2);
L(2)=sqrt((L_UP(2,1)-L_DP(3,1))^2+(L_UP(2,2)-L_DP(3,2))^2+(L_UP(2,3)-L_DP(3,3))^2);
L(3)=sqrt((L_UP(3,1)-L_DP(4,1))^2+(L_UP(3,2)-L_DP(4,2))^2+(L_UP(3,3)-L_DP(4,3))^2);
L(4)=sqrt((L_UP(4,1)-L_DP(5,1))^2+(L_UP(4,2)-L_DP(5,2))^2+(L_UP(4,3)-L_DP(5,3))^2);
L(5)=sqrt((L_UP(5,1)-L_DP(6,1))^2+(L_UP(5,2)-L_DP(6,2))^2+(L_UP(5,3)-L_DP(6,3))^2);
L(6)=sqrt((L_UP(6,1)-L_DP(1,1))^2+(L_UP(6,2)-L_DP(1,2))^2+(L_UP(6,3)-L_DP(1,3))^2);

end
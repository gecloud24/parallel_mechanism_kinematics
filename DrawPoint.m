function DrawPoint(P_Down_P,P_Up_P)
%%%
%该函数用于绘制上下环和杆的连接点
%%%
%%%%%%%%%%%%%%%%%%%%%%
P_Down_P=P_Down_P;
P_Up_P=P_Up_P;
%绘制下环上的点
for i=1:6
    P_DP(i,:)=[P_Down_P(i,1),P_Down_P(i,2),P_Down_P(i,3)];
end
plot3(P_DP(:,1),P_DP(:,2),P_DP(:,3),'r.','MarkerSize',20);
hold on;

%绘制上环上的点
for j=1:6
    P_UP(j,:)=[P_Up_P(j,1),P_Up_P(j,2),P_Up_P(j,3)];
end
% plot3(P_UP(:,1),P_UP(:,2),P_UP(:,3),'y.','MarkerSize',20);
plot3(P_UP(:,1),P_UP(:,2),P_UP(:,3),'r.','MarkerSize',20);
hold on;
plot3(P_UP(1,1),P_UP(1,2),P_UP(1,3),'r.','MarkerSize',20);
hold on;
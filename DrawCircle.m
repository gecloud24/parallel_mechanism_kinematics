function DrawCircle(C_Down_P,C_Up_P)
%%%
%该函数用于绘制上下环,会利用到绘制圆弧的函数
%%%
%%%%%%%%%%%%%%%%%%%%%%
C_Down_P=C_Down_P;
C_Up_P=C_Up_P;
%绘制上环
for i=1:6
    DP(i,:)=[C_Down_P(i,1),C_Down_P(i,2),C_Down_P(i,3)];
end
DrawArc([DP(1,:);DP(2,:);DP(3,:)])
%绘制下环
for j=1:6
    UP(j,:)=[C_Up_P(j,1),C_Up_P(j,2),C_Up_P(j,3)];
end
DrawArc([UP(1,:);UP(2,:);UP(3,:)])
function DrawCircle(C_Down_P,C_Up_P)
%%%
%�ú������ڻ������»�,�����õ�����Բ���ĺ���
%%%
%%%%%%%%%%%%%%%%%%%%%%
C_Down_P=C_Down_P;
C_Up_P=C_Up_P;
%�����ϻ�
for i=1:6
    DP(i,:)=[C_Down_P(i,1),C_Down_P(i,2),C_Down_P(i,3)];
end
DrawArc([DP(1,:);DP(2,:);DP(3,:)])
%�����»�
for j=1:6
    UP(j,:)=[C_Up_P(j,1),C_Up_P(j,2),C_Up_P(j,3)];
end
DrawArc([UP(1,:);UP(2,:);UP(3,:)])
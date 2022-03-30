function vector=unitVec(vec)
%%%
%该函数用于对向量单位化
%%%
vector=vec/sqrt(sum(vec.^2));
end
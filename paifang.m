% 创建一个30x30的单位矩阵  
identity_matrix = eye(31);  
  
% 将单位矩阵中的1替换为数据中的值  
Y = identity_matrix.* y';
%D直接碳排放量万吨；z是隐含碳强度矩阵；y是总产出万元；x是中间投入万元
Z = D' * inv(Y - X);
Z_transpose = Z';
E=Y*Z_transpose;

%d是直接碳排放量除以总产出，z1是另一种方法算的完全碳排放系数
Z1=d'*inv(identity_matrix -Ad);

%将数据化为矩阵
%matrix_d = reshape(d, 30, 30);
%matrix_result = reshape(result, 30, 30);
%e=matrix_d*matrix_result;
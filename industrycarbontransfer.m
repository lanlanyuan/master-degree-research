%%部门间隐含碳转移  Z中间投入矩阵，W完全排放矩阵，D直接碳排放强度组成的系数对角矩阵 Ad国内直接消耗系数矩阵;TW为隐含碳转移矩阵。
I=eye(31);
Ad=Z./X';%X是各行业总产出
D = I.* d';%d是直接碳排放强度系数
wanquanxiaohaoxishu=inv(I-Ad)-I;
W=D*inv(I-Ad)*Z;
TW1=W-W';
%有问题


% 将单位矩阵中的1替换为数据中的值  e是隐含碳排放强度
E = I.* e';
TW2=E*Z;
TW3=TW2-TW2';

%算拉动系数也可以
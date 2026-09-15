%% 竞争型投入产出表转化为非竞争型 A直接消耗技术系数；Ad国内直接消耗技术系数；m进口在每个部门的产品和服务供应中的份额
I=eye(44);
M = I.* m';
Ad=(I-M)*A;
Am=A-Ad;
zguo=Ad.*X';
zjinkou=Am.*X';
clc;
clear;
% 在0 到2pi 均匀的分点，包括0和2pi

x=linspace(0,2*pi,50);
n=1000;
e_ix=(1+x*1i./n).^n;
% 绘制由原点到 x,y 向量箭头的函数
compass(e_ix);
clc;
clear;
% ��0 ��2pi ���ȵķֵ㣬����0��2pi

x=linspace(0,2*pi,50);
n=1000;
e_ix=(1+x*1i./n).^n;
% ������ԭ�㵽 x,y ������ͷ�ĺ���
compass(e_ix);
%为了演示具体的效果的动图
clc;
clear all;
% 动态图
%animatedline 创建一根没有任何数据的动画线条并将其添加到当前坐标区中。通过使用 addpoints 函数循环向线条中添加点来创建动画。
h=animatedline;
% 获得图像的句柄
h1=gcf;
view(3);

x1=xlabel('cos(\omegat)');
y1=ylabel('sin(\omegat)');
z1=zlabel('t');
% 设置坐标轴
set(x1,'Rotation',20);
set(y1,'Rotation',-30);
grid on;
title('\omega=1rad/s made by  j pan');
% 设定坐标轴的具体的数值
axis([-1,1,-1,1,0,4*pi]);
N=200;
t=linspace(0,4*pi,N);
%旋转角速度为1
w=1;
sig=-0.2;

% 都是数组类的元素
x=exp(sig*t).*cos(w*t);
y=exp(sig*t).*sin(w*t);
%a=tic; % start the timer 
for k=1:N
   addpoints(h,x(k),y(k),t(k));
   hold on;
   % line 是什么意思了
   line([0 x(k)],[0, y(k)],[t(k),t(k)],'Color','red');
  % b=toc(a);% check timer 
  % if(b>1/90)
      drawnow;
    %  a=tic;
   %end
end
    
    
    
    
 











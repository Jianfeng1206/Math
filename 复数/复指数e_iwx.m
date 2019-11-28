clc;
clear all;
% 创建动画线条
h=animatedline;

x1=xlabel('cos(\omegat)');
y1=ylabel('sin(\omegat)');
grid on;
title('\omega=1 rad/s Made by Jianfeng');
% 图为方形，但是刻度不一定一样

axis([-1,1,-1,1]);
axis square;
N=100;
% 均等分为一百份
t=linspace(0,2*pi,N);

% 如何去理解三角函数的基本思想了
w=4;
x=cos(w*t);
y=sin(w*t);

a=tic;% start timer 
for k=1:N
    addpoints(h,x(k),y(k));
    hold on;
    
    % 绘制箭头， 貌似还没有搞懂是什么回事
   quiver(0,0,x(k)*1.1,y(k)*1.1);
    b=toc(a);% check timer
    if(b>1/90)
        drawnow %update screen  every 1/90 seconds
        a=tic; % reset after timer updating 
    end 

end






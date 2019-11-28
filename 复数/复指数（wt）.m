% 去实现动态的效果图 
clc;
clear all;
%创建一个 绘画的动态线条去
h=animatedline;
h1=gcf;
view(3);
%
xlabel('cos(\omegat)');
ylabel('sin(\omegat)');
zlabel('t');
% suppose that w is a constant,时间也是一个变量 i 表示的是一种旋转的关系

% 
axis([-1,1,-1,1,0,4*pi]);
N=200;
t=linspace(0,4*pi,N);

w=1;
x=cos(w*t);
y=sin(w*t);
z=t;
for k=1:N
      addpoints(h,x(k),y(k),t(k));
      line([0,x(k)],[0,y(k)],[t(k),t(k)],'Color','red');
    % 
      drawnow;
end












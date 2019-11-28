clc;
clear all;
% ������������
h=animatedline;

x1=xlabel('cos(\omegat)');
y1=ylabel('sin(\omegat)');
grid on;
title('\omega=1 rad/s Made by Jianfeng');
% ͼΪ���Σ����ǿ̶Ȳ�һ��һ��

axis([-1,1,-1,1]);
axis square;
N=100;
% ���ȷ�Ϊһ�ٷ�
t=linspace(0,2*pi,N);

% ���ȥ������Ǻ����Ļ���˼����
w=4;
x=cos(w*t);
y=sin(w*t);

a=tic;% start timer 
for k=1:N
    addpoints(h,x(k),y(k));
    hold on;
    
    % ���Ƽ�ͷ�� ò�ƻ�û�и㶮��ʲô����
   quiver(0,0,x(k)*1.1,y(k)*1.1);
    b=toc(a);% check timer
    if(b>1/90)
        drawnow %update screen  every 1/90 seconds
        a=tic; % reset after timer updating 
    end 

end






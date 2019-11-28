%Ϊ����ʾ�����Ч���Ķ�ͼ
clc;
clear all;
% ��̬ͼ
%animatedline ����һ��û���κ����ݵĶ���������������ӵ���ǰ�������С�ͨ��ʹ�� addpoints ����ѭ������������ӵ�������������
h=animatedline;
% ���ͼ��ľ��
h1=gcf;
view(3);

x1=xlabel('cos(\omegat)');
y1=ylabel('sin(\omegat)');
z1=zlabel('t');
% ����������
set(x1,'Rotation',20);
set(y1,'Rotation',-30);
grid on;
title('\omega=1rad/s made by  j pan');
% �趨������ľ������ֵ
axis([-1,1,-1,1,0,4*pi]);
N=200;
t=linspace(0,4*pi,N);
%��ת���ٶ�Ϊ1
w=1;
sig=-0.2;

% �����������Ԫ��
x=exp(sig*t).*cos(w*t);
y=exp(sig*t).*sin(w*t);
%a=tic; % start the timer 
for k=1:N
   addpoints(h,x(k),y(k),t(k));
   hold on;
   % line ��ʲô��˼��
   line([0 x(k)],[0, y(k)],[t(k),t(k)],'Color','red');
  % b=toc(a);% check timer 
  % if(b>1/90)
      drawnow;
    %  a=tic;
   %end
end
    
    
    
    
 











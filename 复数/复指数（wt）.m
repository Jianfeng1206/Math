% ȥʵ�ֶ�̬��Ч��ͼ 
clc;
clear all;
%����һ�� �滭�Ķ�̬����ȥ
h=animatedline;
h1=gcf;
view(3);
%
xlabel('cos(\omegat)');
ylabel('sin(\omegat)');
zlabel('t');
% suppose that w is a constant,ʱ��Ҳ��һ������ i ��ʾ����һ����ת�Ĺ�ϵ

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












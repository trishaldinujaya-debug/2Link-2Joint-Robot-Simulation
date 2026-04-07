clc;
clear;
close all;

L1 = 1;
L2 = 1;

theta1 = deg2rad(30);
theta2 = deg2rad(45);

x1 = L1*cos(theta1);
y1 = L1*sin(theta1);

x2 = x1 + L2*cos(theta1 + theta2);
y2 = y1 + L2*sin(theta1 + theta2);

figure;
plot([0 x1],[0 y1],'LineWidth',4);
hold on;
plot([x1 x2],[y1 y2],'LineWidth',4);

plot(0,0,'o','MarkerSize',8);
plot(x1,y1,'o','MarkerSize',8);
plot(x2,y2,'o','MarkerSize',8);

grid on;
axis equal;

xlim([-2 2]);
ylim([-2 2]);

title('2-Link 2-Joint Robot');
xlabel('X');
ylabel('Y');
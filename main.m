%% Main file
clear all;
close all;
clc;

init_x1 =[-6,-3,-2,0,2,3,6]          %x axis
init_x2 =init_x1/3                   %y axis

%for a=[-2:1:2]                      %Loop for some initial condition
for i=1:length(init_x1)
x0=[init_x1(i) init_x2(i)]           %Initial condition
plot (init_x1,init_x2,'O');          %mark the dot as initial point                                      
[t,x]=ode45('Sys1',[0 10],x0);       %solve ODE for 10 second span 
%plot phase potrait trajectory                                     
plot(x(:,1),x(:,2));                 % x axis :x1 as position & y axis:x2  as velocity
hold on                              %keep previous drawing
end
grid on;                             %enable grid
title ('Simple Pendulum System');    %figure title
xlabel('x(Position)');ylabel('xd(velocity)'); %figure label

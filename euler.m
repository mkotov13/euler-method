clear; %This clears all variables from memory.

clf;  %This clears all figures (graphs) from memory.



% set the initial condition

y(1) = 10;
t(1) = 0;



% define the step, delta(t)

dt=0.01;

% define the end of the interval on which you want to approximate the

% solution
tfinal=100;

k = 2; % begin counting from 2, since the initial value is stored in y(1)

% This script could potentially be used to solve similar equations.
% All one needs to do is to rewrite the formula for the derivative.
% For instance, to solve dy/dt=y/t+t/y, just put the comment sign in front
% of the y(k) row and remove it from the line right below

while k<(tfinal/dt)
    y(k) = y(k-1) + ((4*sin(t(k-1)) - y(k-1)/10))*dt;
    %y(k) = y(k-1) + ((y(k-1)/t(k-1))+(t(k-1)/y(k-1)))*dt;
    t(k) = t(k-1) + dt; 
    k = k + 1;
end

figure(1)  % Plotting the data points
plot(t,y)
title('Approximate Solutions')
xlabel('t')
ylabel('y')

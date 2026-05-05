% Rocket Propulsion Application
% constants
m = 1000;
c = 500;
vi = 0;
tspan = [0 10];

% Forces
F = [20000 40000 60000 80000];

% Solve with ode for the velocity's 
[t1,v1] = ode45(@(t,v) (F(1)-c*v)/m, tspan, vi);
[t2,v2] = ode45(@(t,v) (F(2)-c*v)/m, tspan, vi);
[t3,v3] = ode45(@(t,v) (F(3)-c*v)/m, tspan, vi);
[t4,v4] = ode45(@(t,v) (F(4)-c*v)/m, tspan, vi);

% Plotting over first ten seconds 
plot(t1,v1,'LineWidth',1)
hold on
plot(t2,v2,'LineWidth',1)
plot(t3,v3,'LineWidth',1)
plot(t4,v4,'LineWidth',1)
hold on
title('Velocity of Rocket Sled vs Time')
xlabel('Time (seconds)')
ylabel('Velocity (m/s)')
grid on
legend('20,000 N','40,000 N','60,000 N','80,000 N','Location','best')
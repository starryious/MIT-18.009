%% Exercise 6.1
% Compare ode23 and ode45 by using each of them to compute pi. 
% Express the integral \int_{0}^{1}\frac{4}{1+t^2}dt = pi
% as the differential equation
% dy/dt = 4/(1+t^2)
% with y(0) =0 on 0<=t<=1. Use each routine to integrate the equation
% How close does the final value of y get to pi?

%%
F = @(t,y) 4/(1+t^2);
y0 = 0;
t0 = 0;
tfinal = 1;
ode23(F,[t0,tfinal],y0)
ode45(F,[t0,tfinal],y0)
[t,y23]=ode23(F,[t0,tfinal],y0)
[t,y45] = ode45(F,[t0,tfinal],y0)
format short e;
pi - y23
pi - y45

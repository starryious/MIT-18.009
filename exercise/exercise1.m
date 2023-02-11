%% Exercise
% Find the differential equation that produces linear
% growth and rerun this example using ode1 twice,
% once to compute the compound interest and once
% to compute the simple interest.
a =0.06; % interest rate
F = @(t,y) a*y;
t0 = 0 ;
h = 1/12; % a month
tfinal = 10; % ten years
y0 = 100 ;% start 100 dollars
compound = ode1(F,t0,h,tfinal,y0) 
simple =ode1(0.05,t0,h,tfinal,y0)



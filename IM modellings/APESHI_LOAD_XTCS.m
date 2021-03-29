
clear;clc
load LOADX

figure(1);
t1 = Q1(:,1); % time series
y1 = Q1(:,2); % signal data
plot(t1,y1,'b-');
hold on;

% Call function envelope to 
% obtain the envelope data
%--------------------------------------------
[up,~] = envelope(y1,150,'peak');

% Show the envelope alone 
%--------------------------------------------
figure(2)
plot(t1,up);
hold on;
title('The envelope of the given signal data','FontSize',18);
% hold off;
% grid on
hold on;

figure(1);
t2 = Q2(:,1); % time series
y2 = Q2(:,2); % signal data
plot(t2,y2,'g:');
hold on;

% Call function envelope to 
% obtain the envelope data
%--------------------------------------------
[up,~] = envelope(y2,150,'peak');

% Show the envelope alone
%--------------------------------------------
figure(2)
plot(t2,up);
hold on;
title('The envelope of the given signal data','FontSize',18);
hold on;

figure(1);
t3 = Q3(:,1); % time series
y3 = Q3(:,2); % signal data
plot(t3,y3,'y+');

% Call function envelope to 
% obtain the envelope data
%--------------------------------------------
[up,~] = envelope(y3,150,'peak');

% Show the envelope alone
%--------------------------------------------
figure(2)
plot(t3,up);
hold on;
title('The envelope of the given signal data','FontSize',18);
hold on;

figure(1);
t4 = Q4(:,1); % time series
y4 = Q4(:,2); % signal data
plot(t4,y4,'c*');
hold on;

% Call function envelope to 
% obtain the envelope data
%--------------------------------------------
[up,down] = envelope(y4,150,'peak');

% Show the envelope alone
%--------------------------------------------
figure(2)
plot(t4,up);
hold on;
title('The envelope of the given signal data','FontSize',18);
hold off
grid on
legend('0.70 PF','0.80 PF','0.90 PF','0.99 PF')



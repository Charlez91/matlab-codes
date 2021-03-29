%Envelope function is use to obtain the upper/down envelope of a given
% data and plot the envelope.
%   See also EVELOPE

clear;clc;

% Load a signal waveform
%--------------------------------------------
load LOSS
whos
figure(1);
t = Pol(:,1); % time series
y = Pol(:,2); % signal data
plot(t,y,'b-');
title('The original signal waveform','FontSize',20);
grid on

% Call function envelope to 
% obtain the envelope data
%--------------------------------------------
[up,down] = envelope(y,150,'peak');

% Show the envelope alone
%--------------------------------------------
figure(2)
plot(t,up);
hold on;
% plot(t,down);
title('The envelope of the given signal data','FontSize',18);
hold off;
grid on

% Show the original signal and its envelope
%--------------------------------------------
figure(3)
plot(t,y,'g-'); hold on;
plot(t,up,'r-.');
plot(t,down,'r-.');
title('The envelope vs the given signal data','FontSize',18);
hold off;
grid on

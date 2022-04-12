% -----------------Making a signal------------------
clear;%it clear elements from workspace which were previously written
clc;%it clears text written in command window
close all;%it closes all figures
t=0:0.1:10; % time vector
%example of signal y=abs(10*sin(t)); 
%signal sine wave will be outside only
y = input('enter the equation of wave');
% -------convert to a digital signal yd-----------
u=max(y)-min(y); % range of signal
n=3; % number of bits
q=u/(2^n); % quantization interval
a=fix(y/q);% round each number to the nearest of zero like -1.6 to -1 and -2.8 to -2

yd=dec2bin(a,n);% from decimel to binary 

% ------you can calculate the signal yq ----------
yq=a*q;

%-----------------Plotting  signals---------------

subplot(3,2,1)
hold on
title ('Orignal Signal')
axis([0 11 -11 11])
plot(t,y,'r')

subplot(3,2,2)
hold on
title('signl in discrete form')
axis([0 11 -11 11])
stem(t,y,'r')

subplot(3,2,3)
hold on
title('sampled signal')
axis([0 11 -11 11])
stem(t,a)

subplot(3,2,4)
hold on
title('discrete signal from sampled signal')
axis([0 11 -11 11])
stem(t,yq,'black')

subplot(3,2,5:6)
hold on
title('signal from sampled signal')
axis([0 11 -11 11])
plot(t,yq,'black')

hold off

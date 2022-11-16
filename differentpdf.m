clc;
clear all;
close all;

x=-5:0.5:5;
y=normpdf(x,0,1);
subplot(1,5,1);
plot(x,y);
title('mean=0 , standard deviation=1') 

x=-5:0.5:5;
y=normpdf(x,0,0.5);
subplot(1,5,2);
plot(x,y);
title('mean=0 , standard deviation=0.5') 

x=-5:0.5:5;
y=normpdf(x,1,1);
subplot(1,5,3);
plot(x,y);
title('mean=1 , standard deviation=1')  

y=normrnd(0,1,1,200);
Gy=periodogram(y);
Ry=abs(ifft(Gy,256));
Ry=[Ry(130:256)' Ry(1:129)']
t=-127:1:128;
subplot(1,5,4)
plot(Gy)
xlabel('frequencysamples');
title('PSD')
subplot(1,5,5)
plot(t,Ry)
xlabel('time shift')
title('autocorrelation') 

%for error in normpdf write pkg load statistics in command window

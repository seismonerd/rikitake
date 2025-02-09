%% dynamo_driver.m

close all; clear; clc

%% Parameters
coeffs = [0.5 50 8 0.5];    %  m  g  r  f
iTime = 0;
fTime = 400;

%% Optional ODE solver parameters
%rt = 1e-12;
%at = 1e-12;
%options = odeset('RelTol',rt,'AbsTol',at*ones(1,6));

initCond = [-1.4 -1 -1 -1.4 2.2 -1.5];
%IC = [-0.6649   -0.6649   -0.3367   -0.3367    0.9425    0.9425]%
tic
[T , Y] = ode45(@dynamo,[iTime fTime], initCond,[],coeffs);     %,options <--> []);
toc

%% Example Plot
figure(1); plot(T,Y(:,1));
grid on




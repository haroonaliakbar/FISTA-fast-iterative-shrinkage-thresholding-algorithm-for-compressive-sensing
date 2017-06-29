%% Author: Haroon Ali Akbar - University of Victoria, CA
%% Compressive Sensing with FISTA - Quadratic Programming
%% For more information: haroonaliakbar@uvic.ca
%% Last update: Spring 2017 
close all
clear all
clc
%% Inputing Data **************************************************************************
x = sin(-pi:0.01:pi);
n = numel(x);

%% Optimization parameters
epsilon = 1e-4; %error tolerance
m = 25;


x = reshape(x,n,1);
phi = randi([0 1],m,n);

y = phi*x;

psi = abs(fft2(eye(n,n)));

A = phi*psi;


lambda = 10*rand(n,1); % Double checking size of lambda

% Initialising parameters
opts.pos = true;
opts.lambda = lambda;
opts.check_grad = 0;
opts.tol = epsilon;
tic
% Running FISTA iterations for all frames
v = fista_lasso(y, A,[], opts);


yrec = A*v;
plot(y); title('Original Signal');
figure; plot(yrec); title('Reconstructed Signal');
function [ Fx, Fy ] = robertsImage( image )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
I = imread(image);
F = im2double(I);
hx = [0,1;-1,0]; % x derivative
hy = [1,0;0,-1]; % y derivative

Fx = imfilter(F,hx,'replicate','conv');
Fy = imfilter(F,hy, 'replicate', 'conv');
h2 = [0,1,0;1,1,1;0,1,0]; %Dilation
F3 = imdilate(F,h2); %Dilation


figure, imshow(Fx)
figure, imshow(Fy)

end


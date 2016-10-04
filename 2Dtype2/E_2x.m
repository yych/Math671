function [ p ] = E_2x( x_j, p_1, M_r, tau )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

p = exp((x_j - p_1) * pi / M_r / tau);

end


function [ p ] = E_1( x_j, y_j, p_1, p_2, tau )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

p = exp(-((x_j - p_1)^2 + (y_j - p_2)^2) / (4 * tau));


end


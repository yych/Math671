function [ p ] = E_2y( y_j, p_2, M_r, tau )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


p = exp((y_j - p_2) * pi / M_r / tau);

end


function [ p ] = fun3( m, M_r, tau )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

p = exp(-((pi * m) / M_r)^2 / tau);

end


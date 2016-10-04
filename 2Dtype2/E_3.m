function [ p ] = E_3( l, M_r, tau )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here


p = exp(-(pi * l / M_r) .^ 2 / tau);

end


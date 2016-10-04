function [ p ] = modifyMod( m, n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if mod(m, n) <= 0
    p = mod(m, n) + n;
else
    p = mod(m, n);

end


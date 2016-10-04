function [ p, m ] = choosePt( x_j , M_r)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

for c = (M_r - 1) : -1 : 0
    if 2 * pi * (c / M_r) <= x_j
        p = 2 * pi * (c / M_r);
        m = c;
        break;
    end
end

end


function [ sum ] = sumOfCon( f_j, x_j, M, M_sp )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

M_r = 2 * M;
tau = 12 / M^2;
p = choosePt(x_j, M_r);
E_1 = fun1(x_j - p, tau);
E_2 = fun2(x_j - p, M_r, tau);

sum = 0;

for m_1 = (-M_sp + 1) : M_sp
    sum = sum + f_j * E_1 * (E_2 ^ m_1) * fun3(m_1, M_r, tau);

end


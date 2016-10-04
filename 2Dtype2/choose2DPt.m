function [ p_1, p_2, m_1, m_2 ] = choose2DPt( x_j, y_j, M_r )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

[p_1, m_1] = choosePt(x_j, M_r);
[p_2, m_2] = choosePt(y_j, M_r);

end


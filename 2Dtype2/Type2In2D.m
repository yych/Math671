function [ result ] = Type2In2D( f, x_j, y_j, tau, M_r, M_sp)
% input:
% f is a M_r * M_r matrix with the value of f_{-tau}(2pi / M_r)
% (x_j, y_j) is the pt
% tau is given, usually be 12 / M^2
% M_r should be the length of the FFTs, usually be 2M
% M_sp yields the accuracy of the result, usually be 6 or 12

% output:
% p is f(x_j)

% precompute E_3(l) and E_4(k)
% is useless for group 2
% L = 0 : M_sp;
% K = 0 : floor(M / 2);
% E_3L = E_3( L, M_r, tau );
% E_4K = E_4(K, tau);

% choose the nearest pt
[p_1, p_2, m_1, m_2] = choose2DPt(x_j, y_j, M_r);

% compute E_1, E_2x, E_2y
E_11 = E_1( x_j, y_j, p_1, p_2, tau );
E_2xx = E_2x( x_j, p_1, M_r, tau );
E_2yy = E_2y( y_j, p_2, M_r, tau );

% compute (E_2x) ^ l_1, (E_2y) ^ l_2
L_1 = (-M_sp + 1) : M_sp;
L_2 = (-M_sp + 1) : M_sp;
E_2xL = E_2xx .^ L_1;
E_2yL = E_2yy .^ L_2;

% convolve the Gaussian spreading function with f as follows
result = 0;
V_0 = E_11;
for l_2 = L_2
    V_y = V_0 * E_2yL(l_2 + M_sp);
    for l_1 = L_1
        result = result + V_y * E_2xL(l_1 + M_sp) * f(modifyMod(m_1 + l_1, M_r), modifyMod(m_2 + l_2, M_r));
    end
end



end


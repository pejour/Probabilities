function [C_x,C_y,M] = matrice_inertie(E_x,E_y,G_norme_E)
% exercice 2 TP3
[n,~] = size(E_x);

pi = sum(G_norme_E);
C_x = G_norme_E' * E_x / pi;
C_y = G_norme_E' * E_y / pi;

E_x_bis = E_x - C_x * ones(n,1);
E_y_bis = E_y - C_y * ones(n,1);
E_xy_bis = E_x_bis .* E_y_bis;

M = [G_norme_E'*(E_x_bis .^2) G_norme_E'*E_xy_bis; G_norme_E'*E_xy_bis G_norme_E'*(E_y_bis .^2)] / pi

end


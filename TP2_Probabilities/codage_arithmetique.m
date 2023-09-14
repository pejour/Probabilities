% exercice 3 TP2
function [borne_inf,borne_sup] = codage_arithmetique(texte,selection_alphabet,bornes)
n = length(texte);
borne_sup = 1;
borne_inf = 0;
for i = 1:n
    lettre = texte(i);
    j = find(selection_alphabet == lettre);
    largeur = borne_sup - borne_inf;
    borne_sup = borne_inf + largeur*bornes(2,j);
    borne_sup = borne_inf + largeur*bornes(1,j);
end
end


% exercice 3 TP2
function bornes = partitionnement(selection_frequences)
borne_sup = 0;
bornes = [];
n = length(selection_frequences);
for i = 1:n
    borne_inf = borne_sup;
    borne_sup = selection_frequences(i) + borne_sup;
    bornes = [bornes; borne_inf borne_sup];
end
bornes = bornes';
end


% exercice Matlab TP2
function frequences = calcul_frequences(texte,alphabet)
n = length(texte);
k = length(alphabet);
frequences = zeros(1,k);
for i = 1:k
    frequences(1,i) = (length(find(texte == alphabet(i))))/n; 
end 
end


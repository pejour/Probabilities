% exercice Matlab TP2
function [selection_frequences,selection_alphabet] = selection(frequences,alphabet)
indices = find(frequences > 0);
selection_frequences = frequences(indices);
selection_alphabet = alphabet(indices);
end


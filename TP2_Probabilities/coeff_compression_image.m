function coeff_compression_avant_decorrelation = coeff_compression_image(histogramme,dico)
% exercice 2 TP2
M = zeros(1,255);
S = 0;
for i = 1:255
    S = S + histogramme(i); 
end
M(1,:) = dico(:,2);
coeff_compression_avant_decorrelation = (S*8) / (M*histogramme);
end


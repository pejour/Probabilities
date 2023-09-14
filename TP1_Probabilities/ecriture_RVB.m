function image_RVB = ecriture_RVB(image_originale)
    [nb_lignes, nb_colonnes] = size(image_originale);
    image_RVB = zeros(nb_lignes/2, nb_colonnes/2, 3);

    for i = 1:nb_lignes/2
        for j = 1:nb_colonnes/2
            image_RVB(i,j,1) = image_originale(2*i-1, 2*j);
            image_RVB(i,j,3) = image_originale(2*i, 2*j-1);
            image_RVB(i,j,2) = (image_originale(2*i,2*j)+image_originale(2*i-1,2*j-1))/2;
        end
    end
   
end


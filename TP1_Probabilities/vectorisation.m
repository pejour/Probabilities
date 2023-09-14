function [X,Y] = vectorisation(I)
    I_gauche = I(:,1:end-1);
    X = I_gauche(:);
    I_droite = I(:,2:end);
    Y = I_droite(:);
end


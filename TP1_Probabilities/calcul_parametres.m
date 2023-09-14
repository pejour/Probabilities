function [r,a,b] = calcul_parametres(X,Y)
    moy_X = mean(X);
    moy_Y = mean(Y);
    
    var_X = (1/lenght(X))*sum(X.*X) - moy_X^2;
    var_Y = (1/lenght(Y))*sum(Y.*Y) - moy_Y^2;
    
    sigma_X = sqrt(var_X);
    sigma_Y = sqrt(var_Y);
    sigma_XY = (1/length(X))*sum(X.*Y)-moy_X*moy_Y;
    
    r = sigma_XY / (sigma_X*sigma_Y);
    a = sigma_XY / var_X;
    b = moy_Y - a*moy_X;
    
end


function [x_min,x_max,probabilite] = calcul_proba(E_nouveau_repere,p)
% exercice 2 TP3
[N,~] = size(E_nouveau_repere);
n = 0;
probabilite = 1;
while probabilite >= 0.1
    probabilite = 0;
    n = n+1;
    for i = 0:n-1
        C = factorial(N) / (factorial(i)*factorial(N-i));
        probabilite = probabilite - C*p^i*(1-p)^(N-i);
    end
end
x_max = max(E_nouveau_repere(:,1));
x_min = min(E_nouveau_repere(:,1));
end


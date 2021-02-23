function [norm_X_new] = normalizeNewData(X_new, mu, sigma)

norm_Price = (X_new(:,1)-mu(1,1))/sigma(1,1);
norm_br = (X_new(:,2)-mu(1,2))/sigma(1,2);
norm_X_new = [norm_Price, norm_br];

end
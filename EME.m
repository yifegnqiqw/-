function [eva] = EME(image,k1,k2)
[high,weight] = size(image);
m = floor(high/k1);n = floor(weight/k2);
I = zeros(m,n);
eva = 0;
for l = 1:k1
    for k = 1:k2
        I = image(m*(l-1)+1:m*l,n*(k-1)+1:n*k);
        eme = 20*log(max(max(I))/(min(min(I))+0.01));
        eva = eva+eme;
    end
end
eva = eva/(k1*k2);
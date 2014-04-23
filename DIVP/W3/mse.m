function mse = mse(img1, img2)

[N1, N2] = size(img1);
mse = 1/(N1*N2) * sum(sum((img1 - img2).^2));

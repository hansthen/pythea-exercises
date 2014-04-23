img1 = imread('lena.gif');
img2 = double(img1);
f1 = 1/9 * ones(3,3);
img2_1 = imfilter(img2, f1, 'replicate');
f2 = 1/25 * ones(5,5);
img2_2 = imfilter(img2, f2, 'replicate');

mse_1 = mse(img2, img2_1);
psnr_1 = psnr(mse_1)

mse_2 = mse(img2, img2_2);
psnr_2 = psnr(mse_2)





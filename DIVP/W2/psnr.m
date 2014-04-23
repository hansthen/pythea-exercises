function psnr = psnr(mse);
psnr = 10 * log10(255^2/mse);

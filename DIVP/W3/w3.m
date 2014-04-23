% step 1
% (1) Download the original image from here. The original image is an 8-bit gray-scale image of width 479 and height 359 pixels. Convert the original image from type 'uint8' (8-bit integer) to 'double' (real number).
img = imread('quiz.jpg', 'jpeg');
img1 = double(img);

% (2) Recall from the lecture that in order to avoid aliasing (e.g., jagged edges) when down-sampling an image, 
% you will need to first perform low-pass filtering of the original image. 
% For this step, create a 3×3 low-pass filter with all coefficients equal to 1/9. 
% Perform low-pass filtering with this filter using the MATLAB function "imfilter" with 'replicate' as the third argument. 
filt = 1/9 * ones(3,3);
img2 = imfilter(img, filt, 'replicate');

% (3) Obtain the down-sampled image by removing every other row and column from the filtered image, i
% that is, removing the 2nd, 4th, all the way to the 358th row, and then removing the 2nd, 4th, 
% all the way to the 478th column. 
% The resulting image should be of width 240 and height 180 pixles.
img3 = img2(1:2:end,1:2:end);


% 4) Create an all-zero MATLAB array of width 479 and height 359. 
% For every odd-valued i∈[1,359] and odd-valued j∈[1,479], set the value of the newly created array at (i,j) 
% equal to the value of the low-resolution image at ((i+1)/2,(j+1)/2).

img4 = zeros(359,479);
is = [1:2:359];
js = [1:2:479];
img4(is,js) = img3((is+1)/2,(js+1)/2);

%(5) Convolve the result obtained from step (4) with a filter with coefficients [0.25,0.5,0.25;0.5,1,0.5;0.25,0.5,0.25] 
% using the MATLAB function "imfilter". 
%In this step you should only provide "imfilter" with two arguments instead of three, that was the case in step (1).
filt2 = [0.25,0.5,0.25;0.5,1,0.5;0.25,0.5,0.25];
img5 = imfilter(img4, filt2);

% (6) Compute the PSNR between the upsampled image obtained from step (5) and the original image. 
mse_ = mse(img1, img5);
psnr_ = psnr(mse_);
keyboard();



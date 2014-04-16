img = imread('quiz.jpg');
img2 = imfilter(img, filt, 'replicate');
img3 = img2(1:2:end,1:2:end);
keyboard();


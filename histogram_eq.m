%Histogram Eq
Y = imread('panda.jpg');
Z = histeq(Y);
subplot(3,2,3);
imshow( Y );
subplot(3,2,4);
imhist(Y);
subplot(3,2,5);
imshow( Z );
subplot(3,2,6);
imhist(Z)

%Log Transform
a1 = imread('lena.jpg'); 
a = double(a1)/255; %normalize
c = 2; 
f = c*log(1 + (a)); 
subplot(3,2,1),imshow(a1),title('Original Image');
subplot(3,2,2),imshow((f)),title('Log Transformation Image');
  
%Inverse Log Transform
figure;
L = 256;
I = imread('cameraman.jpg');
log_I = uint8(log(double(I)+1) .* ((L - 1)/log(L)));
exp_I = uint8((exp(double(I)) .^ (log(L) / (L-1))) - 1);
subplot(2, 2, [1 2]); imshow(I); title('Input');
subplot(2, 2, 3); imshow(log_I); title('\itlog(I)');
subplot(2, 2, 4); imshow(exp_I); title('\itexp(I)');

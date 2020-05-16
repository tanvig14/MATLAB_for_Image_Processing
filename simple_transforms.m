%Flip LR
x = imread('einstein.jpg');
a = rgb2gray(x);
subplot(4,2,1);
imshow(a);
b = fliplr(a);
subplot(4,2,2);
imshow(b);
 
%Increase brightness
y = imread('lena.jpg');
c = rgb2gray(y);
subplot(4,2,3);
imshow(c);
d = imadd(c,90);
subplot(4,2,4);
imshow(d);
 
%Complement of image
z = imread('panda.jpg');
e = rgb2gray(z);
subplot(4,2,5);
imshow(e);
f = imcomplement(e);
subplot(4,2,6);
imshow(f);
 
%Adjust image brightness
p = imread('monkey.jpg');
q = rgb2gray(p);
subplot(4,2,7);
imshow(q);
r = imadjust(q);
subplot(4,2,8);
imshow(r);

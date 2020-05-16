%Pseudo Image Colour Processing
%!st done with interval of 50 
clc;
clear all;
im=input('Enter the file name (gray level image) :','s');
k=imread(im);
[x y z]=size(k);
k=double(k);
for i=1:x
    for j=1:y
        if k(i,j)>=0 & k(i,j)<50
            m(i,j,1)=k(i,j,1)+5;
            m(i,j,2)=k(i,j)+10;
            m(i,j,3)=k(i,j)+10;
        end
        if k(i,j)>=50 & k(i,j)<100
            m(i,j,1)=k(i,j)+35;
            m(i,j,2)=k(i,j)+28;
            m(i,j,3)=k(i,j)+10;
        end
        if k(i,j)>=100 & k(i,j)<150
            m(i,j,1)=k(i,j)+52;
            m(i,j,2)=k(i,j)+30;
            m(i,j,3)=k(i,j)+15;
        end
        if k(i,j)>=150 & k(i,j)<200
            m(i,j,1)=k(i,j)+50;
            m(i,j,2)=k(i,j)+40;
            m(i,j,3)=k(i,j)+25;
        end
        if k(i,j)>=200 & k(i,j)<=256
            m(i,j,1)=k(i,j)+120;
            m(i,j,2)=k(i,j)+60;
            m(i,j,3)=k(i,j)+45;
        end
    end
end
subplot(1,2,1);
imshow(uint8(k),[])
subplot(1,2,2);
imshow(uint8(m),[]);

%Done with interval of 18
clc;clear all;close all;
im=input('Enter the file name (gray level image) :','s');
y=imread(im);
y=rgb2gray(y);
[p,q,r]=size(y);
for i=1:1:p
    for j=1:1:q
        if (y(i,j)>= 0) && (y(i,j)< 18)
            x(i,j,1)=0;
            x(i,j,2)=0;
            x(i,j,3)=0;
        elseif (y(i,j)>= 18) && (y(i,j)< 36)
            x(i,j,1)=237;
            x(i,j,2)=27;
            x(i,j,3)=36;
        elseif (y(i,j)>= 36) && (y(i,j)< 54)
            x(i,j,1)=228;
            x(i,j,2)=142;
            x(i,j,3)=31;
        elseif (y(i,j)>= 54) && (y(i,j)< 72)
            x(i,j,1)=251;
            x(i,j,2)=179;
            x(i,j,3)=180;
        elseif (y(i,j)>= 72) && (y(i,j)< 90)
            x(i,j,1)=21;
            x(i,j,2)=154;
            x(i,j,3)=233;    
        elseif (y(i,j)>= 90) && (y(i,j)< 108)
            x(i,j,1)=116;
            x(i,j,2)=3;
            x(i,j,3)=59;
        elseif (y(i,j)>= 108) && (y(i,j)< 126)
            x(i,j,1)=252;
            x(i,j,2)=234;
            x(i,j,3)=12;
        elseif (y(i,j)>= 126) && (y(i,j)< 144)
             x(i,j,1)=146;
            x(i,j,2)=80;
            x(i,j,3)=167;
        elseif (y(i,j)>= 144) && (y(i,j)< 162)
            x(i,j,1)=203;
            x(i,j,2)=213;
            x(i,j,3)=62;
        elseif (y(i,j)>= 162) && (y(i,j)< 180)
            x(i,j,1)=59;
            x(i,j,2)=165;
            x(i,j,3)=77;
        elseif (y(i,j)>= 180) && (y(i,j)< 198)
            x(i,j,1)=48;
            x(i,j,2)=85;
            x(i,j,3)=173;
        elseif (y(i,j)>= 198) && (y(i,j)< 216)
            x(i,j,1)=126;
            x(i,j,2)=180;
            x(i,j,3)=67;
        elseif (y(i,j)>= 216) && (y(i,j)< 232)
            x(i,j,1)=16;
            x(i,j,2)=233;
            x(i,j,3)=59;
        elseif (y(i,j)>= 232) && (y(i,j)< 255)
            x(i,j,1)=255;
            x(i,j,2)=255;
            x(i,j,3)=100;
        end
    end
end
subplot(1,2,1);
imshow(y);
subplot(1,2,2);
x=x/255;
imshow(x);

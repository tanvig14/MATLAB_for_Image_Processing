%Median pass filter to remove salt and pepper noise
p = imread('cameraman.jpg');
q = rgb2gray(p);
r = imnoise(q, 'salt & pepper', 0.02);
P = medfilt2(r);
 
subplot(2,2,1);
imshow(r);
subplot(2,2,2);
imshow(q);
 
%Laplacian filter
a=imread('panda.jpg');
a=rgb2gray(a);
[r c]=size(a)
a=im2double(a);
filter=[-1 -1 -1;-1 8 -1; -1 -1 -1];
result=a;
for i=2:r-1
    for j=2:c-1
        sum=0;
        row=0;
        col=1;
        
        for k=i-1:i+1
            row=row+1;
            col=1;
            for l=j-1:j+1
                sum = sum+a(k,l)*filter(row,col);               
                col=col+1;
            end
        end
      result(i,j)=sum;      
    end
end
result
subplot(2,2,3)
imshow(a);
subplot(2,2,4)
imshow(result);

%Sobel    
    newImg = imread('lena.jpg');
    I = rgb2gray(newImg)
    subplot(3,2,1);
    imshow(I);
    size(I)
    BW = edge(I,'sobel',0.1) ;
    subplot(3,2,2);
    imshow(BW);
    
%Prewitts
    newImg1 = imread('monkey.jpg');
    grayImage= rgb2gray(newImg1)
    subplot(3,2,3);
    imshow(grayImage);
    afterFilter = edge(grayImage,'prewitt')
    subplot(3,2,4);
    imshow(afterFilter);
    
%Roberts
    newImg2 = imread('cameraman.jpg');
    grayImage= rgb2gray(newImg2)
    subplot(3,2,5);
    imshow(grayImage);
    robertsResult = edge(grayImage,'roberts')
    subplot(3,2,6);
    imshow(robertsResult);  

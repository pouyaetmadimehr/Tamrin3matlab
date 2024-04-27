clc
clear all;
close all;
img =zeros(300,300);
center=[150,150];
r=20;
for i=1 :4
  for x=center(1)-r:center(1)+r 
     for y=center(2)-r:center(2)+r 
         D=(x-center(1))*(x-center(1))+(y-center(2))*(y-center(2));
          if (round(sqrt(D)))<= r && i==1
             img(x,y)=255;end
         if (round(sqrt(D)))<= r  && (round(sqrt(D)))>=r/2 && mod(i,2)==1 && i>1
             img(x,y)=255;end
          if (round(sqrt(D)))==r 
                 img(x,y)=255;end
          imshow(img);
     end
  end
r=r*2;
end

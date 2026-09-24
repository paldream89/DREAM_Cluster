function [m]=StructToMat(r)
%frame = 15
cat=double(r.cat);
x=double(r.x);
y=double(r.y);
z=double(r.z);
xc=double(r.xc);
yc=double(r.yc);
zc=double(r.zc);
h=double(r.h);
area=double(r.area);
width=double(r.width);
phi=double(r.phi);
Ax=double(r.Ax);
bg=double(r.bg);
I=double(r.I);
frame=double(r.frame);
length=double(r.length);
link=double(r.link);
valid=double(r.valid);
        % 1   2 3 4 5  6  7  8 9    10    11  12 13 14 15   16     17   18
m=double([cat x y z xc yc zc h area width phi Ax bg I frame length link valid]);


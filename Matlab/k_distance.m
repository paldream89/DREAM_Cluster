clear
clc
global LastFolder
if exist('LastFolder','var')
    GetFileName=sprintf('%s/*.bin',LastFolder);
else
    GetFileName='*.bin';
end

[FileNameR,PathNameR] = uigetfile(GetFileName,'Select bin file');

RightFile =sprintf('%s%s',PathNameR,FileNameR);
LastFolder=PathNameR;
data= readbinfileNXcYcZc(RightFile);

xx=data.xc;yy=data.yc;
for i=1:length(xx)
    for j=1:length(yy)
        d(i,j)=sqrt((xx(i)-xx(j))^2+(yy(i)-yy(j))^2);
    end
end

A=d(d>0);
D=fliplr(sort(A));
a=1:length(D);b=D;
plot(-a,b);
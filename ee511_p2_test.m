clear all;
x = [51, 31, 15, 3];
x_theo = 100*[(5/6)^3, 3*(5/6)^2*1/6, 3*(5/6)*(1/6)^2,(1/6)^3];
ChisquaredTest = sum((x-x_theo).^2./x_theo);
chi2inv(0.95,2)

clear;
x=[];
for kk=1:1000
    x(kk)=randi([-3, 2]);
end
hist(x);

clear;
x=[];
for kk=1:1000000
    x(kk)=rand();
end
hist(x)
var(x)
mean=(sum(x)/1000000);
myvar=(sum((x-mean).^2)/999999)

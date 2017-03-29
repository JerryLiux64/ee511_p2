x=[];
y=[];
samnum=100000;
for kk=1:samnum
    x=rand();
    y=rand();
end
cov(x,y)
mean_x=sum(x)/samnum;
mean_y=sum(y)/samnum;
mycov=(sum((x-mean_x).*(y-mean_y)))/(samnum-1)
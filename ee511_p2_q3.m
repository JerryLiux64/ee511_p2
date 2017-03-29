clear;
sample=[];%sample data
obsernum=[];%observed data(sorted)
samnum=10000;%number of samples
for kk=1:samnum%sampling
    sample(kk)=randi([0,9]);
end
sam_theo=[samnum/10,samnum/10,samnum/10,samnum/10,samnum/10,samnum/10,samnum/10,samnum/10,samnum/10,samnum/10];%theoretical expected value
hist(sample);
sample=sort(sample);

kk=1;
count=0;
for j=1:10; %count the number of each number
    obsernum(j)=0;
end
    for j=1:10
        count=0;
        if (kk>samnum)
            break;
        end
        while(sample(kk)==(j-1)&& kk<=samnum)
           count=count+1;
           kk=kk+1;
           if(kk>samnum)
               break;
           end
        end
        obsernum(j)=count;
    end

%hist(sample)
%obsernum
 

goodnessoffit=sum((obsernum-sam_theo).^2./sam_theo)%goodness of fit
for j=2:10%wrong distribution interval
new_obsernum(j-1)=obsernum(j);
end
new_obsernum(10)=0;
%new_obsernum
new_goodnessoffit=sum((new_obsernum-sam_theo).^2./sam_theo)


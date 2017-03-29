clear;
sample=[];
obsernum=[];
samnum=100000000;
for kk=1:samnum
    sample(kk)=randi([0,9]);
end
sam_theo=[samnum/10,samnum/10,samnum/10,samnum/10,samnum/10,samnum/10,samnum/10,samnum/10,samnum/10,samnum/10];
hist(sample);
sample=sort(sample)

kk=1;
count=0;
for j=1:10;
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


obsernum
    

goodnessoffit=sum((obsernum-sam_theo).^2./sam_theo)

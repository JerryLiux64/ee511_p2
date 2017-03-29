samnum=10000;
bootnum=1000;
sample=[];
bootstrap=[];
bootstrap_mean=[];
bootstrap_stadev=[];
for kk=1:samnum
    sample(kk)=(rand()*5-3);
end
hist(sample);

mean=(sum(sample))/samnum
myvar=(sum((sample-mean).^2))/(samnum-1)
for j=1:bootnum
    for kk=1:samnum
        bootstrap(kk)=sample(randi([1,samnum]));
    end
    bootstrap_mean(j)=sum(bootstrap)/samnum;
    bootstrap_stadev(j)=(sum((bootstrap-bootstrap_mean(j)).^2)/(samnum-1))^0.5;
end
bootstrap_mean=sort(bootstrap_mean);
mean_lowerbound=bootstrap_mean(fix(bootnum*0.025))
mean_upperbound=bootstrap_mean(fix(bootnum*0.975))
stadiv_lowerbound=bootstrap_stadev(fix(bootnum*0.025))
stadiv_upperbound=bootstrap_stadev(fix(bootnum*0.975))



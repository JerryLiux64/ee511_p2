clear;
samnum=10000;   %number of samples
X=[];           %sequence X
Y=[];           %sequence Y
X_k_1=[];       %sequence Xk+1
X_k_2=[];
X_k_3=[];
X_k_1(1)=0;     %right shifting
for kk=1:2      %right shifting
    X_k_2(kk)=0;
    X_k_3(kk)=0;
end
X_k_3(3)=0;     %right shifting

for kk=1:samnum %sampling
    X(kk)=rand();   
    if(kk<samnum)
        X_k_1(kk+1)=X(kk);
    end
    if(kk<samnum-1)
        X_k_2(kk+2)=X(kk);
    end
    if(kk<samnum-2)
        X_k_3(kk+3)=X(kk);
    end
    Y(kk)=X(kk)-2*X_k_1(kk)+0.5*X_k_2(kk)-X_k_3(kk);
end
%X
%X_k_1
%X_k_2
%X_k_3
%Y
%cov([X, X_k_1])
%cov([X,Y])
%figure(1)
%hist(X)
%figure(2)
%hist(Y)
mycov=sum((X-0.5).*(X_k_1-0.5))/(samnum-1)%covariance
mycov_2=sum((X-0.5).*(Y+0.5))/(samnum-1)
%mycov_3=sum(X.*Y)/(samnum-1)-samnum*0.5*(-0.5)/(samnum-1)
%mycov_4=sum(X.*X_k_1)/(samnum-1)-samnum*0.5*(0.5)/(samnum-1)

    


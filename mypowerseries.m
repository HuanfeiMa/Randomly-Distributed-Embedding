% function handle to used in the basis function of gaussian process fit
% X is an n-by-d matrix of n observations in d dimension space
% H is an n-by-p matrix of basis functions

function H=mypowerseries(X)

s=size(X);
n=s(1);
d=s(2);

p=2;% up to p order polynomial;

powervector=mypower_loop(d,p);

s=size(powervector);
l=s(1);
H=zeros(n,l);

for i=1:l
    temp=ones(n,1);
    for j=1:d
        temp=temp.*X(:,j).^powervector(i,j);
    end
    H(:,i)=temp;
end

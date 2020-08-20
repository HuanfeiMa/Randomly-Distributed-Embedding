function a=mypower_loop(n,m)


a=zeros(nchoosek(n+m,m),n);
l=1;
if m>0
    a(l,:)=zeros(1,n);
    l=l+1;
end

if m>=1
    for i=1:n
        temp=zeros(1,n);
        temp(i)=temp(i)+1;
        a(l,:)=temp;
        l=l+1;
    end
end

if m>=2
    for i=1:n
        for j=i:n
            temp=zeros(1,n);
            temp(i)=temp(i)+1;
            temp(j)=temp(j)+1;
            a(l,:)=temp;
            l=l+1;
        end
    end
end


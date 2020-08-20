function a=mypower(n,m)
if n==1;
    a=[0:m]';
    return;
else
    b=mypower(n-1,m);
    s=size(b);
    a=[zeros(s(1),1),b];
    for i=1:m
    b=mypower(n-1,m-i);
    s=size(b);
    temp=[i*ones(s(1),1),b];
    a=[a;temp];
    end
    return;
end

 
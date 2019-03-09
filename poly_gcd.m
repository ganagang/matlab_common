function [ q ] = poly_gcd( f, g)
%function [ gcd ] = poly_gcd( p1, p2)
%   辗转相除法求得两个多项式的最大公因式
%  
%

if(length(f)<length(g))
    p = f;
    f= g;
    g = p;
end
d0=f
r0=g
r1=g;
q=r0;
while length(r0)>0
    [q1,r1]=deconv(d0,r0)
    d0=round(r0)
    r0=round(r1)
    k=find(d0~=zeros(size(d0)))
    d0=d0(k:end)
    k=find(r0~=zeros(size(r0)))
    r0=r0(k:end)
    q=d0/d0(1)
end

end


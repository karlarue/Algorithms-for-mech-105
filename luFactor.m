function[L,U,P]=luFactor(A)
A=input('please enter squre matrix')
[R,C]=size(A);
U=A;
L=eye(C);
P=eye(C);
for q=1:R-1
    pivot=0
pivot=max(abs(U(q:R,q)))
for w=q:C
if(abs(U(w,q))==pivot)
    ind=w
    break;
end
end
U([q,ind],q:R)=U([ind,q],q:R)
L([q,ind],1:q-1)=L([ind,q],1:q-1)
P([q,ind],:)=P([ind,q],:)
for w=q+1:R
    U(w,q:R)=U(w,q:R)-L(w,q)*U(q,q:R)
    L(w,q)=U(w,q)/U(q,q)
    
end
end


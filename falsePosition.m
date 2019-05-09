%%This M gile will be used to find the roor using false postion method
%%Inputs
%%-func=fucntion being evaluated
%%x1=lower guess and x2=upper guess, es=relative error=.0001%
%%maxtier=max interations(default to 200)
%%outputs-root= desired root location, fx=fucntion evaluated at the root,
%%ea, appropriate relative eroor(%) iter- howmany interation were perfomed
function [root,fx,ea,iter]=falsePosition(func,xl,xu,es,maxiter)
if nargin<3
    error ('need more inputs')
elseif nargin==3   
maxiter=0:200;
es=0.0001;
if func(xl)*func(xu)>0
    error('x1 and xu not in the range')
end
end
xl=1
xu=2
iter=0;
ea=100;
xr=(xl*func(xu)-xu*func(xl))/(func(xu)-func(xl))
while abs(x1-x2)>es
    xr=(xl*func(xu)-xu*func(xl))/(func(xu)-func(xl));
if func(xl)*func(xu)<0
    ea=abs((x-xu)/xr)*100
    xu=root
else
    x1=root
end
iter=iter+1
end
end




    

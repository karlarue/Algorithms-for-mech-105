%KARLA RUEDA- MECH 105
%This code will allow you to inegrate give set of data
%Using the simpson 1/3 rule and the trapozoidal rule if there is an odd
%number of intervals
%inputs:
%x=a vector & y= outputs of function





function I = simpson(x,y)
%Error check
if length (x)~=length(y)
    error ("Make sure the inputs are of the same length")
end
spacing = diff(x);%use the diff bult in fucntion to calcualte spacing of x
N=length(x)-1;
if ~ all(spacing==spacing(1))
    error ("Make sure all the inputs are eqaully sapced")
else H=(x(length(x)-1)-x(1))/(N-1);
    H=H/N;
end
Firstvalue=y(1);
lastvalue=y(length(y)-1);
if mod(N,2)~= 0%calcualting if there is any odd set of intervals
    warning( "Will use trapezoid methond on the last interval because odd number of intervals")
    y_simpson=y(1:end-1);
    y_trapoz=y(length(y)-1);
    %calcualting the values of the data( first value, odd value, last value
    %etc)
    First=y(1);
    Last=y(length(y)-1);
    Even=sum(y(3:2:length(y)-2));
    Odd=sum(y(2:2:length(y)-2));
else
    First=y(1);
    Last=y(length(y));
    Even=sum(y(3:2:length(y)-1));
    Odd=sum(y(2:2:length(y)));
end
Integration_simp=(H/3)*(Last+(2*Even+(4*Odd)+Firstvalue));
Integration_trapz=spacing(1)*(length(y)-1)+y(length(y))/2;
Integration=Integration_simp+Integration_trapz
end
    
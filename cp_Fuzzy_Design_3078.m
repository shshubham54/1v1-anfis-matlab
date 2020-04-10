
%By Shubham Sharma ICE-2
%Roll No- 2017UIC3078
%Submitted to Dr Smriti Srivastava
load cpdata.dat;
in=cpdata(:,1:5);
out=cpdata(:,6);
fis=anfis(cpdata);
anfisOut = evalfis(in,fis);
x=[1:70];
plot(x,out,'*r',x,anfisOut,'.b')
legend('Training Data','ANFIS Output')


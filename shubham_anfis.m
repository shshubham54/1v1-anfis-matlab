%By Shubham Sharma ICE-2
%Roll No- 2017UIC3078
%Submitted to Dr Smriti Srivastava

load data.dat;
fis=anfis(data);
Input = data(:,1);
Output=data(:,2);
Outfis = evalfis(Input,fis);
subplot(2,1,1);
plot(Input,Output,'*r',Input,Outfis,'.b')
title('Default ANFIS');
legend('Training Data','ANFIS Output');

% fine tuning of fis by increasing the no of epochs to 50 and and increasing the no of mfs to 5
opt = anfisOptions('InitialFIS',5,'EpochNumber',50);
fis=anfis(data,opt);
Outfis = evalfis(Input,fis);
subplot(2,1,2);
plot(Input,Output,'*r',Input,Outfis,'.b')
title('Increased epoch & mfs ANFIS');
legend('Training Data','ANFIS Output');
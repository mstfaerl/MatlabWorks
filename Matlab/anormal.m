clear; clc;close;
%% Data Generation and Plotting
% x1 = normrnd(3,10,[500,1]);
% x2 = normrnd(10,1,[500,1]);
% Data = [x1 x2];
mu = [5 5]; sigma =[ 10,8;8 10]; n = 1000;
Data = mvnrnd(mu,sigma,n);
size(Data)
xnew1 =[15 20]; xnew2 =[-26 10];
plot(Data(:,1),Data(:,2),'.'); hold on
plot(xnew1(:,1),xnew1(:,2),'r+')
plot(xnew2(:,1),xnew2(:,2),'r+')
axis equal

%% Data Modelling
mu = mean(Data);
% C = cov(Data);
zData = Data - repmat(mu,size(Data,1),1);
top =0;
for i=1:length(zData)
    p = zData(i,:);
    top = top + p' *p;
end
C = top / (size(Data,1)-1);

%% Anormaly Detection 
a1 = xnew1-mu; p = exp(-0.5 * a1 * (C \ a1'));
if a1>0.0133 % DATANIN SINIRINDAN ALINMIÞ BÝR VERÝNÝN P DEÐERÝ
    disp('Normal');
else
    disp('Anormal');
end

a2 = xnew2-mu; p = exp(-0.5 * a2 * (C \ a2'));
if a2>0.0133
    disp('Normal');
else
    disp('Anormal');
end
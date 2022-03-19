clearvars; clc ; close all;  format compact;

disp('Lütfen veri setini seçiniz.')
disp('1.Data (100x3)')
disp('2.Data (120x3)')
disp('3.Data (200x3)')
disp('4.Data (500x3)')
disp('5.Data (500x3)')

%verilerin boyutlarýnýn gösterilmesi amacýyla disp yardýmýyla yazýldý.

datasecim = input('Seçmek istediðiniz veri setini giriniz : ');
data = veriseti(datasecim);

%yukarda belirtilen datalardan hangisini seçeceðimizi belirtiyoruz.
%daha sonra aþaðýda kontrolunu saðlýyoruz her data için ayrý ayrý
%secimlerle iþlemlerimizi yapýyoruz.

if(datasecim == 1)
    
    x = data(:,1:2);
    y = data(:,3);
    A = zeros(1,2);
    B = zeros(1,2);
    sayac1 = 1;
    sayac2 = 1;
    for i = 1 : size(y)
        if(y(i,1) > 0)
            A(sayac1,1:2) = x(i,1:2);
            sayac1 = sayac1 +1;
        else
            B(sayac2,1:2) = x(i,1:2);
            sayac2 = sayac2+1;
        end
    end
    figure(1)
    plot(A(:,1),A(:,2),'o');
    hold on
    grid on
    plot(B(:,1),B(:,2),'*');
    P = [A' B'];
    a = 0;
    b = 1;
    T = [repmat(a,1,length(A)) repmat(b,1,length(B))];
    span = 30 : .05 : 100;
        %figureden sonrasý datayý fonksiyonda göstermemizi saðlar.
        %span ise bu verilerin hangi deðerler arasýnda olduðunu belirtmek
        %için oluþturuldu.
        
        
elseif(datasecim == 2)
    x = data(:,1:2);
    y = data(:,3); 
    A = zeros(1,2);
    B = zeros(1,2);
    sayac1 = 1;
    sayac2 = 1;
    for i = 1 : size(y)
        if(y(i,1) > 0)
            A(sayac1,1:2) = x(i,1:2);
            sayac1 = sayac1 +1;
        else
            B(sayac2,1:2) = x(i,1:2);
            sayac2 = sayac2 +1;
        end
    end
    figure(1)
    plot(A(:,1),A(:,2),'o');
    hold on
    grid on
    plot(B(:,1),B(:,2),'*');
    P = [A' B'];
    a = 0;
    b = 1;
    T = [repmat(a,1,length(A)) repmat(b,1,length(B))];
    span = -1.5 : .005 : 1.5;
elseif(datasecim == 3)
    x = data(:,2:3);
    y = data(:,1);
    sayac1 = 1;
    sayac2 = 1;
    for i = 1 : size(y)
        if(y(i,1) > 0)
            A(sayac1,1:2) = x(i,1:2);
            sayac1 = sayac1 +1;
        else
            B(sayac2,1:2) = x(i,1:2);
            sayac2 = sayac2 +1;
        end
    end
    figure(1)
    plot(A(:,1),A(:,2),'o');
    hold on
    grid on
    plot(B(:,1),B(:,2),'*');
    P = [A' B'];
    a = 0;
    b = 1;
    T = [repmat(a,1,length(A)) repmat(b,1,length(B))];
    span = -1 : .005 : 1;
elseif(datasecim == 4)
    x = data(:,1:2);
    y = data(:,3);
    sayac1 = 1;
    sayac2 = 1;
    for i = 1 : size(y)
        if(y(i,1) > 0)
            A(sayac1,1:2) = x(i,1:2);
            sayac1 = sayac1 +1;
        else
            B(sayac2,1:2) = x(i,1:2);
            sayac2 = sayac2 +1;
        end
    end
    figure(1)
    plot(A(:,1),A(:,2),'o');
    hold on
    grid on
    plot(B(:,1),B(:,2),'*');
    P = [A' B'];
    a = 0;
    b = 1;
    T = [repmat(a,1,length(A)) repmat(b,1,length(B))];
    span = -3 : .005 : 3;
elseif(datasecim == 5)
    x = data(:,1:2);
    y = data(:,3);
    sayac1 = 1;
    sayac2 = 1;
    for i = 1 : size(y)
        if(y(i,1) > 0)
            A(sayac1,1:2) = x(i,1:2);
            sayac1 = sayac1 +1;
        else
            B(sayac2,1:2) = x(i,1:2);
            sayac2 = sayac2 +1;
        end
    end
    figure(1)
    plot(A(:,1),A(:,2),'o');
    hold on
    grid on
    plot(B(:,1),B(:,2),'*');
    P = [A' B'];
    a = 0;
    b = 1;
    T = [repmat(a,1,length(A)) repmat(b,1,length(B))];
    span = -2.5 : .005 : 2.5;
else
    disp('Böyle bir veri setimiz bulunmamaktadýr.')
end

ysakatman = input('YSA katman sayýsýný giriniz : ');
ysamodel = ysa(ysakatman);

% her katman için girilen aktivasyon fonksiyonlarýnýn þeçimini yapar.
if(ysakatman == 1)
    disp('1.Tanh')
    disp('2.Linear')
    disp('3.Sigmoid')
    disp('4.ReLU')
    k1 = input('1.katman için aktivasyon fonksiyonu giriniz : ');
    af1 = aktivfonk(k1);
    ysamodel.layers{1}.transferFcn = af1;
elseif(ysakatman == 2)
    disp('1.Tanh')
    disp('2.Linear')
    disp('3.Sigmoid')
    disp('4.ReLU')
    k1 = input('1.katman için aktivasyon fonksiyonu giriniz : ');
    af1 = aktivfonk(k1);
    ysamodel.layers{1}.transferFcn = af1;
    k2 = input('2.katman için aktivasyon fonksiyonu giriniz : ');
    af2 = aktivfonk(k2);
    ysamodel.layers{2}.transferFcn = af2;
elseif(ysakatman == 3)
    disp('1.Tanh')
    disp('2.Linear')
    disp('3.Sigmoid')
    disp('4.ReLU')
    k1 = input('1.katman için aktivasyon fonksiyonu giriniz : ');
    af1 = aktivfonk(k1);
    ysamodel.layers{1}.transferFcn = af1;
    k2 = input('2.katman için aktivasyon fonksiyonu giriniz : ');
    af2 = aktivfonk(k2);
    ysamodel.layers{2}.transferFcn = af2;
    k3 = input('3.katman için aktivasyon fonksiyonu giriniz : ');
    af3 = aktivfonk(k3);
    ysamodel.layers{3}.transferFcn = af3;
elseif(ysakatman == 4)
    disp('1.Tanh')
    disp('2.Linear')
    disp('3.Sigmoid')
    disp('4.ReLU')
    k1 = input('1.katman için aktivasyon fonksiyonu giriniz : ');
    af1 = aktivfonk(k1);
    ysamodel.layers{1}.transferFcn = af1;
    k2 = input('2.katman için aktivasyon fonksiyonu giriniz : ');
    af2 = aktivfonk(k2);
    ysamodel.layers{2}.transferFcn = af2;
    k3 = input('3.katman için aktivasyon fonksiyonu giriniz : ');
    af3 = aktivfonk(k3);
    ysamodel.layers{3}.transferFcn = af3;
    k4 = input('4.katman için aktivasyon fonksiyonu giriniz : ');
    af4 = aktivfonk(k4);
    ysamodel.layers{4}.transferFcn = af4;
elseif(ysakatman == 5)
    disp('1.Tanh')
    disp('2.Linear')
    disp('3.Sigmoid')
    disp('4.ReLU')
    k1 = input('1.katman için aktivasyon fonksiyonu giriniz : ');
    af1 = aktivfonk(k1);
    ysamodel.layers{1}.transferFcn = af1;
    k2 = input('2.katman için aktivasyon fonksiyonu giriniz : ');
    af2 = aktivfonk(k2);
    ysamodel.layers{2}.transferFcn = af2;
    k3 = input('3.katman için aktivasyon fonksiyonu giriniz : ');
    af3 = aktivfonk(k3);
    ysamodel.layers{3}.transferFcn = af3;
    k4 = input('4.katman için aktivasyon fonksiyonu giriniz : ');
    af4 = aktivfonk(k4);
    ysamodel.layers{4}.transferFcn = af4;
    k5 = input('5.katman için aktivasyon fonksiyonu giriniz : ');
    af5 = aktivfonk(k5);
    ysamodel.layers{5}.transferFcn = af5;
elseif(ysakatman == 6)
    disp('1.Tanh')
    disp('2.Linear')
    disp('3.Sigmoid')
    disp('4.ReLU')
    k1 = input('1.katman için aktivasyon fonksiyonu giriniz : ');
    af1 = aktivfonk(k1);
    ysamodel.layers{1}.transferFcn = af1;
    k2 = input('2.katman için aktivasyon fonksiyonu giriniz : ');
    af2 = aktivfonk(k2);
    ysamodel.layers{2}.transferFcn = af2;
    k3 = input('3.katman için aktivasyon fonksiyonu giriniz : ');
    af3 = aktivfonk(k3);
    ysamodel.layers{3}.transferFcn = af3;
    k4 = input('4.katman için aktivasyon fonksiyonu giriniz : ');
    af4 = aktivfonk(k4);
    ysamodel.layers{4}.transferFcn = af4;
    k5 = input('5.katman için aktivasyon fonksiyonu giriniz : ');
    af5 = aktivfonk(k5);
    ysamodel.layers{5}.transferFcn = af5;
    k6 = input('6.katman için aktivasyon fonksiyonu giriniz : ');
    af6 = aktivfonk(k6);
    ysamodel.layers{6}.transferFcn = af6;
elseif(ysakatman == 7)
    disp('1.Tanh')
    disp('2.Linear')
    disp('3.Sigmoid')
    disp('4.ReLU')
    k1 = input('1.katman için aktivasyon fonksiyonu giriniz : ');
    af1 = aktivfonk(k1);
    ysamodel.layers{1}.transferFcn = af1;
    k2 = input('2.katman için aktivasyon fonksiyonu giriniz : ');
    af2 = aktivfonk(k2);
    ysamodel.layers{2}.transferFcn = af2;
    k3 = input('3.katman için aktivasyon fonksiyonu giriniz : ');
    af3 = aktivfonk(k3);
    ysamodel.layers{3}.transferFcn = af3;
    k4 = input('4.katman için aktivasyon fonksiyonu giriniz : ');
    af4 = aktivfonk(k4);
    ysamodel.layers{4}.transferFcn = af4;
    k5 = input('5.katman için aktivasyon fonksiyonu giriniz : ');
    af5 = aktivfonk(k5);
    ysamodel.layers{5}.transferFcn = af5;
    k6 = input('6.katman için aktivasyon fonksiyonu giriniz : ');
    af6 = aktivfonk(k6);
    ysamodel.layers{6}.transferFcn = af6;
    k7 = input('7.katman için aktivasyon fonksiyonu giriniz : ');
    af7 = aktivfonk(k7);
    ysamodel.layers{7}.transferFcn = af7;
else
    disp('Max katman sayýsý 7 katmandýr.')
end

ysamodel.divideParam.trainRatio = 90/100; %train için ayrýlan data 
ysamodel.divideParam.valRatio   = 5/100;  % validation için ayrýlan data 
ysamodel.divideParam.testRatio  = 5/100;  % test için ayrýlan data 
                                          %100'delik bir dilim þeklinde hesaplanýr.

ysamodel.trainParam.epochs = 50; % iterasyon sayýsý
%ysamodel.trainParam.max_fail = 8;
%ysamodel.trainParam.min_grad = 1e-6;
%ysamodel.trainParam.time = inf;

ogr_kat = input('Öðrenme katsayýsýný giriniz : ');
ysamodel.trainParam.lr = ogr_kat; % lambda öðrenme katsayýsý

reg_kat = input('Regulerizasyon katsayýsýný giriniz : ');
ysamodel.performParam.regularization = reg_kat; % regulerizasyon katsayýsý

[ysamodel,tr,Y,E] = train(ysamodel,P,T); % aðýn train yapýtðý kýsým
%ysamodel = train(ysamodel,P,T);

%bundan sonrasý grafikte classification için gerekli olan grafik ayarlarý
[P1,P2] = meshgrid(span,span);
pp = [P1(:) P2(:)]';
aa = ysamodel(pp);
figure(1)
mesh(P1,P2,reshape(aa,length(span),length(span))-5);
colormap cool
view(2)


















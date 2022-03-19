function net = ysa(hidden) 

%ysa mimarisini bu alanda oluşturuyoruz hidden dediğimiz katman sayısı p1
%p2 p3 diye devam eden ise hücre sayısını belirtir.

switch hidden
    case 1
        p1 = input('1.katman hücre sayısını giriniz: ');
        net = feedforwardnet(p1);
    case 2
        p1 = input('1.katman hücre sayısını giriniz: ');
        p2 = input('2.katman hücre sayısını giriniz: ');
        net = feedforwardnet([p1 p2]);
    case 3
        
        p1 = input('1.katman hücre sayısını giriniz: ');
        p2 = input('2.katman hücre sayısını giriniz: ');
        p3 = input('3.katman hücre sayısını giriniz: ');
        net = feedforwardnet([p1 p2 p3]);     
    case 4
        p1 = input('1.katman hücre sayısını giriniz: ');
        p2 = input('2.katman hücre sayısını giriniz: ');
        p3 = input('3.katman hücre sayısını giriniz: ');
        p4 = input('4.katman hücre sayısını giriniz: ');
        net = feedforwardnet([p1 p2 p3 p4]);
    case 5
        p1 = input('1.katman hücre sayısını giriniz: ');
        p2 = input('2.katman hücre sayısını giriniz: ');
        p3 = input('3.katman hücre sayısını giriniz: ');
        p4 = input('4.katman hücre sayısını giriniz: ');
        p5 = input('5.katman hücre sayısını giriniz: ');
        net = feedforwardnet([p1 p2 p3 p4 p5]);
    case 6
        p1 = input('1.katman hücre sayısını giriniz: ');
        p2 = input('2.katman hücre sayısını giriniz: ');
        p3 = input('3.katman hücre sayısını giriniz: ');
        p4 = input('4.katman hücre sayısını giriniz: ');
        p5 = input('5.katman hücre sayısını giriniz: ');
        p6 = input('6.katman hücre sayısını giriniz: ');
        net = feedforwardnet([p1 p2 p3 p4 p5 p6]);
    case 7
        p1 = input('1.katman hücre sayısını giriniz: ');
        p2 = input('2.katman hücre sayısını giriniz: ');
        p3 = input('3.katman hücre sayısını giriniz: ');
        p4 = input('4.katman hücre sayısını giriniz: ');
        p5 = input('5.katman hücre sayısını giriniz: ');
        p6 = input('6.katman hücre sayısını giriniz: ');
        p7 = input('7.katman hücre sayısını giriniz: ');
        net = feedforwardnet([p1 p2 p3 p4 p5 p6 p7]);
    otherwise
        disp('Hatalı seçim yaptınız.')
end
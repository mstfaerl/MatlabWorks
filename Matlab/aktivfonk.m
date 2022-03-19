function func = aktivfonk(act)
   
%burada da fonksiyonun içinde func deðerimizi tutar func en son fonksiyonunun func
%deðerini döndürür fonksiyon ismi aktivfonk tur karýþtýrýlmamalýdýr bir
%parametresi vardýr.

switch act
    case 1
        func = 'tansig'; % bu komut ile tanjant aktivasyon fonksiyonunu hazýr oluþturur.
    case 2
        func = 'purelin';% bu komut ile lineer aktivasyon fonksiyonunu hazýr oluþturur.
    case 3
        func = 'logsig'; % bu komut ile sigmoid aktivasyon fonksiyonunu hazýr oluþturur.
    case 4
        func = 'poslin'; % bu komut ile RELU aktivasyon fonksiyonunu hazýr oluþturur.
    otherwise
        disp('Hatalý seçim yaptýnýz.')
end
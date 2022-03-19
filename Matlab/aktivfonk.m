function func = aktivfonk(act)
   
%burada da fonksiyonun i�inde func de�erimizi tutar func en son fonksiyonunun func
%de�erini d�nd�r�r fonksiyon ismi aktivfonk tur kar��t�r�lmamal�d�r bir
%parametresi vard�r.

switch act
    case 1
        func = 'tansig'; % bu komut ile tanjant aktivasyon fonksiyonunu haz�r olu�turur.
    case 2
        func = 'purelin';% bu komut ile lineer aktivasyon fonksiyonunu haz�r olu�turur.
    case 3
        func = 'logsig'; % bu komut ile sigmoid aktivasyon fonksiyonunu haz�r olu�turur.
    case 4
        func = 'poslin'; % bu komut ile RELU aktivasyon fonksiyonunu haz�r olu�turur.
    otherwise
        disp('Hatal� se�im yapt�n�z.')
end
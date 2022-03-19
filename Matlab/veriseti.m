function dataset = veriseti(datasec) 

%verilerin se�ildi�i fonksiyon load ile dosyay� kendi dizin dosyas�ndan
%�ekip daha sonra dataset i�ine atar fonksiyon en son datay� d�nderir 

switch datasec
    case 1
        FileName   = 'data1.txt';
        FolderName = 'C:\Users\m07er\Documents\matlabdata';
        File       = fullfile(FolderName, FileName);
        dataset = load(File);
    case 2
        FileName   = 'data2.txt';
        FolderName = 'C:\Users\m07er\Documents\matlabdata';
        File       = fullfile(FolderName, FileName);
        dataset = load(File);
    case 3
        FileName   = 'data3.txt';
        FolderName = 'C:\Users\m07er\Documents\matlabdata';
        File       = fullfile(FolderName, FileName);
        dataset = load(File);
    case 4
        FileName   = 'data4.txt';
        FolderName = 'C:\Users\m07er\Documents\matlabdata';
        File       = fullfile(FolderName, FileName);
        dataset = load(File);
    case 5
        FileName   = 'data5.txt';
        FolderName = 'C:\Users\m07er\Documents\matlabdata';
        File       = fullfile(FolderName, FileName);
        dataset = load(File);
    otherwise
        disp('Hatal� se�im yapt�n�z.')
end
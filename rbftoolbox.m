% Contoh 2. Interpolasi dengan Toolbox Matlab Untuk jaringan RBF
% Untuk contoh ini selesaikan menggunakan toolbox matlab yang tersedia di
% matlab.

clc;
clear;

x = [0 1 2 3 4 5] % Data masukan
f = [-7 -3 6 25 62 129]; % Keluaran target
msetarget = 0.0;
sebaran = 2.0; % Sebaran = 2 x Standar Deviasi
jar = newrb(x,f,msetarget,sebaran); % Bentuk jaringan RBF
xUji = [0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5]; % Data Uji
fUji = sim(jar,xUji) % Hitung hasil uji

% Side note : Untuk memperhalus (smooth) kurva gunakan nilai sebaran yang
% lebih besar lagi.


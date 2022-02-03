clc;
clear;
x = [0 1 2 3 4 5];          % Data masukan
f = [-7 -3 6 25 62 129];    % Keluaran target
mseTarget = 0.0;
sebaran = 2.0;              % Sebaran = 2 x Standar Deviasi
jar = newrb(x,f,mseTarget,sebaran);     % Bentuk jaringan RBF
xuji = [0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5];   % Data uji
fuji = sim(jar,xuji)        % Hitung hasil uji


% Solusi
% Masalah interpolasi tersebut dapat diselesaikan dengan jaringan RBF,
% dengan menambahkan basis Gaussian dan standar deviasi sd = 1,0. 

% Interpolasi dengan RBF.

clc;
clear
sd = 1                       % Standar Deviasi
x = [0 1 2 3 4 5]            % Vektor input x
f = [-7 -3 6 25 62 129]      % Vektor output f(x)
for i = 1:6                  % mencari matriks G
    for j = 1:6
        G(i,j) = exp(-((x(i)-x(j))^2)/(2*sd^2));
    end;
end;

G = G                        % Matriks fungsi basis G
C = (inv(G))*f'              % Vektor bobot
xuji = [0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5]  % Pola uji
for l = 1:11                 % Untuk 11 masukan uji
    for k = 1:6
        guji(l,k) = exp(-((xuji(l)-x(k))^2)/(2*sd^2));
    end;
end;

fuji = guji*C                % Keluaran uji
figure;
plot(xuji,fuji',x,f);
title('Kurva Interpolasi')
xlabel('x');
ylabel('f(x)');

% Plot Fungsi Basis Radial (RBF)
for n = 1:6
    m = 0;
    for p = 1:51
        fbr(n,p) = exp(-((x(n)-m)^2)/(2*sd^2));
        m = m+0.1;
    end;
end;

t = 1:0.1:6;
figure;     % Plot 6MF Gaussian
plot(t,fbr(1,:),t,fbr(2,:),t,fbr(3,:),t,fbr(4,:),t,fbr(5,:),t,fbr(6,:));
title('Fungsi Basis Radial');
xlabel('x');
ylabel('R(x)');



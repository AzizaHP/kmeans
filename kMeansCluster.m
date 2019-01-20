%Aziza Hayupratiwi - 1301150440

close all; 
clc; 
clear;

%menampilkan persebaran data train
dataTrain = readtable('TrainsetTugas2.txt'); %membuka data dan disimpan pada var dataTrain
dTrain = table2array(dataTrain); %konversi dataTrain dalam bentuk matriks agar dapat dilakukan scatter
x = dTrain(:,1);
y = dTrain(:,2);
figure;
scatter(x,y,'m','filled'); %scatter pesebaran data dengan berwarna magenta

%membangkitkan centroid acak
randd = randperm(size(dTrain,1)); %membangkitkan random permutasi dari dTrain
centroid = dTrain(randd(1:7),1:2); %nilai random dTrain disimpan sebagai centroid
[centroid, cluster] = kMeans(dTrain(:,1:2), centroid); %memanggil fungsi kMeans

figure;
gscatter(dTrain(:,1), dTrain(:,2), cluster);
hold on; %menahan scatter data train agar centroid dapat terlihat secara bersamaan
scatter(centroid(:,1), centroid(:,2), 70 , '+');
hold off;

%menyimpan hasil centroid terbaik
%dikomen karena centroid terbaik sudah ditemukan
%dlmwrite('fCentroid.txt',centroid)
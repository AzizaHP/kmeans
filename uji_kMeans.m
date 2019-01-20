%Aziza Hayupratiwi - 1301150440

close all; 
clc; 
clear;

%menampilkan persebaran data test
dataTest = readtable('TestsetTugas2.txt'); %membuka data dan disimpan pada var dataTest
dTest = table2array(dataTest); %konversi dataTest dalam bentuk matriks agar dapat dilakukan scatter
x = dTest(:,1);
y = dTest(:,2);
scatter(x,y,'k','filled'); %scatter pesebaran data dengan berwarna hitam

dataCentroid = readtable('fCentroid.txt'); %membuka data centroid dan disimpan pada var dataCentroid
centroid = table2array(dataCentroid); %konversi dataCentroid dalam bentuk matriks agar dapat dilakukan scatter

[centroid, cluster] = function_kMeansUji(dTest(:,1:2), centroid); %memanggil fungsi kMeansUji

csvwrite('klasterDataTest.csv',cluster); %menyimpan hasil klaster pada file
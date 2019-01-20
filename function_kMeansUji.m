%Aziza Hayupratiwi - 1301150440
%fungsi ini tidak memperbarui centroid 
%karena data uji menggunakan hasil centroid terbaik dari data train
function [centroid,cluster] = function_kMeansUji(data, centroid)  
    %membuat matriks datax1 cluster yang berisi 0
    %jika cluster ditaruh pada main menu, matriks yg dihasilkan akan 1xdata
    cluster = zeros(size(data,1),1); %membuat matriks datax1 cluster yang berisi 0
    for i = 1:size(data,1)  %dari i=1 sampai banyaknya data (100)
        for j = 1:size(centroid,1) %dari j=1 sampai banyaknya centroid (7)
            %menghitung jarak dengan euclidean distance
            euclid(j) = sqrt((centroid(j,1)-data(i,1))^2 + (centroid(j,2)-data(i,2))^2);
        end
        %menyimpan nilai absolute dari min euclid. 
        %tanda ~ bekerja dgn nilai min euclid sehingga nilai cluster(i)diabaikan
        [~, cluster(i)] = min(euclid);
    end 
end
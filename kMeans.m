%Aziza Hayupratiwi - 1301150440

function [centroid,cluster] = kMeans(data, centroid)
    %membuat matriks datax1 cluster yang berisi 0
    %jika cluster ditaruh pada main menu, matriks yg dihasilkan akan 1xdata
    cluster = zeros(size(data,1),1);
    while 1, %looping hingga tidak ada perubahan centroid
        for i = 1:size(data,1) %dari i=1 sampai banyaknya data (688)
            for j = 1:size(centroid,1) %dari j=1 sampai banyaknya centroid (7)
                %menghitung jarak dengan euclidean distance
                euclid(j) = sqrt((centroid(j,1)-data(i,1))^2 + (centroid(j,2)-data(i,2))^2); 
            end
            %menyimpan nilai absolute dari min euclid. 
            %tanda ~ bekerja dgn nilai min euclid sehingga nilai cluster(i)
            %diabaikan
            [~, cluster(i)] = min(euclid);
        end  
        %memperbarui centroid dengan nilai min SSE
        tmp_cen = centroid;
        centroid = sse(data, cluster, centroid); %memanggil fungsi sse dan disimpan di centroid
        %jika tmp_cen = centroid maka iterasi dihentikan
        if tmp_cen == centroid
            break;
        end
    end
end
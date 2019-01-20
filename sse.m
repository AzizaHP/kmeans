%Aziza Hayupratiwi - 1301150440

function [centroid] = sse(data, cluster, centroid)
%Sum of Squared Errors (SSE) untuk mencari centroid terbaru
    for i=1:size(centroid,1) %dari i=1 sampai banyaknya centroid
        dCentro = data(cluster==i,:); %centroid tiap klaster
        centroid(i,:) = sum(dCentro)/size(dCentro,1); %jumlah jarak centroid ke data/banyaknya jumlah klaster
    end
end
function kerNMat = normalizedKernel(kerMat)
    % function to compute the normalized graph kernel matrix for an array of graphs given the un-normalized one
    n = size(kerMat,1);
    kerNMat = zeros(n, n); 

    for i = 1:n
        for j = 1:n
            denom = sqrt(kerMat(i,i).*kerMat(j,j)); 
            kerNMat(i,j) = kerMat(i,j)./denom;
        end
    end
end
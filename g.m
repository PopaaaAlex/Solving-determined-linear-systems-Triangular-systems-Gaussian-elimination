function [A] = g(A)
%%% Eliminare Gaussian?
% INPUTS:
%   A -- matrice aleatoare de dimensiune (n,n)
% OUTPUTS:
%   A -- matrice superior triunghiular? cu multiplicatorii gaussieni
%        �n triunghiul inferior de dimensiune (n,n)

%% SOLUTION START %%
n =size(A,1);
miu = zeros(n);

for k = 1 : n-1
    for i = k + 1 : n
        miu(i, k) = A(i,k)/A(k,k);
        A(i, k) = miu(i, k);
    end
    for i = k + 1 : n
        for j = k + 1 : n
            A(i, j) = A(i, j) - miu(i, k) *A(k, j);
        end
    end
end

%% SOLUTION END %%
end


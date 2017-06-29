function res = normF2(A)
 
    B = A.^2;
    B = B(:);
    res = sum(B);
	% res = norm(A, 'fro')^2;
end 
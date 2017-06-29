function res = normc(A)

	if size(A, 3) == 1 % matrix 
		B = A.^2;
		C = sqrt(sum(B));
		res = A./repmat(C, size(A,1), 1);
	else 
		% res = normc_tensor(A);
		res = zeros(size(A));
		for i = 1: size(A, 3)
			res(:, :, i) = normc(A(:, :, i));
		end 

	end
end
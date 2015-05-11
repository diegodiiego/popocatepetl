% input: vector vel indexed by vertices.
% output: vector slowness indexed by edges.

function slow = vel2slowness(n,m,q,VEL)
	horXY = (n-1)+(n-1)*(m-1);
	verXY = horXY + n + n*(m-2);
	diag1XY = verXY + 1 + n-2 + (n-1)*(m-2);
	diag2XY = diag1XY + 1 + n-2 + (n-1)*(m-2);
	todo1 = diag2XY*q;
	verXZ = todo1 + n + n*(q-2);
	diag1XZ = verXZ + 1 + n-2 + (n-1)*(q-2);
	diag2XZ = diag1XZ + 1 + n-2 + (n-1)*(q-2);
	todo2 = todo1 + (diag2XZ-todo1)*m;
	diag1ZY = todo2 + 1 + q-2 + (q-1)*(m-2);
	diag2ZY = diag1ZY + 1 + q-2 + (q-1)*(m-2);
	todo3 = todo2 + (diag2ZY-todo2)*n;
	diag1XYZ = (n-1)*(m-1);
	diag2XYZ = 2*(n-1)*(m-1);
	diag3XYZ = 3*(n-1)*(m-1);
	diag4XYZ = 4*(n-1)*(m-1);
	
	L = todo3 + 4*(n-1)*(m-1)*(q-1);
	
	slow = zeros(1,L);
	
	% XY
	for k=0:q-1
		for j=0:m-1
			for i=1:n-1
				indexHORXY = arista(n,m,q,i + j*n + k*n*m,i+1 + j*n  + k*n*m);
				slow(indexHORXY) = 2/(VEL(i + j*n + k*n*m)+VEL(i+1 + j*n + k*n*m));
			end
		end
	end
	
	for k=0:q-1
		for j=0:m-2
			for i=1:n
				indexVERXY = arista(n,m,q,i + j*n + k*n*m,i+n + j*n  + k*n*m);
				slow(indexVERXY) = 2/(VEL(i + j*n + k*n*m)+VEL(i+n + j*n + k*n*m));
			end
		end
	end
	
	for k=0:q-1
		for j=0:m-2
			for i=1:n-1
				indexDIAG1XY = arista(n,m,q, i + j*n + k*n*m, i+n+1 + j*n + k*n*m);
				slow(indexDIAG1XY) = 2/(VEL(i + j*n + k*n*m)+VEL(i+n+1 + j*n + k*n*m));
				
				indexDIAG2XY = arista(n,m,q, i+1 + j*n + k*n*m, i+n + j*n + k*n*m);
				slow(indexDIAG2XY) = 2/(VEL(i+1 + j*n + k*n*m)+VEL(i+n + j*n + k*n*m));
			end
		end
	end
	
	%XZ
	for k=0:q-2
		for j=0:m-1
			for i=1:n
				indexVERXZ = arista(n,m,q,i + k*n*m + j*n, i+n*m + k*n*m + j*n);
				slow(indexVERXZ) = 2/(VEL(i + k*n*m + j*n)+VEL(i+n*m + k*n*m + j*n));
			end
		end
	end
	
	for k=0:q-2
		for j=0:m-1
			for i=1:n-1
				indexDIAG1XZ = arista(n,m,q, i + j*n + k*n*m, i+n*m+1 + j*n + k*n*m);
				slow(indexDIAG1XZ) = 2/(VEL(i + j*n + k*n*m)+VEL(i+n*m+1 + j*n + k*n*m));
				
				indexDIAG2XZ = arista(n,m,q, i+1 + j*n + k*n*m, i+n*m + j*n + k*n*m);
				slow(indexDIAG2XZ) = 2/(VEL(i+1 + j*n + k*n*m)+VEL(i+n*m + j*n + k*n*m));
			end
		end
	end
	
	%ZY
	for k=0:q-2
		for j=0:m-2
			for i=0:n-1
				indexDIAG1ZY = arista(n,m,q,1+k*n*m + j*n + i, 1+(k+1)*n*m+n + j*n + i);
				slow(indexDIAG1ZY) = 2/(VEL(1+k*n*m + j*n + i)+VEL(1+(k+1)*n*m+n + j*n + i));
				
				indexDIAG2ZY = arista(n,m,q,1+k*n*m+n + j*n + i, 1+(k+1)*n*m + j*n + i);
				slow(indexDIAG2ZY) = 2/(VEL(1+k*n*m+n + j*n + i)+VEL(1+(k+1)*n*m + j*n + i));
			end
		end
	end
	
	%diagonales
	for k=0:q-2
		for j=0:m-2
			for i=1:n-1
				indexDIAG1XYZ = arista(n,m,q, i + j*n + k*m*n, i+n*m+1+n + j*n + k*m*n);
				slow(indexDIAG1XYZ) = 2/(VEL(i + j*n + k*m*n)+ ...
				VEL(i+n*m+1+n + j*n + k*m*n));
				
				indexDIAG2XYZ = arista(n,m,q, i+n + j*n + k*m*n, i+n*m+1 + j*n + k*m*n);
				slow(indexDIAG2XYZ) = 2/(VEL(i+n + j*n + k*m*n)+ ...
				VEL(i+n*m+1 + j*n + k*m*n));
				
				indexDIAG3XYZ = arista(n,m,q, i+n+1 + j*n + k*m*n, i+n*m + j*n + k*m*n);
				slow(indexDIAG3XYZ) = 2/(VEL(i+n+1 + j*n + k*m*n)+ ...
				VEL(i+n*m + j*n + k*m*n));
				
				indexDIAG4XYZ = arista(n,m,q, i+1 + j*n + k*m*n, i+n*m+n + j*n + k*m*n);
				slow(indexDIAG4XYZ) = 2/(VEL(i+1 + j*n + k*m*n)+ ...
				VEL(i+n*m+n + j*n + k*m*n));
			end
		end
	end
end
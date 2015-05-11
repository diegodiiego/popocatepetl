function L = numberEdges(n,m,q)
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
	
end
% devuelve gridvel (que es un plano en xy en corte q, con modelo de velocidades) en la malla en nxm.
function piso = gridvel2integer(gridvel,n,m,q)
	lgrid = length(gridvel(:,1));
	piso = zeros(lgrid,2);
	for i=1:lgrid
		piso(i,1) = i + (q-1)*m*n;
		piso(i,2) = gridvel(i,3);
	end
end
% devuelve la malla de rectángulos rxl en coordenadas XYZZ.
% maxmin está en coordenadas XYZ2origin.

function [grid,n,m] = gridinplane(maxmin,r,l)
	ly = lineab(maxmin(2,2),maxmin(1,2),l);
	lx = lineab(maxmin(2,1),maxmin(1,1),r);
	lengthx = length(lx);
	lengthy = length(ly);
	grid = zeros(lengthx*lengthy,2);
	for i=1:lengthy
		for j=1:lengthx
			grid((i-1)*lengthx + j,1) = lx(j);
			grid((i-1)*lengthx + j,2) = ly((lengthy+1)-i);
		end
	end
	n = lengthx;
	m = lengthy;
end
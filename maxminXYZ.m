% printf('%.46f\n', [x,y,z])

% devuelve el máximo y mínimo de x,y & z en vectores columna:
% [maxmin] = [x max, y max, z max]
% 			 [x min, y min, z min]

function maxmin = maxminXYZ(XYZ)
	[maxX, i] = max(XYZ(1,:)); 
	[minX, j] = min(XYZ(1,:));
	x = [XYZ(1,i);XYZ(1,j)];
	
	[maxY, i] = max(XYZ(2,:)); 
	[minY, j] = min(XYZ(2,:));
	y = [XYZ(2,i);XYZ(2,j)];
	
	[maxZ, i] = max(XYZ(3,:)); 
	[minZ, j] = min(XYZ(3,:));
	z = [XYZ(3,i);XYZ(3,j)];
	
	maxmin = [x,y,z];
end
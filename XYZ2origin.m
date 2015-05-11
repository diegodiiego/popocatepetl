% toma puntos en XYZ (una caja) y mapea el plano xy al origen.
% conserva escala, sólo traslada.

function XYZZ = XYZ2origin(XYZ)
	maxmin = maxminXYZ(XYZ);
	XYZZ(1,:) = XYZ(1,:)-maxmin(2,1);
	XYZZ(2,:) = XYZ(2,:)-maxmin(2,2);
	XYZZ(3,:) = XYZ(3,:);
end
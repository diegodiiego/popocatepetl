% línea a--b con puntos cada r unidades
function l = lineab(a,b,r)
	lengthl = abs(a-b);
	pts = floor(lengthl/r);
	for i=1:pts
		l(i) = r*i;
	end
end
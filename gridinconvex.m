% devuelve la parte de la malla que está dentro del convexo en P.
% g es grid = gridinplane(maxmin,r,l)
% P y g están en coordenadas XYZ2origin

function gg = gridinconvex(P,g)
	P = [P(1,:);P(2,:)];
	P = P';
	in = inhull(g,P);
	
	index = find(in);
	li = length(index);
	gg = zeros(li,2);
	for i=1:li
 		j = index(i);
 		gg(i,:) = g(j,:);
	end
end
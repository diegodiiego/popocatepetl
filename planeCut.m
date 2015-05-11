function P = planeCut(XYZ,z)
	P = [1;1;1];
	for i=1:length(XYZ)
		if XYZ(3,i) == z
			P = [P,XYZ(:,i)];
		end
	end
	P(:,1) = [];
end
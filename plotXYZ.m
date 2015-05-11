	
	fid=fopen('purec.xyz');XYZ=fscanf(fid,'%f %f %f',[3 Inf]);fclose(fid);
	XYZZ = XYZ2origin(XYZ); maxmin = maxminXYZ(XYZZ);
	P = planeCut(XYZZ,4230);
	r=0.004;l=r;
	grid = gridinplane(maxmin,r,l);
	gg = gridinconvex(P,grid);
	figure;plot(gg(:,1),gg(:,2),'b*');hold on;plot(P(1,:),P(2,:),'r*');legend('r,l=0.004','z=4230');hold off
	vel = 2;
	gridvel = convhull2vel(P,grid,vel);
	piso = gridvel2integer(gridvel,n,m,q);
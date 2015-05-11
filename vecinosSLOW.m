function f = vecinosSLOW(r,l,p,SLOW,u)
	n = length(r) + 1;
	m = length(l) + 1;
	q = length(p) + 1;
	v = length(VEL); % v = n*m*q
	
	w = mod(u,m*n);
	
	% pared 1
	if u <= m*n
		if 1 == mod(u,n)
			if u == 1
				% punto 1
				f = zeros(7,2);
				
				f(1,1) = u+1;
				f(1,2) = r(u)*SLOW(arista(n,m,q,u,u+1));
				%SLOW(arista(n,m,q,u,u+1));
						
				f(2,1) = u+n;
				f(2,2) = l(u)SLOW(arista(n,m,q,u,u+n));
				%*SLOW(arista(n,m,q,u,u+n));
						
				f(3,1) = u + n*m;
				f(3,2) = p(u)*SLOW(arista(n,m,q,u,u+n*m));
				%SLOW(arista(n,m,q,u,u+n*m));
						
				f(4,1) = u + 1 + n;
				f(4,2) = sqrt(r(u)^2 + l(u)^2)*SLOW(arista(n,m,q,u,u+1+n));
						
				f(5,1) = u + 1 + n*m;
				f(5,2) = sqrt(r(u)^2 + p(u)^2)*SLOW(arista(n,m,q,u,u+1+n*m));
						
				f(6,1) = u + n + n*m;
				f(6,2) = sqrt(p(u)^2 + l(u)^2)*SLOW(arista(n,m,q,u,u+n+n*m));
						
				f(7,1) = u + 1 + n + n*m;
				f(7,2) = sqrt(l(u)^2 + r(u)^2+p(u)^2)*SLOW(arista(n,m,q,u,u+1+n+n*m));
			elseif u == n*(m-1) + 1
				% punto 3
				f = zeros(7,2);
				
				f(1,1) = u-n;
				f(1,2) = l(m-1)*SLOW(arista(n,m,q,u,u-n));
						
				f(2,1) = u+1;
				f(2,2) = r(1)*SLOW(arista(n,m,q,u,u+1));
						
				f(3,1) = u + n*m;
				f(3,2) = p(1)*SLOW(arista(n,m,q,u,u+n*m));
						
				f(4,1) = u + 1 - n;
				f(4,2) = sqrt(r(1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u+1-n));
						
				f(5,1) = u + 1 + n*m;
				f(5,2) = sqrt(r(1)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u+1+n*m));
						
				f(6,1) = u - n + n*m;
				f(6,2) = sqrt(p(1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-n+n*m));
						
				f(7,1) = u + 1 - n + n*m;
				f(7,2) = sqrt(l(m-1)^2 + r(1)^2+p(1)^2)*SLOW(arista(n,m,q,u,u+1-n+n*m));
			else
				% arista 1
				f = zeros(11,2);
				
				f(1,1) = u-n;
				f(1,2) = l((u-1)/n)*SLOW(arista(n,m,q,u,u-n));
						
				f(2,1) = u+1;
				f(2,2) = r(1)*SLOW(arista(n,m,q,u,u+1));
						
				f(3,1) = u + n*m;
				f(3,2) = p(1)*SLOW(arista(n,m,q,u,u+n*m));
						
				f(4,1) = u + 1 - n;
				f(4,2) = sqrt(r(1)^2 + l((u-1)/n)^2)*SLOW(arista(n,m,q,u,u+1-n));
						
				f(5,1) = u + 1 + n*m;
				f(5,2) = sqrt(r(1)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u+1+n*m));
						
				f(6,1) = u - n + n*m;
				f(6,2) = sqrt(p(1)^2 + l((u-1)/n)^2)*SLOW(arista(n,m,q,u,u-n+n*m));
						
				f(7,1) = u + 1 - n + n*m;
				f(7,2) = sqrt(l((u-1)/n)^2 + r(1)^2+p(1)^2)*SLOW(arista(n,m,q,u,u+1-n+n*m));
				
				f(8,1) = u+n;
				f(8,2) = l(((u-1)/n)+1)*SLOW(arista(n,m,q,u,u+n));
						
				f(9,1) = u + 1 + n;
				f(9,2) = sqrt(r(1)^2 + l(((u-1)/n)+1)^2)*SLOW(arista(n,m,q,u,u+1+n));
						
				f(10,1) = u + n + n*m;
				f(10,2) = sqrt(p(1)^2 + l(((u-1)/n)+1)^2)*SLOW(arista(n,m,q,u,u+n+n*m));
						
				f(11,1) = u + 1 + n + n*m;
				f(11,2) = sqrt(l(((u-1)/n)+1)^2 + r(1)^2+p(1)^2)*SLOW(arista(n,m,q,u,u+1+n+n*m));
			end
			
		elseif and((u ~= 1) , (u <= n))
			if u == n
				% punto 2
				f = zeros(7,2);
			
				f(1,1) = u-1;
				f(1,2) = r(n-1)*SLOW(arista(n,m,q,u,u-1));
						
				f(2,1) = u+n;
				f(2,2) = l(1)*SLOW(arista(n,m,q,u,u+n));
						
				f(3,1) = u + n*m;
				f(3,2) = p(1)*SLOW(arista(n,m,q,u,u+n*m));
					
				f(4,1) = u - 1 + n;
				f(4,2) = sqrt(r(n-1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u-1+n));
						
				f(5,1) = u - 1 + n*m;
				f(5,2) = sqrt(r(n-1)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u-1+n*m));
						
				f(6,1) = u + n + n*m;
				f(6,2) = sqrt(p(1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+n+n*m));
					
				f(7,1) = u - 1 + n + n*m;
				f(7,2) = sqrt(l(1)^2 + r(n-1)^2+p(1)^2)*SLOW(arista(n,m,q,u,u-1+n+n*m));
			else
				% arista 2
				
				f = zeros(11,2);
				
				f(1,1) = u+n;
				f(1,2) = l(1)*SLOW(arista(n,m,q,u,u+n));
						
				f(2,1) = u+1;
				f(2,2) = r(u)*SLOW(arista(n,m,q,u,u+1));
						
				f(3,1) = u + n*m;
				f(3,2) = p(1)*SLOW(arista(n,m,q,u,u+n*m));
						
				f(4,1) = u + 1 + n;
				f(4,2) = sqrt(r(u)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+1+n));
						
				f(5,1) = u + 1 + n*m;
				f(5,2) = sqrt(r(u)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u+1+n*m));
						
				f(6,1) = u + n + n*m;
				f(6,2) = sqrt(p(1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+n+n*m));
						
				f(7,1) = u + 1 + n + n*m;
				f(7,2) = sqrt(l(1)^2 + r(u)^2+p(1)^2)*SLOW(arista(n,m,q,u,u+1+n+n*m));
				
				f(8,1) = u-1;
				f(8,2) = r(u-1)*SLOW(arista(n,m,q,u,u-1));
						
				f(9,1) = u - 1 + n;
				f(9,2) = sqrt(r(u-1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u-1+n));
						
				f(10,1) = u - 1 + n + n*m;
				f(10,2) = sqrt(l(1)^2 + r(u-1)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u-1+n+n*m));
						
				f(11,1) = u - 1 + n*m;
				f(11,2) = sqrt(r(u-1)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u-1+n*m));
			end
			
		elseif and((u ~= n) , (0 == mod(u,n)))
			if u == m*n
				% punto 4
				f = zeros(7,2);
			
				f(1,1) = u-1;
				f(1,2) = r(n-1)*SLOW(arista(n,m,q,u,u-1));
						
				f(2,1) = u-n;
				f(2,2) = l(m-1)*SLOW(arista(n,m,q,u,u-n));
						
				f(3,1) = u + n*m;
				f(3,2) = p(1)*SLOW(arista(n,m,q,u,u+n*m));
					
				f(4,1) = u - 1 - n;
				f(4,2) = sqrt(r(n-1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-1-n));
						
				f(5,1) = u - 1 + n*m;
				f(5,2) = sqrt(r(n-1)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u-1+n*m));
						
				f(6,1) = u - n + n*m;
				f(6,2) = sqrt(p(1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-n+n*m));
					
				f(7,1) = u - 1 - n + n*m;
				f(7,2) = sqrt(l(m-1)^2 + r(n-1)^2+p(1)^2)*SLOW(arista(n,m,q,u,u-1-n+n*m));
			else
				% arista 3
				
				f = zeros(11,2);
				
				f(1,1) = u+n;
				f(1,2) = l((u/n))*SLOW(arista(n,m,q,u,u+n));
						
				f(2,1) = u-1;
				f(2,2) = r(n-1)*SLOW(arista(n,m,q,u,u-1));
						
				f(3,1) = u + n*m;
				f(3,2) = p(1)*SLOW(arista(n,m,q,u,u+n*m));
						
				f(4,1) = u - 1 + n;
				f(4,2) = sqrt(r(n-1)^2 + l((u/n))^2)*SLOW(arista(n,m,q,u,u-1+n));
						
				f(5,1) = u - 1 + n*m;
				f(5,2) = sqrt(r(n-1)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u-1+n*m));
						
				f(6,1) = u - n + n*m;
				f(6,2) = sqrt(p(1)^2 + l((u/n)-1)^2)*SLOW(arista(n,m,q,u,u-n+n*m));
						
				f(7,1) = u - 1 + n + n*m;
				f(7,2) = sqrt(l((u/n))^2 + r(n-1)^2+p(1)^2)*SLOW(arista(n,m,q,u,u-1+n+n*m));
				
				f(8,1) = u+n;
				f(8,2) = l(u/n)*SLOW(arista(n,m,q,u,u+n));
						
				f(9,1) = u - 1 - n;
				f(9,2) = sqrt(r(n-1)^2 + l((u/n)-1)^2)*SLOW(arista(n,m,q,u,u-1-n));
						
				f(10,1) = u - 1 - n + n*m;
				f(10,2) = sqrt(l((u/n)-1)^2 + r(n-1)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u-1-n+n*m));
						
				f(11,1) = u + n + n*m;
				f(11,2) = sqrt(l(u/n)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u+n+n*m));
			end
			
		elseif and((u ~= m*n) , (u > n*(m-1)+1))
			% arista 4
			
			f = zeros(11,2);
			
			f(1,1) = u-n;
			f(1,2) = l(m-1)*SLOW(arista(n,m,q,u,u-n));
					
			f(2,1) = u+1;
			f(2,2) = r(u-(m-1)*n)*SLOW(arista(n,m,q,u,u+1));
					
			f(3,1) = u + n*m;
			f(3,2) = p(1)*SLOW(arista(n,m,q,u,u+n*m));
					
			f(4,1) = u + 1 - n;
			f(4,2) = sqrt(r(u-(m-1)*n)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u+1-n));
					
			f(5,1) = u + 1 + n*m;
			f(5,2) = sqrt(r(u-(m-1)*n)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u+1+n*m));
					
			f(6,1) = u - n + n*m;
			f(6,2) = sqrt(p(1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-n+n*m));
					
			f(7,1) = u + 1 - n + n*m;
			f(7,2) = sqrt(l(m-1)^2 + r(u-(m-1)*n)^2+p(1)^2)*SLOW(arista(n,m,q,u,u+1-n+n*m));
			
			f(8,1) = u-1;
			f(8,2) = r(u-(m-1)*n-1)*SLOW(arista(n,m,q,u,u-1));
					
			f(9,1) = u - 1 - n;
			f(9,2) = sqrt(r(u-(m-1)*n-1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-1-n));
					
			f(10,1) = u - 1 - n + n*m;
			f(10,2) = sqrt(l(m-1)^2 + r(u-(m-1)*n-1)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u-1-n+n*m));
					
			f(11,1) = u - 1 + n*m;
			f(11,2) = sqrt(r(u-(m-1)*n-1)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u-1+n*m));
		else
			% interior de pared 1
			
			x = mod(u,n);
			y = (u-x)/n;
			
			f = zeros(17,2);
			
			f(1,1) = u-n;
			f(1,2) = l(y)*SLOW(arista(n,m,q,u,u-n));
					
			f(2,1) = u+1;
			f(2,2) = r(x)*SLOW(arista(n,m,q,u,u+1));
					
			f(3,1) = u + n*m;
			f(3,2) = p(1)*SLOW(arista(n,m,q,u,u+n*m));
					
			f(4,1) = u + 1 - n;
			f(4,2) = sqrt(r(x)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u+1-n));
					
			f(5,1) = u + 1 + n*m;
			f(5,2) = sqrt(r(x)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u+1+n*m));
					
			f(6,1) = u - n + n*m;
			f(6,2) = sqrt(p(1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u-n+n*m));
					
			f(7,1) = u + 1 - n + n*m;
			f(7,2) = sqrt(l(y)^2 + r(x)^2+p(1)^2)*SLOW(arista(n,m,q,u,u+1-n+n*m));
			
			f(8,1) = u-1;
			f(8,2) = r(x-1)*SLOW(arista(n,m,q,u,u-1));
					
			f(9,1) = u - 1 - n;
			f(9,2) = sqrt(r(x-1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u-1-n));
					
			f(10,1) = u - 1 - n + n*m;
			f(10,2) = sqrt(l(y)^2 + r(x-1)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u-1-n+n*m));
					
			f(11,1) = u - 1 + n*m;
			f(11,2) = sqrt(r(x-1)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u-1+n*m));
			
			f(12,1) = u+n;
			f(12,2) = l(y+1)*SLOW(arista(n,m,q,u,u+n));
			
			f(13,1) = u + 1 + n;
			f(13,2) = sqrt(r(x)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u+1+n));
			
			f(14,1) = u + n + n*m;
			f(14,2) = sqrt(p(1)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u+n+n*m));
					
			f(15,1) = u + 1 + n + n*m;
			f(15,2) = sqrt(l(y+1)^2 + r(x)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u+1+n+n*m));
			
			f(16,1) = u - 1 + n;
			f(16,2) = sqrt(r(x-1)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u-1+n));
					
			f(17,1) = u - 1 + n + n*m;
			f(17,2) = sqrt(l(y+1)^2 + r(x-1)^2 + p(1)^2)*SLOW(arista(n,m,q,u,u-1+n+n*m));
		end
	
	% pared 2
	elseif 1 == mod(w,n)
		if w == 1
			if u == (q-1)*m*n +1
				% punto 5
				f = zeros(7,2);
				
				f(1,1) = u+1;
				f(1,2) = r(1)*SLOW(arista(n,m,q,u,u+1));
						
				f(2,1) = u+n;
				f(2,2) = l(1)*SLOW(arista(n,m,q,u,u+n));
						
				f(3,1) = u - n*m;
				f(3,2) = p(q-1)*SLOW(arista(n,m,q,u,u-n*m));
						
				f(4,1) = u + 1 + n;
				f(4,2) = sqrt(r(1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+1+n));
						
				f(5,1) = u + 1 - n*m;
				f(5,2) = sqrt(r(1)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u+1-n*m));
						
				f(6,1) = u + n - n*m;
				f(6,2) = sqrt(p(q-1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+n-n*m));
						
				f(7,1) = u + 1 + n - n*m;
				f(7,2) = sqrt(l(1)^2 + r(1)^2+p(q-1)^2)*SLOW(arista(n,m,q,u,u+1+n-n*m));
			else
				% arista 5
				z = (u-1)/(m*n);
				
				f = zeros(11,2);
			
				f(1,1) = u+n;
				f(1,2) = l(1)*SLOW(arista(n,m,q,u,u+n));
					
				f(2,1) = u+1;
				f(2,2) = r(1)*SLOW(arista(n,m,q,u,u+1));
					
				f(3,1) = u + n*m;
				f(3,2) = p(z+1)*SLOW(arista(n,m,q,u,u+n*m));
					
				f(4,1) = u + 1 + n;
				f(4,2) = sqrt(r(1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+1+n));
					
				f(5,1) = u + 1 + n*m;
				f(5,2) = sqrt(r(1)^2 + p(z+1)^2)*SLOW(arista(n,m,q,u,u+1+n*m));
					
				f(6,1) = u + n + n*m;
				f(6,2) = sqrt(p(z+1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+n+n*m));
					
				f(7,1) = u + 1 + n + n*m;
				f(7,2) = sqrt(l(1)^2 + r(1)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u+1+n+n*m));
			
				f(8,1) = u-n*m;
				f(8,2) = p(z)*SLOW(arista(n,m,q,u,u-n*m));
					
				f(9,1) = u + 1 - n*m;
				f(9,2) = sqrt(r(1)^2 + p(z)^2)*SLOW(arista(n,m,q,u,u-n*m));
					
				f(10,1) = u + 1 + n - n*m;
				f(10,2) = sqrt(l(1)^2 + r(1)^2 + p(z)^2)*SLOW(arista(n,m,q,u,u+1+n-n*m));
					
				f(11,1) = u + n - n*m;
				f(11,2) = sqrt(p(z)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+n-n*m));
			end
		elseif w == n*(m-1) + 1
			if u == m*n*q - (n-1)
				% punto 7
				f = zeros(7,2);
				
				f(1,1) = u+1;
				f(1,2) = r(1)*SLOW(arista(n,m,q,u,u+1));
						
				f(2,1) = u-n;
				f(2,2) = l(m-1)*SLOW(arista(n,m,q,u,u-n));
						
				f(3,1) = u - n*m;
				f(3,2) = p(q-1)*SLOW(arista(n,m,q,u,u-n*m));
						
				f(4,1) = u + 1 - n;
				f(4,2) = sqrt(r(1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u+1-n));
						
				f(5,1) = u + 1 - n*m;
				f(5,2) = sqrt(r(1)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u+1-n*m));
						
				f(6,1) = u - n - n*m;
				f(6,2) = sqrt(p(q-1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-n-n*m));
						
				f(7,1) = u + 1 - n - n*m;
				f(7,2) = sqrt(l(m-1)^2 + r(1)^2+p(q-1)^2)*SLOW(arista(n,m,q,u,u+1-n-n*m));
			else
				% arista 7
				z = (u-n*(m-1)-1)/(m*n);
				
				f = zeros(11,2);
			
				f(1,1) = u-n;
				f(1,2) = l(m-1)*SLOW(arista(n,m,q,u,u-n));
					
				f(2,1) = u+1;
				f(2,2) = r(1)*SLOW(arista(n,m,q,u,u+1));
					
				f(3,1) = u + n*m;
				f(3,2) = p(z+1)*SLOW(arista(n,m,q,u,u+n*m));
					
				f(4,1) = u + 1 - n;
				f(4,2) = sqrt(r(1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u+1-n));
					
				f(5,1) = u + 1 + n*m;
				f(5,2) = sqrt(r(1)^2 + p(z+1)^2)*SLOW(arista(n,m,q,u,u+1+n*m));
					
				f(6,1) = u - n + n*m;
				f(6,2) = sqrt(p(z+1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-n+n*m));
					
				f(7,1) = u + 1 - n + n*m;
				f(7,2) = sqrt(l(m-1)^2 + r(1)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u+1-n+n*m));
			
				f(8,1) = u-n*m;
				f(8,2) = p(z)*SLOW(arista(n,m,q,u,u-n*m));
					
				f(9,1) = u + 1 - n*m;
				f(9,2) = sqrt(r(1)^2 + p(z)^2)*SLOW(arista(n,m,q,u,u+1-n*m));
					
				f(10,1) = u + 1 - n - n*m;
				f(10,2) = sqrt(l(m-1)^2 + r(1)^2 + p(z)^2)*SLOW(arista(n,m,q,u,u+1-n-n*m));
					
				f(11,1) = u - n - n*m;
				f(11,2) = sqrt(p(z)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-n-n*m));
			end
		elseif 1 == mod(w,n)
			% arista 11
			y = (w-1)/(n);
			
			f = zeros(11,2);
			
			f(1,1) = u-n;
			f(1,2) = l(y)*SLOW(arista(n,m,q,u,u-n));
					
			f(2,1) = u+1;
			f(2,2) = r(1)*SLOW(arista(n,m,q,u,u+1));
					
			f(3,1) = u - n*m;
			f(3,2) = p(q-1)*SLOW(arista(n,m,q,u,u-n*m));
					
			f(4,1) = u + 1 - n;
			f(4,2) = sqrt(r(1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u+1-n));
					
			f(5,1) = u + 1 - n*m;
			f(5,2) = sqrt(r(1)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u+1-n*m));
					
			f(6,1) = u - n - n*m;
			f(6,2) = sqrt(p(q-1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u-n-n*m));
					
			f(7,1) = u + 1 - n - n*m;
			f(7,2) = sqrt(l(y)^2 + r(1)^2+p(q-1)^2)*SLOW(arista(n,m,q,u,u+1-n-n*m));
			
			f(8,1) = u+n;
			f(8,2) = l(y+1)*SLOW(arista(n,m,q,u,u+n));
					
			f(9,1) = u + 1 + n;
			f(9,2) = sqrt(r(1)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u+1+n));
					
			f(10,1) = u + n - n*m;
			f(10,2) = sqrt(p(q-1)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u+n-n*m));
					
			f(11,1) = u + 1 + n - n*m;
			f(11,2) = sqrt(l(y+1)^2 + r(1)^2+p(q-1)^2)*SLOW(arista(n,m,q,u,u+1+n-n*m));
		else
			% interior pared 2
			y = (w-1)/(n);
			z = (u-w)/(m*n);
			
			f = zeros(17,2);
			
			f(1,1) = u-n;
			f(1,2) = l(y)*SLOW(arista(n,m,q,u,u-n));
					
			f(2,1) = u+1;
			f(2,2) = r(1)*SLOW(arista(n,m,q,u,u+1));
					
			f(3,1) = u - n*m;
			f(3,2) = p(z)*SLOW(arista(n,m,q,u,u-n*m));
					
			f(4,1) = u + 1 - n;
			f(4,2) = sqrt(r(1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u+1-n));
					
			f(5,1) = u + 1 - n*m;
			f(5,2) = sqrt(r(1)^2 + p(z)^2)*SLOW(arista(n,m,q,u,u+1-n*m));
					
			f(6,1) = u - n - n*m;
			f(6,2) = sqrt(p(z)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u-n-n*m));
					
			f(7,1) = u + 1 - n - n*m;
			f(7,2) = sqrt(l(y)^2 + r(1)^2+p(z)^2)*SLOW(arista(n,m,q,u,u+1-n-n*m));
			
			f(8,1) = u+n;
			f(8,2) = l(y+1)*SLOW(arista(n,m,q,u,u+n));
					
			f(9,1) = u + 1 + n;
			f(9,2) = sqrt(r(1)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u+1+n));
					
			f(10,1) = u + n - n*m;
			f(10,2) = sqrt(p(z)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u+n-n*m));
					
			f(11,1) = u + 1 + n - n*m;
			f(11,2) = sqrt(l(y+1)^2 + r(1)^2+p(z)^2)*SLOW(arista(n,m,q,u,u+1+n-n*m));
			
			f(12,1) = u + n*m;
			f(12,2) = p(z+1)*SLOW(arista(n,m,q,u,u+n*m));
			
			f(13,1) = u + 1 + n*m;
			f(13,2) = sqrt(r(1)^2 + p(z+1)^2)*SLOW(arista(n,m,q,u,u+1+n*m));
					
			f(14,1) = u - n + n*m;
			f(14,2) = sqrt(p(z+1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u-n+n*m));
					
			f(15,1) = u + 1 - n + n*m;
			f(15,2) = sqrt(l(y)^2 + r(1)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u+1-n+n*m));
			
			f(16,1) = u + n + n*m;
			f(16,2) = sqrt(p(z+1)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u+n+n*m));
					
			f(17,1) = u + 1 + n + n*m;
			f(17,2) = sqrt(l(y+1)^2 + r(1)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u+1+n+n*m));
		end
		
	% pared 3
	elseif u > (q-1)*m*n + 1
		if and(w <= n, w ~=0 )
			if w == n
				% punto 6
				f = zeros(7,2);
				
				f(1,1) = u-1;
				f(1,2) = r(n-1)*SLOW(arista(n,m,q,u,u-1));
						
				f(2,1) = u+n;
				f(2,2) = l(1)*SLOW(arista(n,m,q,u,u+n));
						
				f(3,1) = u - n*m;
				f(3,2) = p(q-1)*SLOW(arista(n,m,q,u,u-n*m));
						
				f(4,1) = u - 1 + n;
				f(4,2) = sqrt(r(n-1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u-1+n));
						
				f(5,1) = u - 1 - n*m;
				f(5,2) = sqrt(r(n-1)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u-1-n*m));
						
				f(6,1) = u + n - n*m;
				f(6,2) = sqrt(p(q-1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+n-n*m));
						
				f(7,1) = u - 1 + n - n*m;
				f(7,2) = sqrt(l(1)^2 + r(n-1)^2+p(q-1)^2)*SLOW(arista(n,m,q,u,u-1+n-n*m));
			else
				% arista 10
				
				f = zeros(11,2);
				
				f(1,1) = u+n;
				f(1,2) = l(1)*SLOW(arista(n,m,q,u,u+n));
						
				f(2,1) = u+1;
				f(2,2) = r(w)*SLOW(arista(n,m,q,u,u+1));
						
				f(3,1) = u - n*m;
				f(3,2) = p(q-1)*SLOW(arista(n,m,q,u,u-n*m));
						
				f(4,1) = u + 1 + n;
				f(4,2) = sqrt(r(w)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+1+n));
						
				f(5,1) = u + 1 - n*m;
				f(5,2) = sqrt(r(w)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u+1-n*m));
						
				f(6,1) = u + n - n*m;
				f(6,2) = sqrt(p(q-1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+n-n*m));
						
				f(7,1) = u + 1 + n - n*m;
				f(7,2) = sqrt(l(1)^2 + r(w)^2+p(q-1)^2)*SLOW(arista(n,m,q,u,u+1+n-n*m));
				
				f(8,1) = u-1;
				f(8,2) = r(w-1)*SLOW(arista(n,m,q,u,u-1));
						
				f(9,1) = u - 1 + n;
				f(9,2) = sqrt(r(w-1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u-1+n));
						
				f(10,1) = u - 1 + n - n*m;
				f(10,2) = sqrt(l(1)^2 + r(w-1)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u-1+n-n*m));
						
				f(11,1) = u - 1 - n*m;
				f(11,2) = sqrt(r(w-1)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u-1-n*m));
			end
		elseif and(0 == mod(w,n), u ~= (q-1)*m*n+n)
			if u == n*m*q
				% punto 8
				f = zeros(7,2);
				
				f(1,1) = u-1;
				f(1,2) = r(n-1)*SLOW(arista(n,m,q,u,u-1));
						
				f(2,1) = u-n;
				f(2,2) = l(m-1)*SLOW(arista(n,m,q,u,u-n));
						
				f(3,1) = u - n*m;
				f(3,2) = p(q-1)*SLOW(arista(n,m,q,u,u-n*m));
						
				f(4,1) = u - 1 - n;
				f(4,2) = sqrt(r(n-1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-1-n));
						
				f(5,1) = u - 1 - n*m;
				f(5,2) = sqrt(r(n-1)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u-1-n*m));
						
				f(6,1) = u - n - n*m;
				f(6,2) = sqrt(p(q-1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-n-n*m));
						
				f(7,1) = u - 1 - n - n*m;
				f(7,2) = sqrt(l(m-1)^2 + r(n-1)^2+p(q-1)^2)*SLOW(arista(n,m,q,u,u-1-n-n*m));
			else
				% arista 9
				y = (w)/(n);
			
				f = zeros(11,2);
			
				f(1,1) = u-n;
				f(1,2) = l(y-1)*SLOW(arista(n,m,q,u,u-n));
					
				f(2,1) = u-1;
				f(2,2) = r(n-1)*SLOW(arista(n,m,q,u,u-1));
					
				f(3,1) = u - n*m;
				f(3,2) = p(q-1)*SLOW(arista(n,m,q,u,u-n*m));
					
				f(4,1) = u - 1 - n;
				f(4,2) = sqrt(r(n-1)^2 + l(y-1)^2)*SLOW(arista(n,m,q,u,u-1-n));
					
				f(5,1) = u - 1 - n*m;
				f(5,2) = sqrt(r(n-1)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u-1-n*m));
					
				f(6,1) = u - n - n*m;
				f(6,2) = sqrt(p(q-1)^2 + l(y-1)^2)*SLOW(arista(n,m,q,u,u-n-n*m));
					
				f(7,1) = u - 1 - n - n*m;
				f(7,2) = sqrt(l(y-1)^2 + r(n-1)^2+p(q-1)^2)*SLOW(arista(n,m,q,u,u-1-n-n*m));
			
				f(8,1) = u+n;
				f(8,2) = l(y)*SLOW(arista(n,m,q,u,u+n));
					
				f(9,1) = u - 1 + n;
				f(9,2) = sqrt(r(n-1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u-1+n));
					
				f(10,1) = u + n - n*m;
				f(10,2) = sqrt(p(q-1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u+n-n*m));
					
				f(11,1) = u - 1 + n - n*m;
				f(11,2) = sqrt(l(y)^2 + r(n-1)^2+p(q-1)^2)*SLOW(arista(n,m,q,u,u-1+n-n*m));
			end
		elseif and(w > n*(m-1) + 1, mod(w,n) ~= 0)
			% arista 12
			f = zeros(11,2);
			
			x = w - n*(m-1) - 1;
			
			f(1,1) = u-n;
			f(1,2) = l(m-1)*SLOW(arista(n,m,q,u,u-n));
					
			f(2,1) = u+1;
			f(2,2) = r(x+1)*SLOW(arista(n,m,q,u,u+1));
					
			f(3,1) = u - n*m;
			f(3,2) = p(q-1)*SLOW(arista(n,m,q,u,u-n*m));
					
			f(4,1) = u + 1 - n;
			f(4,2) = sqrt(r(x+1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u+1-n));
					
			f(5,1) = u + 1 - n*m;
			f(5,2) = sqrt(r(x+1)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u+1-n*m));
					
			f(6,1) = u - n - n*m;
			f(6,2) = sqrt(p(q-1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-n-n*m));
					
			f(7,1) = u + 1 - n - n*m;
			f(7,2) = sqrt(l(m-1)^2 + r(x+1)^2+p(q-1)^2)*SLOW(arista(n,m,q,u,u+1-n-n*m));
			
			f(8,1) = u-1;
			f(8,2) = r(x)*SLOW(arista(n,m,q,u,u-1));
					
			f(9,1) = u - 1 - n;
			f(9,2) = sqrt(r(x)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-1-n));
					
			f(10,1) = u - 1 - n - n*m;
			f(10,2) = sqrt(l(m-1)^2 + r(x)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u-1-n-n*m));
					
			f(11,1) = u - 1 - n*m;
			f(11,2) = sqrt(r(x)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u-1-n*m));
		else
			% interior pared 3
			x = mod(w,n);
			y = (w-x)/n;
			
			f = zeros(17,2);
			
			f(1,1) = u-n;
			f(1,2) = l(y)*SLOW(arista(n,m,q,u,u-n));
					
			f(2,1) = u+1;
			f(2,2) = r(x)*SLOW(arista(n,m,q,u,u+1));
					
			f(3,1) = u - n*m;
			f(3,2) = p(q-1)*SLOW(arista(n,m,q,u,u-n*m));
					
			f(4,1) = u + 1 - n;
			f(4,2) = sqrt(r(x)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u+1-n));
					
			f(5,1) = u + 1 - n*m;
			f(5,2) = sqrt(r(x)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u+1-n*m));
					
			f(6,1) = u - n - n*m;
			f(6,2) = sqrt(p(q-1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u-n-n*m));
					
			f(7,1) = u + 1 - n - n*m;
			f(7,2) = sqrt(l(y)^2 + r(x)^2+p(1)^2)*SLOW(arista(n,m,q,u,u+1-n-n*m));
			
			f(8,1) = u-1;
			f(8,2) = r(x-1)*SLOW(arista(n,m,q,u,u-1));
					
			f(9,1) = u - 1 - n;
			f(9,2) = sqrt(r(x-1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u-1-n));
					
			f(10,1) = u - 1 - n - n*m;
			f(10,2) = sqrt(l(y)^2 + r(x-1)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u-1-n-n*m));
					
			f(11,1) = u - 1 - n*m;
			f(11,2) = sqrt(r(x-1)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u-1-n*m));
			
			f(12,1) = u+n;
			f(12,2) = l(y+1)*SLOW(arista(n,m,q,u,u+n));
			
			f(13,1) = u + 1 + n;
			f(13,2) = sqrt(r(x)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u+1+n));
			
			f(14,1) = u + n - n*m;
			f(14,2) = sqrt(p(q-1)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u+n-n*m));
					
			f(15,1) = u + 1 + n - n*m;
			f(15,2) = sqrt(l(y+1)^2 + r(x)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u+1+n-n*m));
			
			f(16,1) = u - 1 + n;
			f(16,2) = sqrt(r(x-1)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u-1+n));
					
			f(17,1) = u - 1 + n - n*m;
			f(17,2) = sqrt(l(y+1)^2 + r(x-1)^2 + p(q-1)^2)*SLOW(arista(n,m,q,u,u-1+n-n*m));
		end
	elseif and(u<(q-1)*m*n + n, 0 == mod(w,n), u > n*m)
		% pared 4
		if w == n
			% arista 6
			f = zeros(11,2);
			
			z = (u-n)/(n*m);
		
			f(1,1) = u+n;
			f(1,2) = l(1)*SLOW(arista(n,m,q,u,u+n));
				
			f(2,1) = u-1;
			f(2,2) = r(n-1)*SLOW(arista(n,m,q,u,u-1));
				
			f(3,1) = u + n*m;
			f(3,2) = p(z+1)*SLOW(arista(n,m,q,u,u+n*m));
				
			f(4,1) = u - 1 + n;
			f(4,2) = sqrt(r(n-1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u-1+n));
				
			f(5,1) = u - 1 + n*m;
			f(5,2) = sqrt(r(n-1)^2 + p(z+1)^2)*SLOW(arista(n,m,q,u,u-1+n*m));
				
			f(6,1) = u + n + n*m;
			f(6,2) = sqrt(p(z+1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+n+n*m));
				
			f(7,1) = u - 1 + n + n*m;
			f(7,2) = sqrt(l(1)^2 + r(n-1)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u-1+n+n*m));
		
			f(8,1) = u-n*m;
			f(8,2) = p(z)*SLOW(arista(n,m,q,u,u-n*m));
				
			f(9,1) = u - 1 - n*m;
			f(9,2) = sqrt(r(n-1)^2 + p(z)^2)*SLOW(arista(n,m,q,u,u-1-n*m));
				
			f(10,1) = u - 1 + n - n*m;
			f(10,2) = sqrt(l(1)^2 + r(n-1)^2 + p(z)^2)*SLOW(arista(n,m,q,u,u-1+n-n*m));
				
			f(11,1) = u + n - n*m;
			f(11,2) = sqrt(p(z)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+n-n*m));
		elseif w == 0
			% arista 8
			f = zeros(11,2);
			
			z = (u-n*m)/(n*m);
		
			f(1,1) = u-n;
			f(1,2) = l(m-1)*SLOW(arista(n,m,q,u,u-n));
				
			f(2,1) = u-1;
			f(2,2) = r(n-1)*SLOW(arista(n,m,q,u,u-1));
				
			f(3,1) = u + n*m;
			f(3,2) = p(z+1)*SLOW(arista(n,m,q,u,u+n*m));
				
			f(4,1) = u - 1 - n;
			f(4,2) = sqrt(r(n-1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-1-n));
				
			f(5,1) = u - 1 + n*m;
			f(5,2) = sqrt(r(n-1)^2 + p(z+1)^2)*SLOW(arista(n,m,q,u,u-1+n*m));
				
			f(6,1) = u - n + n*m;
			f(6,2) = sqrt(p(z+1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-n+n*m));
				
			f(7,1) = u - 1 - n + n*m;
			f(7,2) = sqrt(l(m-1)^2 + r(n-1)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u-1-n+n*m));
		
			f(8,1) = u-n*m;
			f(8,2) = p(z)*SLOW(arista(n,m,q,u,u-n*m));
				
			f(9,1) = u - 1 - n*m;
			f(9,2) = sqrt(r(n-1)^2 + p(z)^2)*SLOW(arista(n,m,q,u,u-1-n*m));
				
			f(10,1) = u - 1 - n - n*m;
			f(10,2) = sqrt(l(m-1)^2 + r(n-1)^2 + p(z)^2)*SLOW(arista(n,m,q,u,u-1-n-n*m));
				
			f(11,1) = u - n - n*m;
			f(11,2) = sqrt(p(z)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-n-n*m));
		elseif and(w ~= n, w ~= 0)
			% interior pared 4
			y = (w)/(n);
			z = (u-w)/(m*n);
			
			f = zeros(17,2);
			
			f(1,1) = u-n;
			f(1,2) = l(y-1)*SLOW(arista(n,m,q,u,u-n));
					
			f(2,1) = u-1;
			f(2,2) = r(n-1)*SLOW(arista(n,m,q,u,u-1));
					
			f(3,1) = u - n*m;
			f(3,2) = p(z)*SLOW(arista(n,m,q,u,u-n*m));
					
			f(4,1) = u - 1 - n;
			f(4,2) = sqrt(r(n-1)^2 + l(y-1)^2)*SLOW(arista(n,m,q,u,u-1-n));
					
			f(5,1) = u - 1 - n*m;
			f(5,2) = sqrt(r(n-1)^2 + p(z)^2)*SLOW(arista(n,m,q,u,u-1-n*m));
					
			f(6,1) = u - n - n*m;
			f(6,2) = sqrt(p(z)^2 + l(y-1)^2)*SLOW(arista(n,m,q,u,u-n-n*m));
					
			f(7,1) = u - 1 - n - n*m;
			f(7,2) = sqrt(l(y-1)^2 + r(n-1)^2+p(z)^2)*SLOW(arista(n,m,q,u,u-1-n-n*m));
			
			f(8,1) = u+n;
			f(8,2) = l(y)*SLOW(arista(n,m,q,u,u+n));
					
			f(9,1) = u - 1 + n;
			f(9,2) = sqrt(r(n-1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u-1+n));
					
			f(10,1) = u + n - n*m;
			f(10,2) = sqrt(p(z)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u+n-n*m));
					
			f(11,1) = u - 1 + n - n*m;
			f(11,2) = sqrt(l(y)^2 + r(n-1)^2+p(z)^2)*SLOW(arista(n,m,q,u,u-1+n-n*m));
			
			f(12,1) = u + n*m;
			f(12,2) = p(z+1)*SLOW(arista(n,m,q,u,u+n*m));
			
			f(13,1) = u - 1 + n*m;
			f(13,2) = sqrt(r(n-1)^2 + p(z+1)^2)*SLOW(arista(n,m,q,u,u-1+n*m));
					
			f(14,1) = u - n + n*m;
			f(14,2) = sqrt(p(z+1)^2 + l(y-1)^2)*SLOW(arista(n,m,q,u,u-n+n*m));
					
			f(15,1) = u - 1 - n + n*m;
			f(15,2) = sqrt(l(y-1)^2 + r(n-1)^2+p(z)^2)*SLOW(arista(n,m,q,u,u-1-n+n*m));
			
			f(16,1) = u + n + n*m;
			f(16,2) = sqrt(p(z+1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u+n+n*m));
					
			f(17,1) = u - 1 + n + n*m;
			f(17,2) = sqrt(l(y)^2 + r(n-1)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u-1+n+n*m));
		end
	elseif and(w<n, w~=0, u>m*n+1, u < (q-1)*m*n+1)
		% interior pared 5
		z = (u-w)/(m*n);
		
		f = zeros(17,2);
		
		f(1,1) = u+n;
		f(1,2) = l(1)*SLOW(arista(n,m,q,u,u+n));
				
		f(2,1) = u-1;
		f(2,2) = r(w-1)*SLOW(arista(n,m,q,u,u-1));
				
		f(3,1) = u - n*m;
		f(3,2) = p(z)*SLOW(arista(n,m,q,u,u-n*m));
				
		f(4,1) = u - 1 + n;
		f(4,2) = sqrt(r(w-1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u-1+n));
				
		f(5,1) = u - 1 - n*m;
		f(5,2) = sqrt(r(w-1)^2 + p(z)^2)*SLOW(arista(n,m,q,u,u-1-n*m));
				
		f(6,1) = u + n - n*m;
		f(6,2) = sqrt(p(z)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+n-n*m));
				
		f(7,1) = u - 1 + n - n*m;
		f(7,2) = sqrt(l(1)^2 + r(w-1)^2+p(z)^2)*SLOW(arista(n,m,q,u,u-1+n-n*m));
		
		f(8,1) = u+1;
		f(8,2) = r(w)*SLOW(arista(n,m,q,u,u+1));
				
		f(9,1) = u + 1 + n;
		f(9,2) = sqrt(r(w)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+1+n));
				
		f(10,1) = u + 1 + n - n*m;
		f(10,2) = sqrt(p(z)^2 + l(1)^2 + r(w)^2)*SLOW(arista(n,m,q,u,u+1+n-n*m));
				
		f(11,1) = u + 1 + n + n*m;
		f(11,2) = sqrt(l(1)^2 + r(w)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u+1+n+n*m));
		
		f(12,1) = u + n*m;
		f(12,2) = p(z+1)*SLOW(arista(n,m,q,u,u+n*m));
		
		f(13,1) = u - 1 + n*m;
		f(13,2) = sqrt(r(w-1)^2 + p(z+1)^2)*SLOW(arista(n,m,q,u,u-1+n*m));
				
		f(14,1) = u + n + n*m;
		f(14,2) = sqrt(p(z+1)^2 + l(1)^2)*SLOW(arista(n,m,q,u,u+n+n*m));
				
		f(15,1) = u + 1 + n*m;
		f(15,2) = sqrt(r(w)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u+1+n*m));
		
		f(16,1) = u + 1 - n*m;
		f(16,2) = sqrt(p(z)^2 + r(w)^2)*SLOW(arista(n,m,q,u,u+1-n*m));
				
		f(17,1) = u - 1 + n + n*m;
		f(17,2) = sqrt(l(1)^2+p(z+1)^2+r(w-1)^2)*SLOW(arista(n,m,q,u,u+n+n*m));
	elseif and(u>n*m,w>n*(m-1)+1,w~=n*m,w<n*m*q-(n-1))
		% interior pared 6
		z = (u-w)/(m*n);
		v = mod(w,n);
		
		f = zeros(17,2);
		
		f(1,1) = u-n;
		f(1,2) = l(m-1)*SLOW(arista(n,m,q,u,u-n));
				
		f(2,1) = u-1;
		f(2,2) = r(v-1)*SLOW(arista(n,m,q,u,u-1));
				
		f(3,1) = u - n*m;
		f(3,2) = p(z)*SLOW(arista(n,m,q,u,u-n*m));
				
		f(4,1) = u - 1 - n;
		f(4,2) = sqrt(r(v-1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-1-n));
				
		f(5,1) = u - 1 - n*m;
		f(5,2) = sqrt(r(v-1)^2 + p(z)^2)*SLOW(arista(n,m,q,u,u-1-n*m));
				
		f(6,1) = u - n - n*m;
		f(6,2) = sqrt(p(z)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-n-n*m));
				
		f(7,1) = u - 1 - n - n*m;
		f(7,2) = sqrt(l(m-1)^2 + r(v-1)^2+p(z)^2)*SLOW(arista(n,m,q,u,u-1-n-n*m));
		
		f(8,1) = u+1;
		f(8,2) = r(v)*SLOW(arista(n,m,q,u,u+1));
				
		f(9,1) = u + 1 - n;
		f(9,2) = sqrt(r(v)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u+1-n));
				
		f(10,1) = u + 1 - n - n*m;
		f(10,2) = sqrt(p(z)^2 + l(m-1)^2 + r(v)^2)*SLOW(arista(n,m,q,u,u+1-n-n*m));
				
		f(11,1) = u + 1 - n + n*m;
		f(11,2) = sqrt(l(m-1)^2 + r(v)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u+1-n+n*m));
		
		f(12,1) = u + n*m;
		f(12,2) = p(z+1)*SLOW(arista(n,m,q,u,u+n*m));
		
		f(13,1) = u - 1 + n*m;
		f(13,2) = sqrt(r(v-1)^2 + p(z+1)^2)*SLOW(arista(n,m,q,u,u-1+n*m));
				
		f(14,1) = u - n + n*m;
		f(14,2) = sqrt(p(z+1)^2 + l(m-1)^2)*SLOW(arista(n,m,q,u,u-n+n*m));
				
		f(15,1) = u + 1 + n*m;
		f(15,2) = sqrt(r(v)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u+1+n*m));
		
		f(16,1) = u + 1 - n*m;
		f(16,2) = sqrt(p(z)^2 + r(v)^2)*SLOW(arista(n,m,q,u,u+1-n*m));
				
		f(17,1) = u - 1 - n + n*m;
		f(17,2) = sqrt(l(m-1)^2+p(z+1)^2+r(v-1)^2)*SLOW(arista(n,m,q,u,u-1-n+n*m));
	else
		% adentro
		z = (u-w)/(m*n);
		v = mod(w,n);
		y = (w-v)/(n);
		
		f = zeros(26,2);
		
		f(1,1) = u-n;
		f(1,2) = l(y)*SLOW(arista(n,m,q,u,u-n));
				
		f(2,1) = u-1;
		f(2,2) = r(v-1)*SLOW(arista(n,m,q,u,u-1));
				
		f(3,1) = u - n*m;
		f(3,2) = p(z)*SLOW(arista(n,m,q,u,u-n*m));
				
		f(4,1) = u - 1 - n;
		f(4,2) = sqrt(r(v-1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u-1-n));
				
		f(5,1) = u - 1 - n*m;
		f(5,2) = sqrt(r(v-1)^2 + p(z)^2)*SLOW(arista(n,m,q,u,u-1-n*m));
				
		f(6,1) = u - n - n*m;
		f(6,2) = sqrt(p(z)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u-n-n*m));
				
		f(7,1) = u - 1 - n - n*m;
		f(7,2) = sqrt(l(y)^2 + r(v-1)^2+p(z)^2)*SLOW(arista(n,m,q,u,u-1-n-n*m));
		
		f(8,1) = u+1;
		f(8,2) = r(v)*SLOW(arista(n,m,q,u,u+1));
				
		f(9,1) = u + 1 - n;
		f(9,2) = sqrt(r(v)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u+1-n));
				
		f(10,1) = u + 1 - n - n*m;
		f(10,2) = sqrt(p(z)^2 + l(y)^2 + r(v)^2)*SLOW(arista(n,m,q,u,u+1-n-n*m));
				
		f(11,1) = u + 1 - n + n*m;
		f(11,2) = sqrt(l(y)^2 + r(v)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u+1-n+n*m));
		
		f(12,1) = u + n*m;
		f(12,2) = p(z+1)*SLOW(arista(n,m,q,u,u+n*m));
		
		f(13,1) = u - 1 + n*m;
		f(13,2) = sqrt(r(v-1)^2 + p(z+1)^2)*SLOW(arista(n,m,q,u,u-1+n*m));
				
		f(14,1) = u - n + n*m;
		f(14,2) = sqrt(p(z+1)^2 + l(y)^2)*SLOW(arista(n,m,q,u,u-n+n*m));
				
		f(15,1) = u + 1 + n*m;
		f(15,2) = sqrt(r(v)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u+1+n*m));
		
		f(16,1) = u + 1 - n*m;
		f(16,2) = sqrt(p(z)^2 + r(v)^2)*SLOW(arista(n,m,q,u,u+1-n*m));
				
		f(17,1) = u - 1 - n + n*m;
		f(17,2) = sqrt(l(y)^2+p(z+1)^2+r(v-1)^2)*SLOW(arista(n,m,q,u,u-1-n+n*m));
		
		f(18,1) = u+n;
		f(18,2) = l(y+1)*SLOW(arista(n,m,q,u,u+n));
		
		f(19,1) = u - 1 + n;
		f(19,2) = sqrt(r(v-1)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u-1+n));
		
		f(20,1) = u + n - n*m;
		f(20,2) = sqrt(p(z)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u+n-n*m));
				
		f(21,1) = u - 1 + n - n*m;
		f(21,2) = sqrt(l(y+1)^2 + r(v-1)^2+p(z)^2)*SLOW(arista(n,m,q,u,u-1+n-n*m));
		
		f(22,1) = u + 1 + n;
		f(22,2) = sqrt(r(v)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u+1+n));
				
		f(23,1) = u + 1 + n - n*m;
		f(23,2) = sqrt(p(z)^2 + l(y+1)^2 + r(v)^2)*SLOW(arista(n,m,q,u,u+1+n-n*m));
				
		f(24,1) = u + 1 + n + n*m;
		f(24,2) = sqrt(l(y+1)^2 + r(v)^2+p(z+1)^2)*SLOW(arista(n,m,q,u,u+1+n+n*m));
		
		f(25,1) = u + n + n*m;
		f(25,2) = sqrt(p(z+1)^2 + l(y+1)^2)*SLOW(arista(n,m,q,u,u+n+n*m));
		
		f(26,1) = u - 1 + n + n*m;
		f(26,2) = sqrt(l(y+1)^2+p(z+1)^2+r(v-1)^2)*SLOW(arista(n,m,q,u,u-1+n+n*m));
	end	
end
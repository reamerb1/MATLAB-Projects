F = @(k) piecewise((2.5<=k) & (k<3), 3*k-7.5, (3<=k) & (k<4.5), 6-1.5*k, (4.5<=k) & (k<5), 1.5*k-7.5, (k>=5), 0, (k<2.5), 0);
%diff(u(t,x),t,2) = diff(u(t,x),x,2)
F = @(k) 6-1.5*k
Nx = 403; 
Nt = 220; 
h = 1.0; 
c = 1.0; 
u = zeros(Nx,Nt); 
x = zeros(1,Nx); 
t = zeros(1,Nt); 
dx = 20.0/Nx; 
dt = 11.0/Nt; 
x(1) = -10; 
for j = 2:Nx + 1 
    x(j) = x(j-1) + dx; 
end
t(1) = 0;
for n = 2:Nt 
    t(n) = t(n-1) + dt; 
end
for n = 1:Nt 
    count = int2str(n); 
    if n < 10 
        count = strcat('00', count); 
    elseif n < 100 
        count = strcat('0', count); 
    end; 
    for j = 1:Nx + 1 
        %u(j,n) = 0.5*(F3(x(j) - c*t(n), h, c) + F3(x(j) + c*t(n), h, c)); 
        %u(j,n) = 0.5*(F2(x(j) - c*t(n), h, c) + F2(x(j) + c*t(n), h, c)); 
        u(j,n) = 0.5*(F(x(j) - t(n)) + F(x(j) + t(n))); 
    end 
    %S_u = strcat('wave_movie3/u_', count);
    %S_u = strcat('wave_movie2/u_', count);
    S_u = strcat('wave_movie/u_', count); 
    plot(x,u(:,n),'.-'); 
    axis([-10.0 10.0 -0.02 1.05]); 
    print ('-dpng', '-r38', S_u);
end

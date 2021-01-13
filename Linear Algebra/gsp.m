function gsp(x) % Gram-Schmidt Process Calculator
% Instructions: Input matrix as x in the function gsp(x).
% Replaces needing to type out v = x-(dot(x,y)/dot(v,v))*v
% EXAMPLE: [5;3;6;-2]-((dot([5;3;6;-2],[-1;1;1;1])/dot([-1;1;1;1],[-1;1;1;1]))*[-1;1;1;1])-((dot([5;3;6;-2],[2;-2;2;2])/dot([2;-2;2;2],[2;-2;2;2]))*[2;-2;2;2])
[m,n] = size(x); % calculates dimensions of input matrix x
V = zeros(m,n); % Creates blank V matrix w/ same dimensions as input matrix x
k = zeros(m,n-1);
normal = zeros(1,n); % creates blank row matrix for the values to normalize the orthogonal vectors
normal_2 = zeros(1,n); % creates blank row matrix to square the normal values for better readability
ortho_norm = zeros(m,n); % creates blank matrix for the normalized orthogonal vector
V(:,1) = x(:,1); % v1 = x1
d = 0;
for i = 2:n % Loop to do calculations to determine orthogonal Basis Vector
    for j = 1:i-1
        k(:,j) = (dot(x(:,i),V(:,j))/dot(V(:,j),V(:,j)))*V(:,j);
        d=sum(k,2);
    end
    
    V(:,i) = x(:,i)-d;
end
Orthogonal_Vector = V % Prints Orthogonal Vector
for g = 1:n
    normal(:,g) = norm(V(:,g)); % Determines normal values
    normal_2(:,g) = normal(:,g).^2; % Determines Normal Values in readable form(eg. 1/sqrt(#))
end
fprintf('Normalizing Coefficients:\n     [1/sqrt(%3.2f)  1/sqrt(%3.2f)  1/sqrt(%3.2f)]\n',normal_2)
div_norm = normal.^(-1); % Changes normal matrix values to 1/values to account for division in formula
for z = 1:n
    ortho_norm(:,z) = div_norm(:,z)*V(:,z);
end
Normalized_Orthogonal_Vector = ortho_norm
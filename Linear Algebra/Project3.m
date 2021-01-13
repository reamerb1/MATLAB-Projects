% PART 1: Exploring Diagonalization
% Creates the matrices a,b,c, and d
A = pascal(5)
B = zeros(5); B(:) = 1:25
C = 3*eye(5)+diag(ones(4,1), 1)
D = ones(5)
% 1)
% eigenvalues:
eig_a = eig(A)
eig_b = eig(B)
eig_c = eig(C)
eig_d = eig(D)
% eigenvectors:
vec_a1 = null(A-eig_a(1)*eye(5));
vec_a2 = null(A-eig_a(2)*eye(5));
vec_a3 = null(A-eig_a(3)*eye(5));
vec_a4 = null(A-eig_a(4)*eye(5));
vec_a5 = null(A-eig_a(5)*eye(5));
vec_a = [vec_a1 vec_a2 vec_a3 vec_a4 vec_a5] % eigenvectors for A
vec_b1 = null(B-eig_b(1)*eye(5));
vec_b2 = null(B-eig_b(2)*eye(5));
vec_b3 = null(B-0*eye(5));
vec_b = [vec_b1 vec_b2 vec_b3] % eigenvectors for B
vec_c1 = null(C-3*eye(5)) % eigenvectors for C
vec_d1 = null(D-0*eye(5));
vec_d2 = null(D-5*eye(5));
vec_d = [vec_d1 vec_d2] % eigenvectors for D

% 2)
% A is diagonalizable because all of its eigenvalues are distinct.
% B is not diagnolizable because the eigenvalue lambda = 0 has a multiplicity of 3
% C is not diagnolizable because the eigenvalue lambda = 3 has a multiplicity of 5
% D is not diagnolizable because the eigenvalue lambda = 0 has a multiplicity of 4

% 3) dimensions for each eigenspace:
dim_a1 = 5-rank(A-eig_a(1)*eye(5))
dim_a2 = 5-rank(A-eig_a(2)*eye(5))
dim_a3 = 5-rank(A-eig_a(3)*eye(5))
dim_a4 = 5-rank(A-eig_a(4)*eye(5))
dim_a5 = 5-rank(A-eig_a(5)*eye(5))
dim_b1 = 5-rank(B-eig_b(1)*eye(5))
dim_b2 = 5-rank(B-eig_b(2)*eye(5))
dim_b3 = 5-rank(B-0*eye(5))
dim_c1 = 5-rank(C-3*eye(5))
dim_d1 = 5-rank(D-0*eye(5))
dim_d2 = 5-rank(D-5*eye(5))

% 4)
char_A = poly(A)
char_B = poly(B)
char_C = poly(C)
char_D = poly(D)

% PART 2: The Gram-Schmidt Process
% 1)
E = magic(8); E = E(:,1:3) % Creates matrix E
U = E(:,1)/norm(E(:,1)); % creates orthonormal U1
for k = 2:3
w = E(:,k)-U*(U'*E(:,k));
u = w/norm(w);
U =[U u];
end
U % displays the orthonormal matrix U
ident1 = U'*U %  should = Identity matrix, to check that matrix U is orthonormal

% 2)
for n = 4:8 % sets n between 3<n<=8
    F = magic(8); F = F(:,1:n) % Creates matrix F
    U2 = F(:,1)/norm(F(:,1)); % creates orthonormal U2
    for j = 2:n
        w2 = F(:,j)-U2*(U2'*F(:,j));
        u2 = w2/norm(w2);
        U2 =[U2 u2];
    end
    U2 % displays the orthonormal matrix U2
    ident2 = U2'*U2 %  should = Identity matrix, to check that matrix U2 is orthonormal
end
% No, because to use the Gram-Schmidt process the matrix F would need to be
% linearly independent and if it is linearly independent when it has 8
% columns, then the orthonormal matrix U2 would need to have 8 pivots as
% well in order to have the same column space as matrix F, which it does not have.

% 3)
G = pascal(7)
U3 = G(:,1)/norm(G(:,1)); % creates orthonormal U3
for i = 2:7
    w3 = G(:,i)-U3*(U3'*G(:,i));
    u3 = w3/norm(w3);
    U3 =[U3 u3];
end
U3 % displays the orthonormal matrix U3
ident3 = U3'*U3 %  should = Identity matrix, to check that matrix U3 is orthonormal
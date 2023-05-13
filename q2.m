
%% Question 2 (Linear Algebra)

x = randi([-10 10]); y=x;
while y==x
 y = randi([-10 10]);
end
k = randi([-10 10]);
p = randi([-10 10]);
q = randi([-10 10]);
[a(1),b(1),c(1)] = f(x,x,y,k,p,q);
[a(2),b(2),c(2)] = f(x,y,x,k,p,q);
[a(3),b(3),c(3)] = f(y,x,x,k,p,q);

for i=1:3
L = [1 0 0;a(i) 1 0;b(i) c(i) 1];
if(i==1)U = [x a(i) b(i);0 x c(i);0 0 y];
else 
    if(i==2)U = [x a(i) b(i);0 y c(i);0 0 x];
    else 
        U = [y a(i) b(i);0 x c(i);0 0 x];
    end
end

if(i==1) optiona = L*U;
else 
    if(i==2) optionc = L*U;
    else optiond = L*U;
    end
end
end
L = [1 0 0;a(1) 1 0;b(1) c(1) 1];
U = [y a(1) b(1);0 x c(1);0 0 y];
optionb = L*U;



  fprintf('Consider the LU-decomposotion of a 3x3 matrix A such that U has the eigen values %d,%d,%d. The sum of the elements of L is %d.\n',x,x,y,k);
  fprintf('The sum of first row, last column of U matrix are %d, %d, respectively. Also, the matrix L+U is symmetric. Then which of\n',p,q)
  fprintf('the following matrix is not a possibility of A.\n');
  disp('(a)'),disp(optiona);
  disp('(b)'),disp(optionb);
  disp('(c)'),disp(optionc);
  disp('(d)'),disp(optiond);
  disp('answer = (b)'),disp(optionb);

function [a,b,c] = f(x,~,z,k,p,q)
a = -q+z+k-3;
b = q-z-k+3-x+p;
c = k-3+x-p;
end

%% Question 3: (Optimization)

clear all

x=randi([-10 10],5,5);

a=x(:,1);
b=x(:,2);
c=x(:,3);
d=x(:,4);
e=x(:,5);

p=randi([-10,10],3);
q=randi([-10,10],3);
r=randi([-10,10],3);

gradh1=[a(1);b(1);c(1);d(1)];
gradh2=[a(2);b(2);c(2);d(2)];
gradh3=[a(3);b(3);c(3);d(3)];

optiona=(p(1)*gradh1)+(q(1)*gradh2)+(r(1)*gradh3);
optionb=(p(2)*gradh1)+(q(2)*gradh2)+(r(2)*gradh3);
optionc=(p(3)*gradh1)+(q(3)*gradh2)+(r(3)*gradh3);


%rearrange quetsion text 
%print answer which takes 5th row a(5),...
disp('Which of the following options cannot be a possible gradient of the unknown function f(x, y, z, w) at the point (x1, y1, z1, w1),')
disp('where the point (x1,y1,z1,w1) is the point of minima of function following the equality constraints which are h1,h2 and h3.')
fprintf('%dx+%dy+%dz+%dw=%d\n',a(1),b(1),c(1),d(1),e(1))
fprintf('%dx+%dy+%dz+%dw=%d\n\n',a(2),b(2),c(2),d(2),e(2))
%print h3


disp('(a)');disp(optiona);
disp('(b)');disp(optionb);
disp('(c)');disp(optionc);
%disp('(d)');disp(answer);

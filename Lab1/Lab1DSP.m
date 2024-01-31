%Student Experiment#1
% A)
m= -3:7;
x = zeros(length(m),1);
x(4)=2;
x(6)=1;
x(7)=-1;
x(8)=3;
figure;
stem(m,x);
sgtitle("Student Experiment#1 (A)")

% B)
figure;
sgtitle("Student Experiment #1 (B)")
subplot(2,2,1);
stem(m-2,x);
title("Delayed by 2")
subplot(2,2,2);
stem(m+1,x);
title("Advanced by 1")
subplot(2,2,3);
stem(-m,x);
title("Flipped")
subplot(2,2,4);
stem(1-m,x);
title("Flipped then advanced by 1")

%Student Experiment #2
% A)
N=12;  % The Fundemental Period Of Each Signal
M =4 ;
n= 0:0.12:23;
Xm1 = sin(2*pi*M*n/12);
figure;
sgtitle("Student Experiment #2 (A)")
subplot(2,2,1);
stem(n,Xm1);
title("Xm when M = 4")
M=5;
Xm2 = sin(2*pi*M*n/12);
subplot(2,2,2);
stem(n,Xm2);
title("Xm when M = 5")
M=7;
Xm3 = sin(2*pi*M*n/12);
subplot(2,2,3);
stem(n,Xm3);
title("Xm when M = 7")
M=10;
Xm4 = sin(2*pi*M*n/12);
subplot(2,2,4);
stem(n,Xm4);
title("Xm when M = 10")

% B)
g = 0:0.09:9;  k =1;
Xk1 = sin(2*pi*k/5*g);
figure;
sgtitle("Student Experiment #2 (B)")
subplot(2,2,1);
stem(g,Xk1);
title("Xk when k = 1")
k=2;
Xk2 = sin(2*pi*k/5*g);
subplot(2,2,2);
stem(g,Xk2);
title("Xk when k = 2")
k=4;
Xk3 = sin(2*pi*k/5*g);
subplot(2,2,3);
stem(g,Xk3);
title("Xk when k = 4")
k= 6;
Xk4 =sin(2*pi*k/5*g);
subplot(2,2,4);
stem(g,Xk4);
title("Xk when k = 6")


%Student Experiment #3
% A)
t = 0:50;
x =sin(2*pi*t*1/10);
figure;
sgtitle("Student Experiment #3 ")
subplot(3,1,1);
stem(t,x)
fprintf('Power of Signal A')
P = sum(x(1:10).^2)/10

% B)
t1 = 0:12 ;
x1 =sin(2*pi*t1*1/10);
fprintf('Energy of Signal B')
ET1=sum(x1.^2)
fprintf('Power of Signal B')
P1 = sum(x1(1:10).^2)/10 %Average Power of 1 period
subplot(3,1,2);
stem(t1,x1)

% C)
t2= 0:1005;
x2 =sin(2*pi*t2*1/10);
fprintf('Power of Signal C')
P2 =sum(x2(1:10).^2)/10
fprintf('Energy of Signal C')
ET2 = sum(x2.^2)
subplot(3,1,3);
stem(t2,x2)

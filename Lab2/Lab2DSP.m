%Student Experiment #1 :
%Question 1:
figure;     sgtitle("Student Experiment#1")
nx=[-3 -2 -1];
x=[1 2 3];
subplot(4,2,1);     stem(nx,x);     title("X");
nh=[-6 -5 -4 -3 -2 -1];
h=[9 8 5 32 5 3];
subplot(4,2,2);     stem(nh,h);     title("H");
M = length(x);
N = length(h);
ny = (nx(1) + nh(1)): (nx(end)+nh(end));
y = zeros(1,M+N-1);
for u= 1:N
    x1=h(u)*[zeros(1,u-1) x zeros(1,length(y)-M-(u-1))]; %Shifted version
    y=y+x1;
end
subplot(4,1,2);     stem(ny,y);     title("Y");


%Question 2:
ymat=zeros(1,M+N-1);
for n=1:M+N-1
    for k=max(1,n-N+1):min(n,M)
        ymat(n)=ymat(n)+x(k)*h(n-k+1);
    end
end
subplot(4,1,3);
stem(ny,ymat);
title("YMat");


%Student Experiment #2 :
%Question 1:
ycov = conv(x,h);
subplot(4,1,4);
stem(ny,ycov);
title("Student Experiment#2 Matlab Convolution Function")

%Student Experiment #3: %A): 
figure;     sgtitle("Student Experiment#3")
xk =ones(1,10);
Ay = [1];
Bx = [1 0.5 2];
Ya = filter(Bx,Ay,xk);
subplot(4,1,1);         stem(Ya);       title("a)Y[n]= x[n]+.5x[n-1]+2x[n-2]");
%B) :
Ay = [1 -0.8];
Bx = [1];
Yb = filter(Bx,Ay,xk);
subplot(4,1,2);         stem(Yb);       title("b)Y[n]-.8Y[n-1]=x[n]");
%C)
Ay = [1 -0.8];
Bx = [0 1];
Yc = filter(Bx,Ay,xk);
subplot(4,1,3);         stem(Yc);       title("c)Y[n]-.8Y[n-1]=x[n-1]");
%D)
xd = ones(1,11);        xd(6) =2;
Ay = [1];
Bx = [1 -1];
Yd = filter(Bx,Ay,xd);
subplot(4,1,4);         stem(Yd);       title("d)Y[n]=x[n]-x[n-1]");

%Average Order 5 Filter
x5 = ones(1,12);
x5(8) =2 ;
Ay = [1];
Bx = (1/5)*ones(1,5);
Y5 = filter(Bx,Ay,x5);
figure;
stem(Y5);
sgtitle("Average 5th Order Filter: c)Y[n]=1/5x[n]+1/5x[n-1]+1/5x[n-2]+1/5x[n-3]+1/5x[n-4]");

%3.5 Exercise:
%1)
figure;     sgtitle("3.5 Exercise")
fs =1000;
Tx = 0:2;
X = ones(1,2*fs);
Th = -1:4;
H =2*ones(1,5*fs);
Ty = linspace(-1,6,7*fs-1);
Yc = (1/fs)*conv(X,H);
subplot(1,1,1);
plot(Ty,Yc);
title("Question 1")
%2)
figure;
Tx=0:.001:2;
Xn=ones(1,2001);
subplot(3,1,1);     stem(Tx,Xn);    title("X(n)");
xlim([0 3]);
ylim([0 2]);
Th=0:.001:1;
Hn=zeros(1,1001);
Hn(1)=1;
Hn(1001)=1;
subplot(3,1,2);     stem(Th,Hn);    title("h(n)");
xlim([-1 2]);
Ty=0:.001:3;
Yn=1/1000*conv(Xn,Hn);
subplot(3,1,3);     stem(Ty,Yn);    title("Y(n)");

%Last Question: Compute and Plot:
%A)
figure;
X1 =[1 2 4];
H1 =[1 1 1 1 1];
NX1 = 1:3;
NH1 = 1:5;
subplot(4,2,1);     stem(NX1,X1);     title("X1");
subplot(4,2,2);     stem(NH1,H1);     title("H1");
NY1 = (NX1(1) + NH1(1)): (NX1(end)+NH1(end));
Y1 = conv(X1,H1);
subplot(4,1,2);     stem(NY1,Y1);     title("Y1");
%B)
X2 =[0 1 -2 3 -4];
H2 =[0.5 1 2 1 0.5];
NX2 = 1:5;
NH2 = 1:5;
subplot(4,2,5);     stem(NX2,X2);     title("X2");
subplot(4,2,6);     stem(NH2,H2);     title("H2");
NY2 = (NX2(1) + NH2(1)): (NX2(end)+NH2(end));
Y2 = conv(X2,H2);
subplot(4,1,4);     stem(NY2,Y2);     title("Y2");
%C)
figure;
X3 =[1 2 3 4];
H3 =[4 3 2 1];
NX3 = 1:4;
NH3 = 1:4;
subplot(4,2,1);     stem(NX3,X3);     title("X3");
subplot(4,2,2);     stem(NH3,H3);     title("H3");
NY3 = (NX3(1) + NH3(1)): (NX3(end)+NH3(end));
Y3 = conv(X3,H3);
subplot(4,1,2);     stem(NY3,Y3);     title("Y3");
%D)
X4=[1 2 3 4];
H4=[1 2 3 4];
NX4 = 1:4;
NH4 = 1:4;
subplot(4,2,5);     stem(NX4,X4);     title("X4");
subplot(4,2,6);     stem(NH4,H4);     title("H4");
NY4 = (NX4(1) + NH4(1)): (NX4(end)+NH4(end));
Y4 = conv(X4,H4);
subplot(4,1,4);     stem(NY4,Y4);     title("Y4");


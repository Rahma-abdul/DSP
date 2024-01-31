%Assignment Lab 3
%Question 1:
b1 = [1 -2 2 -1];
a1 = poly([1 0.5 0.2]);
H = tf(b1,a1);
pzmap(H);
zplane(b1,a1)
title('Question 1 a) pole-zero pattern');
%The system is stable
syms z
H = (1-2*z^-1+2*z^-2-z^-3)/((1-z^-1)*(1-0.5*z^-1)*(1-0.2*z^-1));
n = [0:50];
figure;
h=iztrans(H,n);
plot(n,h)
% figure;
% impz(b,a)
title('Question 1 b) Impulse Response');


%Question 2:
b2 = [0.03 -0.02 0.01];
a2 = [1 -2.8 3.02 -1.468 0.27];
figure;         zplane(b2,a2);      title('Question 2 a) pole-zero pattern');
%The system is stable
w = [0:1:500]*pi/500;
H2=freqz(b2,a2,w);
% figure;     subplot(2,1,1);    plot(w/pi,abs(H2));     title('Magnitude Response');
% subplot(2,1,2);       plot(w/pi,angle(H2)*180/pi);        title('Phase Response');
figure;
n = [0:50];
x =[5*ones(1,51)];
subplot(3,1,1);     plot(n,x);      sgtitle('Rest of Question 2');      title('5u[n]');
i = [1 zeros(1,48)];
h = filter(b2,a2,i);
xf =filter(b2,a2,x);
y2 = conv(h,xf);
subplot(3,1,2);     plot([0:length(y2)-1],y2);      title('System is relaxed');
y3=[-0.2 0.3 0 0];
xic = filtic(b2,a2,y3);
k =filter(b2,a2,x,xic);
subplot(3,1,3);     plot([0:length(k)-1],k);    title('y[-1]=-0.2 y[-2]=0.3 y[-3]=y[-4]=0');



%Question 3:
b3=[0.74 -2.544 2.5216];
a3=[1 0 0.64];
figure;     zplane(b3,a3);  title('Question 3 a) pole-zero pattern');
H3 = (0.74*z^2-2.544*z+2.5216)/(z^2+0.64);
n = [0:50];
figure;
h=iztrans(H3,n);
plot(n,h);       title('Question 3 Impulse Response');
x3=(-2*(0.3).^n +2*(0.8).^n);
y3=filter(b3,a3,x3);
figure;     subplot(2,1,1);     plot(n,x3);     sgtitle('Question 3 b)');
title('x=(-2*(0.3)^n +2*(0.8)^n)');
subplot(2,1,2);     plot(n,y3);     title('output');
figure;
a4 = conv([1 -0.8],[1 -0.3]);
a = conv(a3,a4);
b = conv(b3,[0 1]);
zplane(b,a);        title('Question 3 pole-zero of output');


t=0:0.001:2;
xa=sin(2 * pi * 5 * t);
xb=sin(2 * pi * 50 * t);
x2= xa+xb;
x1= sin(2 * pi * 10 * t);
x=x1+x2;
fs=1000;
n=1024;
fval=fs*((-n/2: ((n/2)-1))/n);
y=fftshift(fft(x,n));

subplot(4,1,1);
plot(t,x,'g');
xlabel('Time');
ylabel('Amaplitude');
title('Amplitude response');
subplot(4,1,2);
plot(fval,y,'b');
xlabel('Frequency');
ylabel('Amaplitude');
title('Frequency response');

subplot(4,1,3);
plot(fval,abs(y),'g');
xlabel('Frequency');
ylabel('Mangitude');
title('Magnitude response');
subplot(4,1,4);
plot(fval,angle(y),'b');
xlabel('Frequency');
ylabel('Phase');
title('Phase spectrum');

%%Assignment 3
%%Question 3:
seg =14;
sec = 42;
sampleRate = 44100;
t = linspace(0,sec,sec*sampleRate);
f = [50,100,200,400,1000,2000,4000,6000,8000,10000,12000,14000,16000,18000];
for i=0:seg-1
    begin =(i*3*sampleRate);
    finish=(3*sampleRate)+begin;
    w =2*pi*f(i+1);
    signal(begin+1:finish) = 0.5*sin(w*t(begin+1:finish));
end
%length(t)
%length(signal)
%stem(t,signal);
%sound(signal,sampleRate)
audiowrite('file.wav',signal,sampleRate);


%%Question 4:
cyc = 12;
f1 = 600;
f2 = 1400;
amp = 0.25;
sampleRate = 22050;
t= linspace( 0,cyc,cyc*sampleRate+1);
for i = 0:cyc-1
    begin = i*sampleRate;
    finish = (sampleRate/2)+begin;
    signal2(begin+1:finish) =0;
    w1 =2*pi*f1;
    w2 =2*pi*f2;
    signal2(finish : begin+sampleRate+1) = amp*sin(w1*t(finish : begin+sampleRate+1))+ amp*sin(w2*t(finish : begin+sampleRate+1));
end
% length(t)
% length(signal2)
% stem(t,signal2);
%sound(signal2,sampleRate)
audiowrite('siren.wav',signal2,sampleRate);

%%Question 5:
s = input('Please enter your telephone number: ', 's');
n = length(s);
sample_rate = 20000;
t = 1/sample_rate;
time_tone = [0:t:0.2];
time_silence= [0:t:0.05];
silence = zeros(1,numel(time_silence));
signal3 = []; 
tx =[];

for i = 1:n
    switch s(i)
        case '0'
            f_low = 941;
            f_high = 1336;
            y_low = 0.15*sin(2*pi*f_low*time_tone); 
            y_high = 0.15*sin(2*pi*f_high*time_tone);
            signal3 = [signal3 y_high+ y_low silence];
            %figure(i);
            tx = [tx time_tone time_silence];
%             number= i
%             length(tx)
%             length(signal3)
%             plot(tx, signal3), axis([0, 0.01, -1, 1]);
%             xlabel('t'), ylabel('y');
        case '1'
            f_low = 697;
            f_high = 1209;
            y_low = 0.15*sin(2*pi*f_low*time_tone);
            y_high = 0.15*sin(2*pi*f_high*time_tone);
            signal3 = [signal3 y_high+ y_low silence];
            tx = [tx time_tone time_silence];
        case '2'
            f_low = 697;
            f_high = 1336;
            y_low = 0.15*sin(2*pi*f_low*time_tone);
            y_high = 0.15*sin(2*pi*f_high*time_tone);
            signal3 =  [signal3 y_high+ y_low silence];
            tx = [tx time_tone time_silence];
        case '3'
            f_low = 697;
            f_high = 1477;
            y_low= 0.15*sin(2*pi*f_low*time_tone);
            y_high = 0.15*sin(2*pi*f_high*time_tone);
            signal3 = [signal3 y_high+ y_low silence];
            tx = [tx time_tone time_silence];
        case '4'
            f_low = 770;
            f_high = 1209;
            y_low = 0.15*sin(2*pi*f_low*time_tone);
            y_high = 0.15*sin(2*pi*f_high*time_tone);
            signal3 =  [signal3 y_high+ y_low silence];
            tx = [tx time_tone time_silence];
        case '5'
            f_low = 770;
            f_high = 1336;
            y_low = 0.15*sin(2*pi*f_low*time_tone);
            y_high = 0.15*sin(2*pi*f_high*time_tone);
            signal3 =  [signal3 y_high+ y_low silence];
            tx = [tx time_tone time_silence];
        case '6'
            f_low = 770;
            f_high = 1477;
            y_low = 0.15*sin(2*pi*f_low*time_tone);
            y_high = 0.15*sin(2*pi*f_high*time_tone);
            signal3 =  [signal3 y_high+ y_low silence];
            tx = [tx time_tone time_silence];
        case '7'
            f_low = 852;
            f_high = 1209;
            y_low = 0.15*sin(2*pi*f_low*time_tone);
            y_high = 0.15*sin(2*pi*f_high*time_tone);
            signal3 =  [signal3 y_high+ y_low silence];
            tx = [tx time_tone time_silence];
        case '8'
            f_low = 852;
            f_high = 1336;
            y_low = 0.15*sin(2*pi*f_low*time_tone);
            y_high = 0.15*sin(2*pi*f_high*time_tone);
            signal3 =  [signal3 y_high+ y_low silence];
            tx = [tx time_tone time_silence];
        case '9'
            f_low = 852;
            f_high = 1477;
            y_low = 0.15*sin(2*pi*f_low*time_tone);
            y_high = 0.15*sin(2*pi*f_high*time_tone);
            signal3 =  [signal3 y_high+ y_low silence];
            tx = [tx time_tone time_silence];
    end
end
sound(signal3,sample_rate);

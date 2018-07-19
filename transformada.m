function [y,f] = transformada(x,Fs,t,inicial)
x = x(1+(inicial-1)*t*Fs:t*Fs*inicial);
X = fft(x,200);
X = X(1:length(X)/2);
y = abs(X);
f=0:(Fs/length(x)):Fs/2-(Fs/length(x));
end
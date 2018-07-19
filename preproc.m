close all
clear all
clc

names = ['1' '2' '3' '4' '5'];

for audio = names
    s = strcat(audio,'.wav');
    [x,Fs]=audioread(s);
    x = x(1:length(x)/2);
    audiowrite(s,x,Fs);
end
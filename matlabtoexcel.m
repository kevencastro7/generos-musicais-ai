clear
close all
clc

Fs = 44100;
t = 3;
ig = 0;
B = zeros(1,100+1);
for i=1:length(B)
    B(i) = i-1;
end
names = ['1' '2' '3' '4' '5' '6' '7' '8' '9' 'A'];
for audio = names
    s = strcat(audio,'.wav');
    [x,Fs]=audioread(s);
    imax = ceil(length(x)/(Fs*t))-1;
    IN = zeros(1,length(imax-2*ig));
    for i = 1+ig:imax-ig
        IN(i-ig) = i;
    end



    for in = IN
        [X,f] = transformada(x,Fs,t,in);
        if audio == '1' || audio == '2' || audio == '3' || audio == '4' || audio == '5'
            tipo = 0;
        else
            tipo = 1;
        end
        val = true;
        for j = X
            if j ~=0
                break
            end
            val = false;
        end
        if val
            if tipo == 1
                X = X.';
            end
            a = [X  tipo];
            B = [B ; a];
        end
    end

end
filename = 'testdata.csv';
csvwrite(filename,B,0,0);


[bass,fs] = audioread('bass.wav');
guitar = audioread('guitar.wav');
drums = audioread('drums.wav');

lengthGuitar = length(guitar);

guitarDuration = lengthGuitar/fs;

duration = 5;
b = bass(1:fs*duration);
g = guitar(1:fs*duration);
d = drums(1:fs*duration);

t = linspace(1,4,fs*duration);

comp = b + t'.*g + d;

sound(comp, fs);


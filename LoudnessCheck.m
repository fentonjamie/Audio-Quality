
srt = 44100;

[clean, Fs] = audioread('speech original.wav');

r = audiorecorder(srt, 16, 1);

%P is amount of time before each fingerprint loop

P = 6;

%load in audio to listen to


%clear R and dt data to restart audio variable
% clear R
clear dt
disp('Record in 3')
pause(1)
disp('2')
pause(1)
disp('1')
pause(1)
disp('recording')
record(r)
pause(P)
dt = getaudiodata(r);
stop(r);
disp('Stopped')

loudness = integratedLoudness(dt,srt);


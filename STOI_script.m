%load in test signal to compare degraded against
[clean, Fs] = audioread('speech original.wav');

recorder1 = audiorecorder(16000,16,1);

r = audiorecorder(Fs, 16, 1);
%record the test signal
disp('Record in 3')
pause(1)
disp('2')
pause(1)
disp('1')
pause(1)
disp('recording')
record(r)
pause(6)
degraded = getaudiodata(r);
stop(r);
%align the two signals
[CleanA, DegradedA] = alignsignals(clean, degraded);
%Zero pad if different lengths 
if length(CleanA) == length(DegradedA)
    disp('Lengths match')
elseif length(CleanA) > length(DegradedA)
    DegradedA = [DegradedA; zeros(length(CleanA)-length(DegradedA),1)];
elseif length(DegradedA) > length(CleanA)
    CleanA = [CleanA; zeros(length(DegradedA)-length(CleanA),1)];
end
%normalise signals so that loudness is not taken into account for the score

CleanA = CleanA./abs(max(CleanA));

DegradedA = DegradedA./abs(max(DegradedA));

score = stoi(CleanA, DegradedA, Fs)

SNR = snr(CleanA, DegradedA)

loudness = integratedLoudness(degraded,srt)

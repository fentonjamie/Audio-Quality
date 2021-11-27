from pesq import pesq
from scipy.io import wavfile
import matplotlib.pyplot as plt
import numpy as np
import sounddevice as sd
from scipy.io.wavfile import write

Fs = 16000

#seconds = 5

#myrecording = sd.rec(int(seconds * Fs), samplerate=Fs, channels=1)
#sd.wait()  # Wait until recording is finished
#write('recording.wav', Fs, myrecording)  # Save as WAV file



rate, ref = wavfile.read("01_female_speech.wav")
rate, deg = wavfile.read("Speech Recording.wav")

print(pesq(rate, ref, deg, 'wb'))
# Audio-Quality

This programme is used to measure a reference and recorded audio file against each other and output three scores. Short Term Objective Inteligibility (STOI), Perceptual Evaluation of Speech Quality (PESQ) and MATLABS signal to noise ratio (SnR). For this script to run for the STOI and SnR the STOI function was taken from https://ceestaal.nl/code/ with the SnR taken from MATLABS built in function. 

When opening the STOI script 

[clean, Fs] = audioread('speech original.wav');

Is used to load in the reference audio and should be replaced with whatever reference audio you wish to use. The code then has a countdown till the MATLAB script starts recording the audio in from the degreaded signal the pause function is used to set the timer for how long this is to be recorded.

pause()

This script will then aligns the two signals in time and produces a STOI and SnR value from the recorded signal and the reference one. 

For the PESQ this is done in a Python script. Export the time aligned reference signal from the MATLAB script as a wav file and then use this wav file in the main.py script. From all of the tests done on the data the two wav files should still be time aligned, this then prints the PESQ score of the two signals. 

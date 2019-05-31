[audioIn,fs] = audioread('piratesofersatz_01_leinster_64kb_f000011.wav');
dt = 1/fs;
StopTime=length(audioIn)/fs;
t = (0:dt:StopTime-dt)';
N = size(t,1);
% [f0,idx] = pitch(audioIn,fs);
X = fftshift(fft(audioIn));
subplot(2,1,1)
plot(audioIn)
ylabel('Amplitude')
df=fs/N; %hz
f = -fs/2:df:fs/2-df;

subplot(2,1,2)
plot(f,abs(X)/N)
ylabel('Frequency (in hertz)')
xlabel('Sample Number')

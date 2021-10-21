%Sine wave
Fm=10;
Fs=50*Fm;
T=1/Fs;
t=0:T:2-t; %2 seconds

nfft_1=256;
nfft_2=512;
nfft_3=1024;
nfft_4=2048;

Fr=(0:nfft_1/2-1)*Fs/nfft_1;

g_1=sin(2*pi*Fm*t);
subplot(3,3,1);
plot(t,g_1);
xlim([0 2.5]);
ylim([-1.2 1.2]);
xlabel('Time');
ylabel('Amplitude');
title('Sine wave of Frequency 10Hz');

subplot(3,3,2)
fg_1=fft(g_1,nfft_1);
fg_1=fg_1(1:nfft_1/2);
mfg_1=abs(fg_1);

plot(Fr,mfg_1);
ylim([0 200]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Sine Wave at N=256');

subplot(3,3,3)
stem(Fr,mfg_1);
ylim([0 200]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Sine Wave at N=256');

Fr_2=(0:nfft_2/2-1)*Fs/nfft_2;
subplot(3,3,4)
fg_1=fft(g_1,nfft_2);
fg_1=fg_1(1:nfft_2/2);
mfg_1=abs(fg_1);
plot(Fr_2,mfg_1);
ylim([0 800]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Sine Wave at N=512');


subplot(3,3,5)
stem(Fr_2,mfg_1);
ylim([0 800]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Sine Wave at N=512');

Fr_3=(0:nfft_3/2-1)*Fs/nfft_3;
subplot(3,3,6)
fg_1=fft(g_1,nfft_3);
fg_1=fg_1(1:nfft_3/2);
mfg_1=abs(fg_1);

plot(Fr_3,mfg_1);
ylim([0 800]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Sine Wave at N=1024');

subplot(3,3,7)
stem(Fr_3,mfg_1);
ylim([0 800]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Sine Wave at N=1024');

Fr_4=(0:nfft_4/2-1)*Fs/nfft_4;
subplot(3,3,8)
fg_1=fft(g_1,nfft_4);
fg_1=fg_1(1:nfft_4/2);
mfg_1=abs(fg_1);

plot(Fr_4,mfg_1);
ylim([0 800]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Sine Wave at N=2048');

subplot(3,3,9)
stem(Fr_4,mfg_1);
ylim([0 800]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Sine Wave at N=2048');


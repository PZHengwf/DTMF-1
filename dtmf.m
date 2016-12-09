function X = dtmf(key, Fs, t, ts)
npt = ceil(t*1e-3 *Fs);
[freq_low, freq_high] = dtmf_freq(key);
w_l = 2*pi*freq_low /Fs;   % ����Ƶ�ʣ��ͣ�
w_h = 2*pi*freq_high / Fs; % ����Ƶ�ʣ��ߣ�
N = 0:npt-1;
X = cos(w_l .*N) + cos(w_h .*N);

ns = ceil(ts*1e-3 *Fs);
X = [X zeros(1,ns)];
end
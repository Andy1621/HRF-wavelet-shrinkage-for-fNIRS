% for FOIRE-3000 data format
oxy = nirs_data.oxyData;
wm_oxy = denirs_data.oxyData;
fs  = nirs_data.fs;
[L,C] = size(oxy);
RT = 1/fs; % fs : 10Hz 

HRF_oxy = HRFsmoothing(oxy, RT);
prop_oxy = HRF_WS(oxy);
wd_oxy = wden(oxy,'sqtwolog','s','mln',11,'sym8');



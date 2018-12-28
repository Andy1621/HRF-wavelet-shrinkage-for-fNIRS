# HRF-wavelet-shrinkage-for-fNIRS

Paper Title: Robust functional near infrared spectroscopy denoising using multiple wavelet shrinkage based on a hemodynamic response model

"Lee, Gihyoun, et al. "Robust functional near infrared spectroscopy denoising using multiple wavelet shrinkage based on a hemodynamic response model." Journal of Near Infrared Spectroscopy 26.2 (2018): 79-86."

Abstract: Functional near infrared spectroscopy (fNIRS) can measure hemodynamic signals, and the results are similar to functional magnetic resonance imaging (fMRI) of blood-oxygen-level-dependent signals. 
Thus, fNIRS can be employed to investigate brain activity by measuring the absorption of near infrared light through an intact skull. Recently, a general linear model (GLM), which is a standard method for fMRI imaging, was applied to fNIRS imaging analysis. 
However, the GLM fails when fNIRS signals retain noise, such as that caused by the subject’s movement during measurement. 
Although wavelet-based denoising and hemodynamic response function smoothing are popular denoising methods for fNIRS signals, these methods do not exhibit impressive performances for very noisy environments and a specific class of noise. 
Thus, this paper proposes a new denoising algorithm that uses multiple wavelet shrinkage and a multiple threshold function based on a hemodynamic response model. 
Through the experiments, the performance of the proposed algorithm is verified using graphic results and objective indexes, and it is compared with existing denoising algorithms.


Run 'exe.m' file on MATLAB
prop_oxy is denoing signal by proposed algorithm
HRF_oxy is denoising signal by HRF smoothing
wd_oxy is denosing signal by wavelet denoising

close all
clear all
load PET_coronal.mat;
load PET_sagittal.mat;
load MRI_Coronal.mat;
load MRI_Transverse.mat;
kCoronal=load('Coronal.mat');%PET
ki_coronal=load('PET_coronal.mat');%MR
% movingVolume=(i_coronal(:,:,200:231))
% fixedVolume=(Coronal(:,:,250:281))
% val1
% val3
% val4
% val5
% val6
% % figure(1)
% % helperVolumeRegistration(fixedVolume,movingVolume);
% centerFixed = size(fixedVolume)/2
% centerMoving = size(movingVolume)/2
% % figure(2)
% % imshowpair(movingVolume(:,:,centerMoving(3)), fixedVolume(:,:,centerFixed(3)));
% [optimizer,metric] = imregconfig('multimodal')
% Rfixed  = imref3d(size(fixedVolume),0.468800000000000,0.468800000000000,0.468800000000000);
% Rmoving = imref3d(size(movingVolume),1.018210000000000,1.018210000000000, 1.018210000000000);
% optimizer.InitialRadius = 0.0005;
% movingRegisteredVolume = imregister(movingVolume,Rmoving, fixedVolume,Rfixed, 'rigid', optimizer, metric);
% % imshowpair(movingRegisteredVolume(:,:,centerFixed(3)), fixedVolume(:,:,centerFixed(3)));
% figure(1)
% % helperVolumeRegistration(fixedVolume,movingRegisteredVolume);
% imshowpair(movingRegisteredVolume(:,:,centerFixed(3)), fixedVolume(:,:,centerFixed(3)));
% figure(2)
% geomtform = imregtform(movingVolume,Rmoving, fixedVolume,Rfixed, 'rigid', optimizer, metric);
% movingRegisteredVolume = imwarp(movingVolume,Rmoving,geomtform,'bicubic','OutputView',Rfixed);
% imshowpair(movingRegisteredVolume(:,:,centerFixed(3)), fixedVolume(:,:,centerFixed(3)));
% % subplot 121
% % imshow(movingRegisteredVolume(:,:,centerFixed(3)),[]);
% % subplot 122
% % imshow(fixedVolume(:,:,centerFixed(3)),[])
# registration-of-3D-multimodel-images
#solutions to registration of 3D multimodel images via MATLAB
picstr=dir('C:\Users\Administrator\Desktop\data\MR_T1\*.dcm');
[row,col]=size(picstr);
MRIori=zeros(512,512,160,'uint16');
IPP=zeros(160,3);
for i=1:row
    MRIori(:,:,i)=dicomread(['C:\Users\Administrator\Desktop\data\MR_T1\',picstr(i).name]);
end
%sagital
picstr=dir('C:\Users\Administrator\Desktop\data\PET\*.dcm');
[row,col]=size(picstr);
PET1=zeros(400,400,148,'uint16');
for i=1:row
    PET1(:,:,i)=dicomread(['C:\Users\Administrator\Desktop\data\PET\',picstr(i).name]);
end

fixedVolume=MRIori;
movingVolume=i_sagittal;
% 
centerFixed = size(fixedVolume)/2;
centerMoving = size(movingVolume)/2;

[optimizer,metric] = imregconfig('multimodal')
Rfixed  = imref3d(size(fixedVolume),0.468800000000000,0.468800000000000, 1);
Rmoving = imref3d(size(movingVolume),1.018210000000000,1.018210000000000,1.018210000000000);

optimizer.InitialRadius = 0.0003
movingRegisteredVolume = imregister(movingVolume,Rmoving, fixedVolume,Rfixed, 'rigid', optimizer, metric);
figure;
imshowpair(fixedVolume(:,:,centerFixed(3)),movingRegisteredVolume(:,:,centerFixed(3)));

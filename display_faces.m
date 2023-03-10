%The face image can be displayed in matlab with the following command lines:
%===========================================
load ('Yale_32x32.mat') ;

faceW = 32; 
faceH = 32; 
numPerLine = 11; 
ShowLine = 15; 

Y = zeros(faceH*ShowLine,faceW*numPerLine); 
for i=0:ShowLine-1 
  	for j=0:numPerLine-1 
    	Y(i*faceH+1:(i+1)*faceH,j*faceW+1:(j+1)*faceW) = reshape(fea(i*numPerLine+j+1,:),[faceH,faceW]); 
  	end 
end 
figure()
imagesc(Y);colormap(gray);
%===========================================

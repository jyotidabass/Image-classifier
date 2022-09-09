function Img_Classf(Input_Img)
%Input Argument- Image Variable; Output- Image Type
%   Features Calculated- GLCM Matrix , Energy from GLCM Matrix
%   and Entropy of the Input Image

% Sample input to the function
% 
Input_variable=imread("PXL_20211227_100311186 - Madhav Chauhan.jpg");
% 
Img_Classf(Input_variable)

%Sample Output from the function

% The Energy of the Input Image is  
% The Entropy of the Input Image is  
% The given Input is 

glcm=graycomatrix(Input_Img);
stats= graycoprops(glcm);
c= struct2cell(stats);
mat_data=cell2mat(c);
energy=mat_data(3);
entro=entropy(Input_Img);
fprintf('The Energy of the Input Image is %d \n',energy)
fprintf('The Entropy of the Input Image is %d \n',entro)

if energy==1
    disp('The given Input is Blank')
end

if ((energy>=0.0483) && (energy<=0.449)) && ((entro>=4.072) && (entro<=7.870))
       disp('The given Input is Chest X Ray')
elseif  ((energy>=0.143) && (energy<=0.636))  && ((entro>=2.242) && (entro<=5.061)) 
      disp('The given Input is Chest CT')
elseif ((energy>=0.229) && (energy<=0.869)) && ((entro>=1.685) && (entro<=6.068))
       disp('The given Input is Breast MRI')
elseif ((energy>=0.252) && (energy<=0.896)) && ((entro>=2.581) && (entro<=6.324))
       disp('The given Input is Abdomen CT Image')
elseif ((energy>=0.0557) && (energy<=0.750)) && ((entro>=1.693) && (entro<=7.880))
       disp('The given Input is Hand X Ray')
elseif  ((energy>=0.196) && (energy<=0.998)) && ((entro>=0.130) && (entro<=6.406))
       disp('The given Input is Head CT')
end

end
clc;
clear all;
close all;
% Remplacez le chemin du fichier DICOM par le chemin de votre fichier


% Chargez l'image et les informations DICOM
imageDICOM = dicomread('imag\image1.dcm');
informationsDICOM = dicominfo('imag\image1.dcm');

% Affichez l'image et toutes les informations DICOM
%imshow(imageDICOM, []);
disp('Informations DICOM :');
disp(informationsDICOM);

disp('Affichage du nom et prénom du patient avant modification :');
disp(informationsDICOM.PatientName);
%disp(informationsDICOM.PatientName.FamilyName);
%disp(informationsDICOM.PatientName.GivenName);


% Affichager les informations modifiées
informationsDICOM.PatientName.FamilyName = 'KOUSSOUBE';
informationsDICOM.PatientName.GivenName = 'Boureima';
informationsDICOM.PatientName.BitsAllocated = 32;
disp('Informations DICOM après modification :');
disp(informationsDICOM);

disp('Affichage du nom et prénom du patient après modification :');
disp(informationsDICOM.PatientName.FamilyName);
disp(informationsDICOM.PatientName.GivenName);


% Convertissez l'image DICOM en image JPEG
imageJPEG = im2uint8(imageDICOM); % Convertir en uint8 pour imwrite
nomFichierJPEG = 'imag\image.jpg'; % Spécifiez le nom du fichier JPEG




% Sauvegardez l'image au format JPEG
imwrite(imageJPEG, nomFichierJPEG, 'Quality', 100);

disp(['L''image a été convertie et sauvegardée en : ', nomFichierJPEG]);
imshow(imageJPEG, []);

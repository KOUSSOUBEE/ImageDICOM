% Remplacez le chemin de l'image JPEG par le chemin de votre fichier
cheminImageJPEG = 'chemin/vers/votre/image.jpg';

% Lisez l'image JPEG
imageJPEG = imread(cheminImageJPEG);

% Remplacez le chemin pour le fichier DICOM que vous souhaitez créer
cheminFichierDICOM = 'chemin/vers/votre/fichier.dcm';

% Créez un fichier DICOM à partir de l'image JPEG
dicomwrite(imageJPEG, cheminFichierDICOM, 'ObjectType', 'MR', 'WritePrivate', true, 'UseVRHeuristic', false);

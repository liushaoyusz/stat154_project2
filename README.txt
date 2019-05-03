README.file
05/02/2019

Stat154 Project2: Cloud Data

Authors:
Andy Liu
Jade Wang


## The motivation:
The goal of this project is to explore and classify the cloud data in the polar regions based on radiance 
recorded automatically by the MISR sensor abroad the NASA satellite Terra. 
 
We attempt to build a classification model to distinguish the presence of cloud from the absence of clouds 
in the images using the available signals/features. We train the models with "expert labels" of the dataset

Our dataset is from 3 files on Piazza: image1.txt, image2.txt, image3.txt.
Each pile includes one picture from the satellite.

You may find 11 columns in total:
y-coordinate, x-coordinate
expert labels (+1 = cloud, -1 = not cloud, 0 unlabeled)
NDAI, SD, and CORR: features that are computed based on subject matter knowledge.
Five radiance angles (AF,BF,CF,DF,AN) : raw features.

More information about the features is in the article yu2008.pdf.
 
For more information about MISR, see http://www-misr.jpl.nasa.gov/.



## Packages you need to install:
MASS, ggplot2, caret, rlist, dplyr, ggbiplot, devtools, class, ROCR, ISLR, car
**Use the code: install.packages("#package name")




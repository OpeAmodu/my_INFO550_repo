## Contents of Repo
This repo contains analysis of the [kaggle](https://www.kaggle.com/raghupalem/insurance-charges) dataset. This data set is saved as health_insurance.csv in the repo.  The data collects health care expenses of a sample of 1,338 individuals for a given year. Other characteristics recorded for each individual include age, sex, BMI, number of children, smoking status of the patient and Region of the United States that the person is from. 

The Makefile in this repo contains rules of how files would depend on each other to execute. 

The Costmodelling.Rmd file is a script that produces a report in HTML format containing details of analysis, codes and figures.

The Dockerfile contains instructions that helps to build a docker image

The package_install.R scripts helps to install packages needed for the code to run in R. 

Once the image is built, the packages will install automatically into the docker container


## Executing Code
To produce the html report, run the following bash command to build a docker image on your machine. Please note that you will need wsl2 and docker to build image.

```
make docker_build
```

Once the image has been build, please mount the current directory where all the files are saved to the project directory in the container by using the following bash sytax. Replace "/current_local_directory" with your local directory on your computer where all files from this repo was saved. This syntax points your local directory to the project directory in the docker container. Following this step should produce an html document in your local directory.

```
docker run -v /current_local_directory:/final_project -it final_proj
```

## Contents of Repo
This repo contains analysis of the [kaggle](https://www.kaggle.com/raghupalem/insurance-charges) dataset. This data set is saved as health_insurance.csv in the repo.  The data collects health care expenses of a sample of 1,338 individuals for a given year. Other characteristics recorded for each individual include age, sex, BMI, number of children, smoking status of the patient and Region of the United States that the person is from. 

The Makefile in this repo contains rules of how files would depend on each other to execute. 

The Costmodelling.Rmd file is a script that produces a report in HTML format containing details of analysis, codes and figures.

The Dockerfile contains instructions that helps to build a docker image

The package_install.R scripts helps to install packages needed for the code to run in R. 

Once the image is built, the packages will install automatically into the docker container


## Building Docker Image Locally
Once the contents of this repo has been downloaded to local computer, please set your directory to where the files were downloaded. Run the following bash commmand on your linux
system to build image. Please note that you could also directly download Image from my dockerhub account. Instructions to download image is found under the session "Pulling Docker Image from dockerhub"

```
make docker_build
```

### Running Container
Once the image has been built, please mount the current directory where all the files are saved to the project directory in the container by using the following bash sytax. Replace "/current_local_directory" with your local directory on your computer where all files from this repo was saved. This syntax mounts your local directory to the project directory in the docker container. Following this step should produce an html document in your local directory.

```
docker run -v /current_local_directory:/final_project -it final_proj
```

### Pulling Docker Image from dockerhub
To avoid building the image from locally from scratch, please pull the container from my docker hub account using the following syntax

```
docker pull opeamodu/final_project:final_proj
```

Once the container has been pulled, please follow the instructions under the "Running Container" session to produce the HTML report in your local drive. 

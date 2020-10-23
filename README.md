## Content of Directory
This repo contains analysis of the [kaggle](https://www.kaggle.com/raghupalem/insurance-charges) dataset. This data set is saved as health_insurance.csv in the repo.  The data collects health care expenses of a sample of 1,338 individuals for a given year. Other characteristics recorded for each individual include age, sex, BMI, number of children, smoking status of the patient and Region of the United States that the person is from. 

The Makefile in this repo contains rules of how files would depend on each other to execute. 

The Costmodelling.Rmd file is a script that produces a report in HTML format containing details of analysis, codes and figures.

## Installing Needed Packages
The code below would install the needed packages for code to run. Please note that a recent version of R would be needed to make code run without issues

```
installed_pkgs <- row.names(installed.packages())
pkgs <- c("dplyr", "psych", "gridExtra", "ggplot2", "knitr")
for(p in pkgs){
	if(!(p %in% installed_pkgs)){
		install.packages(p)
	}
}

```

## Executing Code
To produce the html report, please run the following bash script

```
Rscript -e "rmarkdown::render('costmodelling.Rmd')"
```

To install needed packages you can also run the following bash script

```
chmod +x package_install.R && \
Rscript package_install.R
```

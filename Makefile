## install : install the packages necessary to run code
install_packages: package_install.R
	chmod +x package_install.R && \
	Rscript package_install.R

## costmodelling.html : Create a html report for my healthcare cost modelling
costmodelling.html: health_insurance.csv costmodelling.Rmd
	Rscript -e "rmarkdown::render('costmodelling.Rmd')"

docker_build: Dockerfile
	docker build -t final_proj .
	
 

.PHONY: help
help: Makefile
	@sed -n 's/^##//p' $<
	
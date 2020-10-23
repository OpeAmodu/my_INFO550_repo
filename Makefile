## costmodelling.html : Create a html report for my healthcare cost modelling
costmodelling.html: health_insurance.csv costmodelling.Rmd
	Rscript -e "rmarkdown::render('costmodelling.Rmd', quiet = TRUE)"


.PHONY: help
help: Makefile
	@sed -n 's/^##//p' $<
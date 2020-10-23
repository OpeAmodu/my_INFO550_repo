installed_pkgs <- row.names(installed.packages())
pkgs <- c("dplyr", "psych", "gridExtra", "ggplot2", "knitr")
for(p in pkgs){
	if(!(p %in% installed_pkgs)){
		install.packages(p)
	}
}


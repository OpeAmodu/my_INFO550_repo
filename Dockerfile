FROM rocker/tidyverse

# making a project file directory for my image
RUN mkdir /final_project

# copying all the contents of my local folder to the project folder
COPY ./ /final_project/

# make R scripts executable
RUN chmod +x /final_project/*.R

#installing needed packages
RUN make -C final_project install_packages


#setting an environment variable
ENV project = "final_project"

#make container entry point bash
CMD make -C final_project costmodelling.html 
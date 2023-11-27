FROM rocker/shiny:4.3.2

RUN apt-get update
RUN apt-get -y install curl libxml2 libxml2-dev libcurl4-openssl-dev libssl-dev libglpk-dev
ADD installRpackages.R /tmp
WORKDIR /tmp
RUN Rscript /tmp/installRpackages.R


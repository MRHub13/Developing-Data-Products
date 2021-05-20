# Developing Data Products - Course Project

The course project Shiny application visualize positive correlation between duration of life expectancy & GDP per capita for each of 142 countries - the application can be found @ https://mrshiny13.shinyapps.io/DDP_Course_Project_Shiny_Application/

The application draws data from package 'gapminder' wich provides values for life expectancy, GDP per capita, and population for 142 countries @ five years intervals in the period from 1952 to 2007. 

## Application Overview

- application is written in Shiny - a web application framework for R
- source code consists of two files, *server.R* & *ui.R*
  - *server.R* covers the Shiny web application server logic  
  - *ui.R* includes the the user-interface definition
- application is hosted @ Rstudio's Shiny server in the cloud (*shinyapps.io*)

# How Application Works?

## 1. Left Panel of the Application

- **Title** labeled by default but user can modify the title 
- **Point size** a user can change the size of plot points 
- **Add best fiting (LM) line** can be applied 
- **Point color** different plot color can be selected
- **Continent** & **Country** can be filtered 
- **Life expectancy** interval can be selected on slieder
- user can download filtered data by using a **Download** button

## 2. Main Panel of the Application: 

There are two tabs @ the main panel:
- *Plot* - displays plot for corresponding dataframe
- *Table* - displays a searchable-interactive table for corresponding dataframe


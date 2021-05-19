library(plotly)
library(ggplot2)
library(gapminder)
library(DT)
library(colourpicker)
library(shinycustomloader)

ui <- fluidPage(
    ### application title ----
    titlePanel("'gapminder' Data Visualization - life expectancy (years) vs. GDP (USD)"),
    ### sidebar layout including input/output definitions ----
    sidebarLayout(
        ### sidebar panel --> inputs ----
        sidebarPanel(
            textInput("title", "Title", "life expectancy (years) vs. GDP (USD)"),
            numericInput("size", "Point size", 2, 1),
            checkboxInput("fit", "Add best fiting (LM) line", FALSE),
            colourInput("color", "Point color", value = "#D91161"),
            selectInput("continent", "Continent",
                        choices = c("All", levels(gapminder$continent))),
            selectInput("country", "Country",
                        choices = c("All", levels(gapminder$country))),
            sliderInput(inputId = "life", label = "Life expectancy",
                        min = 0, max = 120,
                        value = c(25, 75)),
            downloadButton("download_data")
        ),
        ### panel for displaying outputs ----
        mainPanel(
            ### tabset --> plot, summary, and table ----
            tabsetPanel(type = "tabs",
                        tabPanel("Plot", withLoader(plotlyOutput("plot")) ),
                        tabPanel("Table", withLoader(DT::dataTableOutput("table")))
            )
        )
    )
)
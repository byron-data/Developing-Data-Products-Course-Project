#
# This is the server definition of the Shiny web application.
# For more information see http://www.rstudio.com/shiny/
#

# Include libraries
library(shiny)
library(reshape2)
library(dplyr)
library(markdown)

# Load functions
source("functions.R", local = TRUE)

# Load data
df <- read.csv("data/nottem.csv", header = TRUE)
years <- rownames(df)
#months <- colnames(df)

df <- melt(as.matrix(df))
names(df) <- c("Year", "Month", "Temp")

shinyServer(function(input, output, session) {
    # Define and initialize reactive values
    values <- reactiveValues()

    #values$months <- months

    # Create month checkbox
    #output$monthControls <- renderUI({
    #  checkboxGroupInput('months', 'Months', months, selected=values$months)
    #})

    # Prepare dataset for chart using the user year/month choices
    df.filter <- reactive({
        filter_df(df, input$range[1], input$range[2], input$months)
    })

    # Prepare dataset for display
    dataTable <- reactive({
        df
    })

    # Render chart (temperature by year) filtered by the user year/month choices
    output$tempByYear <- renderChart({
        temperature_chart(df.filter())
    })

    # Render data table (raw data)
    output$table <- renderDataTable({
        dataTable()
    }, options = list(bFilter = FALSE, iDisplayLength = 25))
})

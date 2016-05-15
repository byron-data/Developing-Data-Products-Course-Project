#
# This is the user interface definition of the Shiny web application.
# For more information see http://www.rstudio.com/shiny/
#

library(rCharts)

months <-
    c("Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec")

shinyUI(
    # Main page with one "View" tab for interacting with the data and
    # another tab "About" for displaying application information
    navbarPage(
        "Average Monthly Temperatures at Nottingham, 1920–1939",
        tabPanel(
            "View",
            # Sidebar panel has a slider control for the year and
            # month checkboxes that allow the user to control the display
            sidebarPanel(
                sliderInput(
                    "range",
                    "Year Range",
                    min = 1920,
                    max = 1939,
                    value = c(1920, 1939),
                    sep = ""
                ),

                #uiOutput("monthControls"),
                checkboxGroupInput('months', 'Months', months, selected =
                                       months)
            ),

            # Main panel has one "Chart" tab for displaying the multi bar chart
            # and another tab "Data" for displaying the raw temperature data
            mainPanel(tabsetPanel(
                # Chart data
                tabPanel(
                    p(icon("bar-chart"), "Chart"),
                    h4('Temperature by year', align = "center"),
                    showOutput("tempByYear", "nvd3")
                ),
                # View raw data
                tabPanel(p(icon("table"), "Data"),
                         dataTableOutput(outputId = "table"))
            ))
        ),

        tabPanel("About", mainPanel(includeMarkdown("include.md")))
    )
)

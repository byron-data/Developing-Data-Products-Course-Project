#' Filter the dataset to the values selected
#'
#' @param df data.table
#' @param startYear integer
#' @param endYear integer
#' @param months character vector
#' @return data.table object
#'
filter_df <- function(df, startYear, endYear, months) {
    df %>% filter(Year >= startYear, Year <= endYear, Month %in% months)
}

#' Prepare plot of number of events by year
#'
#' @param df data.table
#' @param dom chart element
#' @return nPlot chart
#'
temperature_chart <- function(df, dom = "tempByYear") {
    tempByYear <- nPlot(
        Temp ~ Year,
        data = df,
        group = "Month",
        type = "multiBarChart",
        dom = dom,
        height = 800,
        width = 1000
    )

    tempByYear$xAxis(axisLabel = "Year", width = 80)
    tempByYear$yAxis(axisLabel = "Temperature", width = 60)
    tempByYear
}

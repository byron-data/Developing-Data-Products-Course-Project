Nottingham Average Temperature Presentation
========================================================
author: Byron Stuart
date: 14th May 2016
autosize: true

Introduction
========================================================

The data given in dataset nottem (from library(MASS)) is a time series object containing average air temperatures at Nottingham Castle in degrees Fahrenheit for 20 years (1920-1939).

- This temperature data is of historical significance
- The data shows the average temperature on a month by month basis
- The user of the shiny app can choose any range of year between 1920-1939
- The user of the shiny app can choose any combination of the 12 months
- The multi bar chart can be displayed as grouped or stacked
- The user can also view the raw data

Initial look at the data
========================================================


```r
str(nottem)
```

```
 Time-Series [1:240] from 1920 to 1940: 40.6 40.8 44.4 46.7 54.1 58.5 57.7 56.4 54.3 50.5 ...
```




```r
#Massaged data in a data frame
head(nottemDF, 1)
```

```
      Jan  Feb  Mar  Apr  May  Jun  Jul  Aug  Sep  Oct  Nov  Dec
1920 40.6 40.8 44.4 46.7 54.1 58.5 57.7 56.4 54.3 50.5 42.9 39.8
```




```r
#Flattened data for the chart
head(df, 1)
```

```
  Year Month Temp
1 1920   Jan 40.6
```

What the chart looks like in the shiny app
========================================================
The application has a year range slider and month check boxes (not shown here) that determine which data is displayed





```r
chart<-nPlot(Temp~Year,data=df,group="Month",
type="multiBarChart",height=400,width=1000)
```

<link rel='stylesheet' href=//cdnjs.cloudflare.com/ajax/libs/nvd3/1.1.15-beta/nv.d3.min.css>
<script type='text/javascript' src=//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js></script>
<script type='text/javascript' src=//d3js.org/d3.v3.min.js></script>
<script type='text/javascript' src=//cdnjs.cloudflare.com/ajax/libs/nvd3/1.1.15-beta/nv.d3.min.js></script>
<script type='text/javascript' src=//nvd3.org/assets/lib/fisheye.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 1000px;
    height: 400px;
  }  
  </style>
<div id = 'chart1e605d942506' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart1e605d942506()
    });
    function drawchart1e605d942506(){  
      var opts = {
 "dom": "chart1e605d942506",
"width":   1000,
"height":    400,
"x": "Year",
"y": "Temp",
"group": "Month",
"type": "multiBarChart",
"id": "chart1e605d942506" 
},
        data = [
 {
 "Year": 1920,
"Month": "Jan",
"Temp":           40.6 
},
{
 "Year": 1921,
"Month": "Jan",
"Temp":           44.2 
},
{
 "Year": 1922,
"Month": "Jan",
"Temp":           37.5 
},
{
 "Year": 1923,
"Month": "Jan",
"Temp":           41.8 
},
{
 "Year": 1924,
"Month": "Jan",
"Temp":           39.3 
},
{
 "Year": 1925,
"Month": "Jan",
"Temp":             40 
},
{
 "Year": 1926,
"Month": "Jan",
"Temp":           39.2 
},
{
 "Year": 1927,
"Month": "Jan",
"Temp":           39.4 
},
{
 "Year": 1928,
"Month": "Jan",
"Temp":           40.8 
},
{
 "Year": 1929,
"Month": "Jan",
"Temp":           34.8 
},
{
 "Year": 1930,
"Month": "Jan",
"Temp":           41.6 
},
{
 "Year": 1931,
"Month": "Jan",
"Temp":           37.1 
},
{
 "Year": 1932,
"Month": "Jan",
"Temp":           42.4 
},
{
 "Year": 1933,
"Month": "Jan",
"Temp":           36.2 
},
{
 "Year": 1934,
"Month": "Jan",
"Temp":           39.4 
},
{
 "Year": 1935,
"Month": "Jan",
"Temp":             40 
},
{
 "Year": 1936,
"Month": "Jan",
"Temp":           37.3 
},
{
 "Year": 1937,
"Month": "Jan",
"Temp":           40.8 
},
{
 "Year": 1938,
"Month": "Jan",
"Temp":           42.1 
},
{
 "Year": 1939,
"Month": "Jan",
"Temp":           39.4 
},
{
 "Year": 1920,
"Month": "Feb",
"Temp":           40.8 
},
{
 "Year": 1921,
"Month": "Feb",
"Temp":           39.8 
},
{
 "Year": 1922,
"Month": "Feb",
"Temp":           38.7 
},
{
 "Year": 1923,
"Month": "Feb",
"Temp":           40.1 
},
{
 "Year": 1924,
"Month": "Feb",
"Temp":           37.5 
},
{
 "Year": 1925,
"Month": "Feb",
"Temp":           40.5 
},
{
 "Year": 1926,
"Month": "Feb",
"Temp":           43.4 
},
{
 "Year": 1927,
"Month": "Feb",
"Temp":           38.5 
},
{
 "Year": 1928,
"Month": "Feb",
"Temp":           41.1 
},
{
 "Year": 1929,
"Month": "Feb",
"Temp":           31.3 
},
{
 "Year": 1930,
"Month": "Feb",
"Temp":           37.1 
},
{
 "Year": 1931,
"Month": "Feb",
"Temp":           38.4 
},
{
 "Year": 1932,
"Month": "Feb",
"Temp":           38.4 
},
{
 "Year": 1933,
"Month": "Feb",
"Temp":           39.3 
},
{
 "Year": 1934,
"Month": "Feb",
"Temp":           38.2 
},
{
 "Year": 1935,
"Month": "Feb",
"Temp":           42.6 
},
{
 "Year": 1936,
"Month": "Feb",
"Temp":             35 
},
{
 "Year": 1937,
"Month": "Feb",
"Temp":             41 
},
{
 "Year": 1938,
"Month": "Feb",
"Temp":           41.2 
},
{
 "Year": 1939,
"Month": "Feb",
"Temp":           40.9 
},
{
 "Year": 1920,
"Month": "Mar",
"Temp":           44.4 
},
{
 "Year": 1921,
"Month": "Mar",
"Temp":           45.1 
},
{
 "Year": 1922,
"Month": "Mar",
"Temp":           39.5 
},
{
 "Year": 1923,
"Month": "Mar",
"Temp":           42.9 
},
{
 "Year": 1924,
"Month": "Mar",
"Temp":           38.3 
},
{
 "Year": 1925,
"Month": "Mar",
"Temp":           40.8 
},
{
 "Year": 1926,
"Month": "Mar",
"Temp":           43.4 
},
{
 "Year": 1927,
"Month": "Mar",
"Temp":           45.3 
},
{
 "Year": 1928,
"Month": "Mar",
"Temp":           42.8 
},
{
 "Year": 1929,
"Month": "Mar",
"Temp":             41 
},
{
 "Year": 1930,
"Month": "Mar",
"Temp":           41.2 
},
{
 "Year": 1931,
"Month": "Mar",
"Temp":           38.4 
},
{
 "Year": 1932,
"Month": "Mar",
"Temp":           40.3 
},
{
 "Year": 1933,
"Month": "Mar",
"Temp":           44.5 
},
{
 "Year": 1934,
"Month": "Mar",
"Temp":           40.4 
},
{
 "Year": 1935,
"Month": "Mar",
"Temp":           43.5 
},
{
 "Year": 1936,
"Month": "Mar",
"Temp":             44 
},
{
 "Year": 1937,
"Month": "Mar",
"Temp":           38.4 
},
{
 "Year": 1938,
"Month": "Mar",
"Temp":           47.3 
},
{
 "Year": 1939,
"Month": "Mar",
"Temp":           42.4 
},
{
 "Year": 1920,
"Month": "Apr",
"Temp":           46.7 
},
{
 "Year": 1921,
"Month": "Apr",
"Temp":             47 
},
{
 "Year": 1922,
"Month": "Apr",
"Temp":           42.1 
},
{
 "Year": 1923,
"Month": "Apr",
"Temp":           45.8 
},
{
 "Year": 1924,
"Month": "Apr",
"Temp":           45.5 
},
{
 "Year": 1925,
"Month": "Apr",
"Temp":           45.1 
},
{
 "Year": 1926,
"Month": "Apr",
"Temp":           48.9 
},
{
 "Year": 1927,
"Month": "Apr",
"Temp":           47.1 
},
{
 "Year": 1928,
"Month": "Apr",
"Temp":           47.3 
},
{
 "Year": 1929,
"Month": "Apr",
"Temp":           43.9 
},
{
 "Year": 1930,
"Month": "Apr",
"Temp":           46.9 
},
{
 "Year": 1931,
"Month": "Apr",
"Temp":           46.5 
},
{
 "Year": 1932,
"Month": "Apr",
"Temp":           44.6 
},
{
 "Year": 1933,
"Month": "Apr",
"Temp":           48.7 
},
{
 "Year": 1934,
"Month": "Apr",
"Temp":           46.9 
},
{
 "Year": 1935,
"Month": "Apr",
"Temp":           47.1 
},
{
 "Year": 1936,
"Month": "Apr",
"Temp":           43.9 
},
{
 "Year": 1937,
"Month": "Apr",
"Temp":           47.4 
},
{
 "Year": 1938,
"Month": "Apr",
"Temp":           46.6 
},
{
 "Year": 1939,
"Month": "Apr",
"Temp":           47.8 
},
{
 "Year": 1920,
"Month": "May",
"Temp":           54.1 
},
{
 "Year": 1921,
"Month": "May",
"Temp":           54.1 
},
{
 "Year": 1922,
"Month": "May",
"Temp":           55.7 
},
{
 "Year": 1923,
"Month": "May",
"Temp":           49.2 
},
{
 "Year": 1924,
"Month": "May",
"Temp":           53.2 
},
{
 "Year": 1925,
"Month": "May",
"Temp":           53.8 
},
{
 "Year": 1926,
"Month": "May",
"Temp":           50.6 
},
{
 "Year": 1927,
"Month": "May",
"Temp":           51.7 
},
{
 "Year": 1928,
"Month": "May",
"Temp":           50.9 
},
{
 "Year": 1929,
"Month": "May",
"Temp":           53.1 
},
{
 "Year": 1930,
"Month": "May",
"Temp":           51.2 
},
{
 "Year": 1931,
"Month": "May",
"Temp":           53.5 
},
{
 "Year": 1932,
"Month": "May",
"Temp":           50.9 
},
{
 "Year": 1933,
"Month": "May",
"Temp":           54.2 
},
{
 "Year": 1934,
"Month": "May",
"Temp":           53.4 
},
{
 "Year": 1935,
"Month": "May",
"Temp":             50 
},
{
 "Year": 1936,
"Month": "May",
"Temp":           52.7 
},
{
 "Year": 1937,
"Month": "May",
"Temp":           54.1 
},
{
 "Year": 1938,
"Month": "May",
"Temp":           52.4 
},
{
 "Year": 1939,
"Month": "May",
"Temp":           52.4 
},
{
 "Year": 1920,
"Month": "Jun",
"Temp":           58.5 
},
{
 "Year": 1921,
"Month": "Jun",
"Temp":           58.7 
},
{
 "Year": 1922,
"Month": "Jun",
"Temp":           57.8 
},
{
 "Year": 1923,
"Month": "Jun",
"Temp":           52.7 
},
{
 "Year": 1924,
"Month": "Jun",
"Temp":           57.7 
},
{
 "Year": 1925,
"Month": "Jun",
"Temp":           59.4 
},
{
 "Year": 1926,
"Month": "Jun",
"Temp":           56.8 
},
{
 "Year": 1927,
"Month": "Jun",
"Temp":             55 
},
{
 "Year": 1928,
"Month": "Jun",
"Temp":           56.4 
},
{
 "Year": 1929,
"Month": "Jun",
"Temp":           56.9 
},
{
 "Year": 1930,
"Month": "Jun",
"Temp":           60.4 
},
{
 "Year": 1931,
"Month": "Jun",
"Temp":           58.4 
},
{
 "Year": 1932,
"Month": "Jun",
"Temp":             57 
},
{
 "Year": 1933,
"Month": "Jun",
"Temp":           60.8 
},
{
 "Year": 1934,
"Month": "Jun",
"Temp":           59.6 
},
{
 "Year": 1935,
"Month": "Jun",
"Temp":           60.5 
},
{
 "Year": 1936,
"Month": "Jun",
"Temp":           58.6 
},
{
 "Year": 1937,
"Month": "Jun",
"Temp":           58.6 
},
{
 "Year": 1938,
"Month": "Jun",
"Temp":             59 
},
{
 "Year": 1939,
"Month": "Jun",
"Temp":             58 
},
{
 "Year": 1920,
"Month": "Jul",
"Temp":           57.7 
},
{
 "Year": 1921,
"Month": "Jul",
"Temp":           66.3 
},
{
 "Year": 1922,
"Month": "Jul",
"Temp":           56.8 
},
{
 "Year": 1923,
"Month": "Jul",
"Temp":           64.2 
},
{
 "Year": 1924,
"Month": "Jul",
"Temp":           60.8 
},
{
 "Year": 1925,
"Month": "Jul",
"Temp":           63.5 
},
{
 "Year": 1926,
"Month": "Jul",
"Temp":           62.5 
},
{
 "Year": 1927,
"Month": "Jul",
"Temp":           60.4 
},
{
 "Year": 1928,
"Month": "Jul",
"Temp":           62.2 
},
{
 "Year": 1929,
"Month": "Jul",
"Temp":           62.5 
},
{
 "Year": 1930,
"Month": "Jul",
"Temp":           60.1 
},
{
 "Year": 1931,
"Month": "Jul",
"Temp":           60.6 
},
{
 "Year": 1932,
"Month": "Jul",
"Temp":           62.1 
},
{
 "Year": 1933,
"Month": "Jul",
"Temp":           65.5 
},
{
 "Year": 1934,
"Month": "Jul",
"Temp":           66.5 
},
{
 "Year": 1935,
"Month": "Jul",
"Temp":           64.6 
},
{
 "Year": 1936,
"Month": "Jul",
"Temp":             60 
},
{
 "Year": 1937,
"Month": "Jul",
"Temp":           61.4 
},
{
 "Year": 1938,
"Month": "Jul",
"Temp":           59.6 
},
{
 "Year": 1939,
"Month": "Jul",
"Temp":           60.7 
},
{
 "Year": 1920,
"Month": "Aug",
"Temp":           56.4 
},
{
 "Year": 1921,
"Month": "Aug",
"Temp":           59.9 
},
{
 "Year": 1922,
"Month": "Aug",
"Temp":           54.3 
},
{
 "Year": 1923,
"Month": "Aug",
"Temp":           59.6 
},
{
 "Year": 1924,
"Month": "Aug",
"Temp":           58.2 
},
{
 "Year": 1925,
"Month": "Aug",
"Temp":             61 
},
{
 "Year": 1926,
"Month": "Aug",
"Temp":             62 
},
{
 "Year": 1927,
"Month": "Aug",
"Temp":           60.5 
},
{
 "Year": 1928,
"Month": "Aug",
"Temp":           60.5 
},
{
 "Year": 1929,
"Month": "Aug",
"Temp":           60.3 
},
{
 "Year": 1930,
"Month": "Aug",
"Temp":           61.6 
},
{
 "Year": 1931,
"Month": "Aug",
"Temp":           58.2 
},
{
 "Year": 1932,
"Month": "Aug",
"Temp":           63.5 
},
{
 "Year": 1933,
"Month": "Aug",
"Temp":           64.9 
},
{
 "Year": 1934,
"Month": "Aug",
"Temp":           60.4 
},
{
 "Year": 1935,
"Month": "Aug",
"Temp":             64 
},
{
 "Year": 1936,
"Month": "Aug",
"Temp":           61.1 
},
{
 "Year": 1937,
"Month": "Aug",
"Temp":           61.8 
},
{
 "Year": 1938,
"Month": "Aug",
"Temp":           60.4 
},
{
 "Year": 1939,
"Month": "Aug",
"Temp":           61.8 
},
{
 "Year": 1920,
"Month": "Sep",
"Temp":           54.3 
},
{
 "Year": 1921,
"Month": "Sep",
"Temp":             57 
},
{
 "Year": 1922,
"Month": "Sep",
"Temp":           54.3 
},
{
 "Year": 1923,
"Month": "Sep",
"Temp":           54.4 
},
{
 "Year": 1924,
"Month": "Sep",
"Temp":           56.4 
},
{
 "Year": 1925,
"Month": "Sep",
"Temp":             53 
},
{
 "Year": 1926,
"Month": "Sep",
"Temp":           57.5 
},
{
 "Year": 1927,
"Month": "Sep",
"Temp":           54.7 
},
{
 "Year": 1928,
"Month": "Sep",
"Temp":           55.4 
},
{
 "Year": 1929,
"Month": "Sep",
"Temp":           59.8 
},
{
 "Year": 1930,
"Month": "Sep",
"Temp":             57 
},
{
 "Year": 1931,
"Month": "Sep",
"Temp":           53.8 
},
{
 "Year": 1932,
"Month": "Sep",
"Temp":           56.3 
},
{
 "Year": 1933,
"Month": "Sep",
"Temp":           60.1 
},
{
 "Year": 1934,
"Month": "Sep",
"Temp":           59.2 
},
{
 "Year": 1935,
"Month": "Sep",
"Temp":           56.8 
},
{
 "Year": 1936,
"Month": "Sep",
"Temp":           58.1 
},
{
 "Year": 1937,
"Month": "Sep",
"Temp":           56.3 
},
{
 "Year": 1938,
"Month": "Sep",
"Temp":             57 
},
{
 "Year": 1939,
"Month": "Sep",
"Temp":           58.2 
},
{
 "Year": 1920,
"Month": "Oct",
"Temp":           50.5 
},
{
 "Year": 1921,
"Month": "Oct",
"Temp":           54.2 
},
{
 "Year": 1922,
"Month": "Oct",
"Temp":           47.1 
},
{
 "Year": 1923,
"Month": "Oct",
"Temp":           49.2 
},
{
 "Year": 1924,
"Month": "Oct",
"Temp":           49.8 
},
{
 "Year": 1925,
"Month": "Oct",
"Temp":             50 
},
{
 "Year": 1926,
"Month": "Oct",
"Temp":           46.7 
},
{
 "Year": 1927,
"Month": "Oct",
"Temp":           50.3 
},
{
 "Year": 1928,
"Month": "Oct",
"Temp":           50.2 
},
{
 "Year": 1929,
"Month": "Oct",
"Temp":           49.2 
},
{
 "Year": 1930,
"Month": "Oct",
"Temp":           50.9 
},
{
 "Year": 1931,
"Month": "Oct",
"Temp":           46.6 
},
{
 "Year": 1932,
"Month": "Oct",
"Temp":           47.3 
},
{
 "Year": 1933,
"Month": "Oct",
"Temp":           50.2 
},
{
 "Year": 1934,
"Month": "Oct",
"Temp":           51.2 
},
{
 "Year": 1935,
"Month": "Oct",
"Temp":           48.6 
},
{
 "Year": 1936,
"Month": "Oct",
"Temp":           49.6 
},
{
 "Year": 1937,
"Month": "Oct",
"Temp":           50.9 
},
{
 "Year": 1938,
"Month": "Oct",
"Temp":           50.7 
},
{
 "Year": 1939,
"Month": "Oct",
"Temp":           46.7 
},
{
 "Year": 1920,
"Month": "Nov",
"Temp":           42.9 
},
{
 "Year": 1921,
"Month": "Nov",
"Temp":           39.7 
},
{
 "Year": 1922,
"Month": "Nov",
"Temp":           41.8 
},
{
 "Year": 1923,
"Month": "Nov",
"Temp":           36.3 
},
{
 "Year": 1924,
"Month": "Nov",
"Temp":           44.4 
},
{
 "Year": 1925,
"Month": "Nov",
"Temp":           38.1 
},
{
 "Year": 1926,
"Month": "Nov",
"Temp":           41.6 
},
{
 "Year": 1927,
"Month": "Nov",
"Temp":           42.3 
},
{
 "Year": 1928,
"Month": "Nov",
"Temp":             43 
},
{
 "Year": 1929,
"Month": "Nov",
"Temp":           42.9 
},
{
 "Year": 1930,
"Month": "Nov",
"Temp":             43 
},
{
 "Year": 1931,
"Month": "Nov",
"Temp":           45.5 
},
{
 "Year": 1932,
"Month": "Nov",
"Temp":           43.6 
},
{
 "Year": 1933,
"Month": "Nov",
"Temp":           42.1 
},
{
 "Year": 1934,
"Month": "Nov",
"Temp":           42.8 
},
{
 "Year": 1935,
"Month": "Nov",
"Temp":           44.2 
},
{
 "Year": 1936,
"Month": "Nov",
"Temp":           41.6 
},
{
 "Year": 1937,
"Month": "Nov",
"Temp":           41.4 
},
{
 "Year": 1938,
"Month": "Nov",
"Temp":           47.8 
},
{
 "Year": 1939,
"Month": "Nov",
"Temp":           46.6 
},
{
 "Year": 1920,
"Month": "Dec",
"Temp":           39.8 
},
{
 "Year": 1921,
"Month": "Dec",
"Temp":           42.8 
},
{
 "Year": 1922,
"Month": "Dec",
"Temp":           41.7 
},
{
 "Year": 1923,
"Month": "Dec",
"Temp":           37.6 
},
{
 "Year": 1924,
"Month": "Dec",
"Temp":           43.6 
},
{
 "Year": 1925,
"Month": "Dec",
"Temp":           36.3 
},
{
 "Year": 1926,
"Month": "Dec",
"Temp":           39.8 
},
{
 "Year": 1927,
"Month": "Dec",
"Temp":           35.2 
},
{
 "Year": 1928,
"Month": "Dec",
"Temp":           37.3 
},
{
 "Year": 1929,
"Month": "Dec",
"Temp":           41.9 
},
{
 "Year": 1930,
"Month": "Dec",
"Temp":           38.8 
},
{
 "Year": 1931,
"Month": "Dec",
"Temp":           40.6 
},
{
 "Year": 1932,
"Month": "Dec",
"Temp":           41.8 
},
{
 "Year": 1933,
"Month": "Dec",
"Temp":           35.8 
},
{
 "Year": 1934,
"Month": "Dec",
"Temp":           45.8 
},
{
 "Year": 1935,
"Month": "Dec",
"Temp":           36.4 
},
{
 "Year": 1936,
"Month": "Dec",
"Temp":           41.3 
},
{
 "Year": 1937,
"Month": "Dec",
"Temp":           37.1 
},
{
 "Year": 1938,
"Month": "Dec",
"Temp":           39.2 
},
{
 "Year": 1939,
"Month": "Dec",
"Temp":           37.8 
} 
]
  
      if(!(opts.type==="pieChart" || opts.type==="sparklinePlus" || opts.type==="bulletChart")) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? 'main' : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .width(opts.width)
          .height(opts.height)
          
        if (opts.type != "bulletChart"){
          chart
            .x(function(d) { return d[opts.x] })
            .y(function(d) { return d[opts.y] })
        }
          
         
        
          
        chart.xAxis
  .axisLabel("Year")
  .width(    80)

        
        
        chart.yAxis
  .axisLabel("Temperature")
  .width(    60)
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>

Conclusion
========================================================

This presentation was created in RStudio

- The Shiny app **NottinghamAvgTemp** can be found here: [NottinghamAvgTemp](https://byron-data.shinyapps.io/NottinghamAvgTemp/)
- Click on [Shiny](http://shiny.rstudio.com/articles/shinyapps.html) for  details of getting started with shinyapps.io
- Click on [Authoring R Presentations](https://support.rstudio.com/hc/en-us/articles/200486468-Authoring-R-Presentations) for details of creating presentations like this one
- Click on [rCharts](http://rcharts.io) for more details of the graphing package used
- Note that the initial dataset nottem is a time series so it had to be modified into a data frame with the years as row names and the months as column names. It was then written to a comma separted file for easy use by the Shiny app.
- It would be interesting to obtain more recent data to observe any long term trends in temperature

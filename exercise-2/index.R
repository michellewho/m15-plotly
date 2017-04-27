install.packages('plotly')
library(plotly)

#Create data
Classes <- c('INFO 201', 'INFO 380', 'INFO 340', 'INFO 445')
AvgGPA <- c(3.8, 3.7, 3.6, 3.5)
NumStudents <- c(120, 40, 60, 20)
data <- data.frame(Classes, AvgGPA, NumStudents)

#Using plotly to plot data
plot_ly(data, x= ~AvgGPA, y = ~NumStudents, type = 'surface',
        mode = 'text', text = ~Classes, textposition = 'center', 
        textfront = list(color = '#000000', size = 14)) %>%
  xaxis = list(title = 'Average GPA', 
               zeroline = TRUE, 
               range = c(0, 7)), 
  yaxis = list(title = 'Number of Students in Class',                  
               range = c(0,500)))
)


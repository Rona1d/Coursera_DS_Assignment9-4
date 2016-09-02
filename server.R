library(shiny)
suppressPackageStartupMessages(library(googleVis))

country <- c("Albania", "Andorra", "Austria", "Belarus", "Belgium", "Bosnia And Herzegovina", 
             "Bulgaria", "Croatia", "Czech Republic", "Denmark", "Estonia", "Faroe Islands", "Finland", "France", 
             "Germany", "Gibraltar", "Greece", "Guernsey", "Holy See", "Hungary", "Iceland", 
             "Ireland", "Isle Of Man", "Italy", "Jersey", "Latvia", "Liechtenstein", "Lithuania", "Luxembourg", 
             "Macedonia", "Malta", "Moldova", "Monaco", "Montenegro", 
             "Netherlands", "Norway", "Poland", "Portugal", "Romania", "Russian Federation", "San Marino", "Serbia", 
             "Slovakia", "Slovenia", "Spain", "Sweden", "Switzerland", "Ukraine", "United Kingdom")
capital <- rep("a",7)
residents <- c(1:49)


df <- data.frame(country,capital,residents)


shinyServer(
  function(input, output) {
          
        
          output$text1 <- renderText({ 
                  paste("This is where you can find", input$var) 
                  })
          
          output$text2 <- renderText({ 
                  paste("Its capital is", df$capital[df$country==input$var]) 
          })
          
          
          output$gvis <- renderGvis({
                  
                  df2 <- subset(df, country == input$var)
                  
                  gvisGeoChart(df2, locationvar="country",
                               options=list(width=600, height=400, region = "150"))
                  
          
          
          })
  }
)


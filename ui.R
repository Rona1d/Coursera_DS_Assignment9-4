shinyUI(fluidPage(
        titlePanel("Countries in Europe"),
        
        sidebarLayout(
                sidebarPanel(
                        
                        p("Choose a European country from the list below and it's location will appear on the map to the right"),
                        
                        selectInput("var", 
                                    label = "Choose a country",
                                    choices = list("Albania", "Andorra", "Austria", "Belarus", "Belgium", "Bosnia And Herzegovina", 
                                                   "Bulgaria", "Croatia", "Czech Republic", "Denmark", "Estonia", "Faroe Islands", "Finland", "France", 
                                                   "Germany", "Gibraltar", "Greece", "Guernsey", "Holy See", "Hungary", "Iceland", 
                                                   "Ireland", "Isle Of Man", "Italy", "Jersey", "Latvia", "Liechtenstein", "Lithuania", "Luxembourg", 
                                                   "Macedonia", "Malta", "Moldova", "Monaco", "Montenegro", 
                                                   "Netherlands", "Norway", "Poland", "Portugal", "Romania", "Russian Federation", "San Marino", "Serbia", 
                                                   "Slovakia", "Slovenia", "Spain", "Sweden", "Switzerland", "Ukraine")),
                                    
                        
                        br(),
                        br(),
                        br()
                                
                
                        
                                    
                                 
               
                                                ),
                        
                
                mainPanel( 
                        h4(textOutput("text1")),
                        h5(textOutput("text2")),
                      
                        htmlOutput("gvis")
        ) 
                
        )
))

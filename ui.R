library(ggplot2)
library(markdown)
library(datasets)
library(dplyr)

shinyUI(navbarPage("Diamonds catalogue",
                   
                   # The panel with the main output of this application
                   tabPanel("List",
                            
                            # Sidebar with selection panels where a user applies filters to the data
                            sidebarLayout(
                                    sidebarPanel(
                                            helpText("Select the required characteristics and provide information about your purchase"),
                                            numericInput('qty', 'Quantity per order line (in pieces):', 1, min = 1, max = 10000),
                                            numericInput('cost', 'Maximum budget per order line (in Dollars):', 100000, min = 326, max = 20000000, step=100),
                                            
                                            checkboxGroupInput('cut', 'Select cut:', c("Fair"= "Fair", "Good"= "Good", "Very good"= "Very good", "Premium" = "Premium", "Ideal" = "Ideal"), selected = c( "Fair", "Good", "Very good", "Premium", "Ideal")),
                                            checkboxGroupInput('color', 'Select color:', c("D"="D", "E"="E", "F"="F", "G" ="G", "H"="H", "I"="I", "J"="J" ), selected = c("D","E","F","G","H","I","J")),
                                            sliderInput('carat', 'Select carat range:', min=0.2000, max=5.01000, value=c(0.2000,5.01000), step=0.01000),
                                            sliderInput('price', 'Select price per unit range:', min=326, max=18823, value=c(326,18823), step=1),
                                            sliderInput('depth', 'Select depth:', min=43, max=79, value=c(43,79), step=1),
                                            checkboxGroupInput('clarity', 'Select clarity:', c("SI1"="SI1","VS2"="VS2","SI2"="SI2","VS1"="VS1","VVS2"="VVS2","VVS1"="VVS1"), selected = c("SI1","VS2","SI2","VS1","VVS2","VVS1"))
                                    ),
                            # Main panel containing the list of diamonds according to the selected criteria on the sidebar
                                    
                                    mainPanel(
                                            dataTableOutput('table')
                                    )
                            )
                   ),
                   # The panel with the instructions to the application
                   tabPanel("Instructions",
                            mainPanel(
                                    includeMarkdown("Documentation.md")
                            )
                   )
)
)   


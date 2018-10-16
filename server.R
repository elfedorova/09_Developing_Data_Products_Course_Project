library(shiny)
library(dplyr)
library(markdown)
library(ggplot2)

shinyServer(function(input, output) {
        
        # Show the diamonds characteristics that match the selection filters
        output$table <- renderDataTable({
                carat_seq <- seq(from = input$carat[1], to = input$carat[2], by = 0.01000)
                price_seq <- seq(from = input$price[1], to = input$price[2], by = 1)
                depth_seq <- seq(from = input$depth[1], to = input$depth[2], by = 1)
                
                data <- transmute(diamonds, Carats = carat, Cut = cut, 
                                  Clarity = clarity, Depth = depth, 
                                  Color = color, Depth = depth, Clarity = clarity, Table = table,
                                  X = x, Y = y, Z = z,
                                  UnitPrice = price, Quantity = input$qty,
                                  TotalBudget = input$qty*price)
                
                data <- filter(data, TotalBudget <= input$cost, 
                                Cut %in% input$cut, 
                                Color %in% input$color,
                                Carats %in% carat_seq, UnitPrice %in% price_seq, Depth %in% depth_seq,
                                Clarity %in% input$clarity)
                data <- arrange(data, Carats, Cut, UnitPrice, TotalBudget)
                data
        }, options = list(lengthMenu = c(5, 10, 15, 20, 25, 30, 35, 40, 45, 50), pageLength = 50))
})
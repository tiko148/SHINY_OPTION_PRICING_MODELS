library(shinydashboard)
library(dashboardthemes)


ui <- dashboardPage(skin = "green",
                    dashboardHeader(title = "Greeks"),
                    
                    
                    #dashboardHeader(title = "About"),
                    dashboardSidebar(
                      sidebarMenu(
                        menuItem("About", tabName = "dashboard", icon = icon("info"))
                        
                      ),
                      sidebarMenu(
                        menuItem("Black Scholes Model",icon=icon("database"),
                                 selectInput("str",label = "Yes",choices = c("c","b"))),
                        menuItem("Black scholes PDE American ", tabname = 'more', icon = icon("chart-area")),
                        menuItem("Monte Carlo Option Pricing", tabname = 'more', icon = icon("chart-line")),
                        menuItem("Learn More", tabname = 'more', icon = icon("server"))
                      )
                    ),
                    dashboardBody()
)
























server <- function(input, output) {
  
}


















# Run the application 
shinyApp(ui = ui, server = server)
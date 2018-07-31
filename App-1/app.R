library(shiny)


#--Default UI
ui <- fluidPage(
  
titlePanel(h1(strong("My Shiny App")) ),

sidebarLayout(
  sidebarPanel(  
    #height = 5, width = 5,
    h2(strong("Installation"), style = "font-size: 30px"),
    p("Shiny is available on CRAN, so you can 
          install it in the usual way from your R console:", 
      style = "font-size: 17px"),
    
    p(span('install.packages("shiny")', style = 'color:red'),  style = "font-size: 17px"),
    
    img (src = 'rstudio.JPG', height = 140, width =250),
    div("shiny is a product of ", span("RStudio", style ='color:blue'), style = "font-size: 17px")
               
               ),
  
  mainPanel(
    h1(strong("Introducing Shiny"), style = 'font-size: 40px' ),
    p("Shiny is a new package from RStudiothat makes it ", em("incredibly easy"),  
        "to build interactive web applications using R", style = "font-size: 17px"),
    br(),
    p("For an introduction and live examples, visit the ", style = "font-size: 17px", tags$a(href = "www.shiny.rstudio.com", "Shiny Homepage")),
    
    br(),
    br(),
    h1(strong("Features"), style = 'font-size: 40px' ),
    p("- Build useful web applications with only a few lines of code—no JavaScript required.", style = "font-size: 17px"),
    p("-Shiny automatically 'live' in the same way that ", strong("spreedsheets"), " are live. Outputs change instantly
        as user modify inputs, without requiring a reload of the browser" , style = "font-size: 17px")
    
)


)
 )


#-- Server logic 
server <- function(input,output){}


#--Running the app
shinyApp(ui = ui, server = server)




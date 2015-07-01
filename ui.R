library(shiny)
shinyUI(fluidPage(img(src="miami.png", height = 100, width = 100),
  headerPanel("Side Bar"),
  sidebarPanel(
    
    tags$h1('Sidebar text1'),
    tags$h2('Sidebar text3'),
    tags$h3('Sidebar text4'),
    numericInput('id1','Numerical Parameter',0,min=0,max=10,step=1),
    
    checkboxGroupInput('id2','Checkbox',
                       c("Field 1"= "1",
                         "Field 2"= "2",
                         "Field 3"= "3")   ),
    dateInput('date','Date:'),
    selectInput('id3','# of Obs in Dataset',choices = c(5,10,15)),
    sliderInput('li','Plot Slider',0,min=0,max=5,step=.1,animate=TRUE),
    
    actionButton('mybutton','Go Button'),
    helpText("Go Button is just an illustration and this is help text"),
    fileInput('file1', 'Choose CSV File',
              accept=c('text/csv', 
                       'text/comma-separated-values,text/plain', 
                       '.csv')),
    helpText=('Uploading Illustration'),
    
    downloadButton('downloadData', 'Download')
 
     ),
  
  mainPanel
  (code('Random tabs example...'),
  navbarPage("My Application",
             tabPanel("Component 1"),
             tabPanel("Component 2"),
             navbarMenu("More",
                        tabPanel("Sub-Component A"),
                        tabPanel("Sub-Component B"))),
    h1('Outputs'),
    h4(em('Numerical Parameter Output'),style = 'color:red'),
    verbatimTextOutput('oid1'),
    h4('Field Box Value Output',style = 'color:green'),
    verbatimTextOutput('oid2'),
    h4('Date you entered',style = 'color:yellow'),
    verbatimTextOutput('odate'),
    textOutput('text4'),
    tabsetPanel(type='tabs', 
                tabPanel("Plot",plotOutput('my_plot'),style = 'color:red'),
                tabPanel("DataSet",tableOutput('view'))),
    p("This will take you to r studio shiny tutorials ",
    a("Shiny Tutorial.", 
      href = "http://shiny.rstudio.com/tutorial"))
  )
  ))


        
        
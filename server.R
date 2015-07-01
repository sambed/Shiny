library(shiny)
shinyServer(
  function(input,output){
   output$oid1 <- renderPrint({input$id1})
   output$oid2<-renderPrint({input$id2})
   output$odate<-renderPrint({input$date})
   output$text4<-renderPrint({"Just Printing in Text using textOutput"})
   
   output$my_plot<-renderPlot({
     li = input$li
     plot(cars$speed~cars$dist,xlab="Speed",ylab='Distance',main='Cars Dataset')
     abline(li,li,col='red')
   })
   output$view = renderTable({head(cars,n=input$id3)})
    
  })
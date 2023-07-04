library(shiny)
library(shinydashboard)
library (jsonlite)
library (tidygraph)
library (ggraph)
library (visNetwork)
library (lubridate)
library (tidyverse)
library (readxl)
library(igraph)
library (DT)

#mc2_data <- fromJSON("data/mc2_challenge_graph.json")

color_palettes <- c("#e485a4",
  "#58bc51",
  "#a55bd1",
  "#a1b534",
  "#596dd1",
  "#d69c35",
  "#5d8bc9",
  "#de5d2f",
  "#44bcd1",
  "#d3414c",
  "#5dc497",
  "#d353ad",
  "#4d8a39",
  "#d03d74",
  "#368660",
  "#89529a",
  "#aab267",
  "#bf8ed7",
  "#697329",
  "#9c4970",
  "#936a2e",
  "#b05b5c",
  "#e1966b",
  "#ae502c")


# Define UI for application 

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Dashboard", tabName = "dashboard", icon = icon("tachometer-alt")),
    menuItem("Fishing Transaction Overview", tabName = "point1", icon = icon("fish"), startExpanded = TRUE,
             menuSubItem("Transaction Structure", tabName = "point1-1"),
             menuSubItem("Temporal Patterns", tabName = "point1-2")),
    menuItem("Fishing Transaction Network", tabName = "point2", icon = icon("globe"), startExpanded = TRUE,
             menuSubItem("Main Network Graph", tabName = "point2-1"),
             menuSubItem("Predicted Knowledge Graph", tabName = "point2-2")),
    menuItem("Illegal Fishing Evidence", tabName = "point3", icon = icon("ship"), startExpanded = TRUE,
             menuSubItem("Evidence 1", tabName = "point3-1"),
             menuSubItem("Evidence 2", tabName = "point3-2"))

  )
)


body <- dashboardBody(
  tabItems(
    tabItem(tabName = "dashboard",
           h2("Combating Illegal Fishing Application"),
           hr(),
           h5("Our application was created as part of VAST Challenge 2023."),
           hr(),
           h2("Application Features"),
           hr(),
           h5("As seen in the sidebar menu on the left, this application has 3 key modules:"),
           h4("1) Fishing Transaction Overview :"),
           h5("This module allow user to understand the Fishing Transaction Overview "),
           h4("2) Fishing Transaction Network:"),
           h5("This module provides insights on Fishing Transaction Network"),
           h4("3) Illegal Fishing Evidence:"),
           h5("This module allow user to explore the Illegal Fishing Evidence")
           ),
    tabItem(tabName = "point1-1"),
    tabItem(tabName = "point1-2"),
    tabItem(tabName = "point2-1"),
    tabItem(tabName = "point2-2"),
    tabItem(tabName = "point3-1"),
    tabItem(tabName = "point3-2"),
    tabItem(tabName = "point3-3")
 )  
) 


ui <- dashboardPage(
  dashboardHeader(title = "Group15 Project"),
  sidebar,
  body,
  skin = "black")


############################################################SERVER###########################################################################
server <- function(input, output, session) {
  
}

# Run the application 
shinyApp(ui = ui, server = server)

## Steps Taken to Unfold Deworming OPA

1. Summary to Deworming: [here](https://github.com/BITSS-OPA/Tutorials/blob/master/Summaries/Deworming/Deworm%20the%20World%20-%20summary.md)

2. Summary to Deworming Cost-Effectiveness with [Evidence Action](https://github.com/BITSS-OPA/Tutorials/blob/master/Summaries/Deworming/Deworming%20Cost-Effectiveness%20-%20summary.md)

3. First knit the dynamic document: `05_final_opa.rmd` and then read the report first to get a general idea of what this project is about (at least read up to common structure - discounting rate)

4. Then read the first two collapsible code block - read the first one carefully, skim the second one that defines all sorts of values.

5. Go to `/code/shiny_app` and open server.R and ui.R
  - Start matching the outputs and the inputs in two different files and see how they connect and collaborate to build our ShinyApp (eg. input$"inputId" will appear in server.R, but it is defined in ui.R)
  - Match the user interface elements with the code that defines it (plot1 <- renderPlot() is responsible for the plot with All Asumptions )

## Ideas

- A readme/metadata file for all the files to introduce their purpose?
- Introduce ways of naming files in the metadata file  (for example, pe- policy estimate, ww - working wage, ag - agriculture, se - self-employed)
- bug: ShinyApp updates whenever we change the output, doesn't necessarily wait till we click the "Run Simulation" button

## Questions

- Is there a good way to learn about all the data?

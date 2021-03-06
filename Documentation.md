---
title: "Documentation"
output: html_document
---


# Appication overview

This application is designed as a part of the course "Developing data products" by Coursera. 
It simulates the site of a diamond-seller: it allows the propespective buyer to find the diamond with characteristics of interest and to estimate the total cost of their purchase. The diamonds data set is used in this application and the appplication is hosted on the shinyapps.io. 
The source codes to this application can be found on <https://github.com/elfedorova/09_Developing_Data_Products_Course_Project>.

## Instructions

**Inputs** 

To get the detailed information, the user has to enter the amount of pieces they would like to purchase per order line. This information will be used to calculate the total amount of money required to buy the certain diamonds in the catalogue in the preliminarily specified quantities ("TotalBudget"). 
In the second filter, the user specifies the maximum budget they would to spend on the purchase: the table will show only those diamonds, where total amount of purchase is below the entered value.
Additionally, the user can restrict the selection using filters based on the diamond characteristics:  

- Cut
- Color
- Price range
- Carat range 
- Depth range
- Clarity

**Output**

The table generated by this application will show only the diamonds matching the selection criteria defined by a user. 
It is also possible to sort the table according to the characteristics by clicking the arrows at the top of the table. Additionally, user can define how many entries to show on the screen and there's also possibility to use the search function.

## Brief characteristics of the data set 
*Taken from R Documentation*

**price** - price in US dollars 

**carat** - weight of the diamond 

**cut** - quality of the cut: Fair, Good, Very Good, Premium, Ideal

**color** - diamond colour, from J (worst) to D (best)

**clarity** - a measurement of how clear the diamond is I1 (worst), SI2, SI1, VS2, VS1, VVS2, VVS1, IF (best)

**x** - length in mm 

**y** - width in mm 

**z** - depth in mm 

**depth** - total depth percentage

**table** - width of top of diamond relative to widest point 


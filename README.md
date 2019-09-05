# STATEMENT OF PURPOSE

Inventory management is a vital operation on any business dealing with physical products. It is very tedious task to manually keep track of the inventory level and updating it everyday as usually you want to refill the stock before you run out of the products to assure prompt processing of orders by your customers.

This application saves you all the hard and repetitive manual handling by providing solutions for:
* Keeping track and displaying and inventory level of each product
* Displays the products needed to be ordered.
* View all details of each item including descriptions.

The target audience for this application would be a small to medium size wholesaler who regularly supplies good quantity of products to retailers and orders it from the different manufacturers when the stock runs low.

The member of the target audience or the user will be displayed a menu of 5 items upon running the application which would allow him to do the tasks mentioned below:
* Displaying all the inventory with name prices and stock level.
* View each item for more details.
* Process the orders in hand by simply selecting the product from a list and the quantity needed. This feature allows user to input orders of multiple products until the user decides to exit that particular menu.
* Displays just the products need to be ordered with their inventory level.
* Exits the application 


## FEATURES
* Displays all the products in the inventory at hand. When selected option 1 from menu the user is displayed all the products in the stock with their prices and inventory level in a very easy to read table format and all the item with quantity at hand less than 500 will have its quantity displayed in Red color so it stands out in the list of many products.
* ## Option 2 lets you see more details of an individual item including full description.?
* Option 3 lets you enter the product name and quantity of the orders received so it can reflects those changes on the inventory level.
* ## Option 4 displays only the list of products low on stock which can be readily used to place orders for those items promptly.

# User Interaction and experience
* Upon runnning the application the user is dislayed a menu to chose from with a message "Make a selection between 1 and 5 and press enter" which tells user what to do. 
* When user choses the option 2 from the main menu he is prompted with the message "Pick one of these items by typing its name and pressing enter:" If the user types a wrong product or makes a typing error he is displayed the message "Product not found\nPlease type one of item from ths list and press enter".
* Selecting option 3 from the main menu displays a sub menu with the message "Make a selecton between 1 and 2" for the user to chose from either processing order or exiting the sub menu. This allows user to process multiple orders from the same sub menu.

| Feature | Steps to Build | Time It Took To Complete |
| ----------- | ----------- | ----------- |
| Viewing all of the inventory | Firstly, I had to make a product class to define my products and their associated attributes. I then had to create a loop for my menu and in this menu there was a method that looped through all of product objects and displayed them. | 2 hours |
| View each item in detail | This menu takes input from the user asking the item he wishes to see the details to. I created a loop to look through all the items in the array of objects(products) to display the item user is interested in | 3 hours |
| Process the order | Taking user input to enter the product and quantity of the orders at hand to reflect those changes in the inventory. I created a loop to keep asking user for orders until user choses to exit from this sub menu to main menu | 2 hours |
| Print items need ordering from manufacturer | Looped through all the products in the inventory to find the products with stock less than 500 to be printed | 1 hour |




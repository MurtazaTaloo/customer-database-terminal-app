# Help file

## GitHub link
- [Repository] https://github.com/MurtazaTaloo/customer-database-terminal-app


## Steps to install the application
Run the build.sh file.

### Dependencies
* Must have ruby insatlled on the system. I Used 'rbenv' which required homebrew.
* Must have following gems intalled :
1. colorize
2. Terminal table
3. CSV

### Different Features
1. Displays all the products in the inventory at hand. When selected option 1 from menu the user is displayed all the products in the stock with their prices and inventory level in a very easy to read table format and all the item with quantity at hand less than 500 will have its quantity displayed in Red color so it stands out in the list of many products.
2. Option 2 lets you see more details of an individual item including full description and supplier details.
3. Option 3 lets you enter the product name and quantity of the orders received so it can reflects those changes on the inventory level.
4. Option 4 displays only the list of products low on stock and creates a csv file with the supplier details.
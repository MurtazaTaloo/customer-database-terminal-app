require 'pry'
require 'colorize'
require 'csv'

class Product
    attr_accessor :name, :price
    def initialize(name, price, inventory)
        @name = name
        @price = price
        @inventory = inventory
    end

    def inventory
        puts "Name of the product= #{@name}
        Inventory level = #{@inventory}"
        # write some code
    end

    def inventory_remaining=(quantity)
        @inventory = @inventory - quantity
        @inventory
    end
end

product_1 = Product.new("Water bottle", 10,1000)
product_2 = Product.new("Travel mug", 15,1000)
product_3 = Product.new("Power bank", 30,1000)


# p product_1
# puts product_1.inventory
all_users = []
class User
    attr_accessor :name, :email, :address
    def initialize(name, email, address)
        @name = name
        @email = email
        @address = address
    end
end

user1 = User.new("Adam","adam_21@gmail.com", "13 bruce st")
all_users << user1
user2 = User.new("Paul","paul_16@gmail.com", "17 bond st")
all_users << user2
user3 = User.new("Tom","tom_11@gmail.com", "21 yarra st")
all_users << user3

# all_users.each do |element|
#     puts element.name
#     end



# puts "Please enter your email address to continue:"
# print ">"
# login = gets.strip
# file = CSV.open("customer_database.csv", "a+")
# #  file = File.read('customer_database.csv') 
# customer_details = []
file = CSV.open('customer_database.csv', 'a+') do |row|
 puts row.class 
end
#  p file.class
        # customers = file.split("\n")
        # customers.shift
        # customers.each_with_index do |customer, index|


# if login == 


#  puts "\n\nPlease chose from the following options:
#     1.Water bottle  ($10)
#     2.Travel mug    ($15)
#     3.Power bank    ($30)
#     4.exit"
#     print ">"
#     selection = gets.chomp.to_i

#     product_1_orders = 0
#     product_2_orders = 0    
#     product_3_orders = 0

#     until selection == 4

#     puts "Enter the quantity needed:"
#     print ">"
#     quantity = gets.strip.to_i
    
  
#     if selection == 1
#         product_1_orders += quantity
#     elsif selection == 2
#         product_2_orders += quantity
#     elsif selection == 3
#         product_3_orders += quantity
#     end
# puts "\n\nPlease chose from the following options:
# 1.Water bottle  ($10)
# 2.Travel mug    ($15)
# 3.Power bank    ($30)
# 4.exit"
# print ">"
# selection = gets.chomp.to_i
# end
    
# puts "\n\nUser Menu:
# 1.Current stock level
# 2.Total orders
# 3.Total sales for the day
# 4.Unique customers' email addresses
# 5.All customers' email addresses
# 6.All customers detailed list.
# 7.Exit"
# print ">"
# user_selection = gets.strip.to_i


# total = 0
# product_1_total = product_1.price * product_1_orders
# product_2_total = product_2.price * product_2_orders
# product_3_total = product_3.price * product_3_orders

# until user_selection == 7
#     if user_selection == 1
#         if product_1_orders > 0 
#            product_1.inventory_remaining=(product_1_orders)
#         end
#         if product_2_orders > 0 
#             product_2.inventory_remaining=(product_2_orders)

#         end
#         if product_3_orders > 0
#             product_3.inventory_remaining=(product_3_orders)

#         end
#         product_1.inventory
#         product_2.inventory
#         product_3.inventory
      

#     elsif user_selection == 2

#         puts "\n#{product_1.name} = #{product_1_orders}\n#{product_2.name} =  #{product_2_orders}\n#{product_3.name} =  #{product_3_orders}"
       
#     elsif user_selection == 3

#         total = product_1_total + product_2_total
#         puts "\n\nTotal Sales for the dat = $#{total}" 

#     elsif user_selection == 4
#         file = File.read('pract_database.csv')
#         # file = File.read('customer_database.csv') 
#         # customers = file.split("\n")
#         # customers.shift
#         # customers.each_with_index do |customer, index|
#         #     puts "#{index + 1}) #{customer}" 
#     elsif user_selection == 5

    
#     elsif user_selection == 6
    
#     end
    
    
#     puts "\n\nUser Menu:
#     1.\n\nUser Menu:
#     1.Current stock level
#     2.Total orders
#     3.Total sales for the day
#     4.Unique customers' email addresses
#     5.All customers' email addresses
#     6.All customers detailed list.
#     7.Exit"
#     print ">"
#     user_selection = gets.strip.to_i

# end






   







# puts "Please enter your name:"
# print ">"
# name = gets.chomp
# puts "Please your email:"
# print ">"
# email = gets.strip
# puts "Please enter your address"
# print ">"
# address = gets.chomp

# user = User.new(name,email,address)
# all_users << user





    # .user menu
    # 1 prints stock levels with colorize
    # 2 total orders of each products
    # 3 total sales $ for the day
    # password auth=(4 unique customers today
    # .their emails
    # .their phone numbers
    # 5 customer details
    # .customer emails
    # .customer phone numbers)
    
    # how to take order inputs? csv files or user input?
    # because the app is supposed to be for a wholesaler but needs orders for it to show it working.
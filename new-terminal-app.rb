require 'pry'
require 'colorize'
require 'csv'
require 'terminal-table'

class Product
    attr_accessor :name, :price, :inventory
    def initialize(name, price, inventory)
        @name = name
        @price = price
        @inventory = inventory
    end

    # def inventory
    #     puts "Name of the product= #{@name}
    #     Inventory level = #{@inventory}"
    #     # write some code
    # end

    def inventory_remaining(quantity)
        @inventory = @inventory - quantity
        @inventory
    end
end



all_products = [
    Product.new("Water bottle", 10,1000),
    Product.new("Travel mug", 15,1000),
    Product.new("Power bank", 30,1000),
    Product.new("Pencil case", 5,1000),
    Product.new("Drone", 80,1000),
    Product.new("Shirt", 30,1000),
    Product.new("Chair", 30,1000),
    Product.new("Phone holder", 10,1000),
    Product.new("Phone case", 12,1000),
    Product.new("Charger", 8,1000)
]

table = all_products.map do |product|
    [product.name, product.price, product.inventory]
end 

puts Terminal::Table.new({:headings => ['Name', 'Price $', 'Inventory'], :rows => table})

def display_products(all_products)
    all_products.each do |product|
    puts """
    Name: #{product.name}
    Price: #{product.price}
    """
    end
end 

def find_one_item(all_products)
    puts ""
    puts "Pick one of these items"
    display_products(all_products)
    print "> "
    item = gets.chomp
    product = all_products.find do |product|
        product.name == item
    end 
    puts """
    Name: #{product.name}
    Price: #{product.price}
    Inventory: #{product.inventory}
    """
end  


loop do 
    puts """
    User Menu:
    1.View all Inventory
    2.View one inventory item
    3.Process order
    4.View stock level  
    5.Exit
    """
    puts "Make a selection between 1 and 5"
    print "> "
    selection = gets.chomp.to_i
    case selection
    when 1
        display_products(all_products)
    when 2
        find_one_item(all_products)
    when 5
        break
    end  
end 



# puts "\n\nUser Menu:
#      1.\n\nUser Menu:
#      1.View all Inventory
#      2.View one inventory item
#      3.Process order
#      4.View stock level  
#      5.Exit"
# print ">"
# user_selection = gets.strip.to_i

# until user_selection == 5

#     if user_selection == 1
        
#     elsif user_selection == 2
#         # view each item
#     elsif user_selection == 3
#         # process order
#     elsif user_selection == 4
#         # view stock level
#     end
    
#     puts "\n\nUser Menu:
#     1.\n\nUser Menu:
#     1.View all Inventory
#     2.View one inventory item
#     3.Process order
#     4.View stock level  
#     5.Exit"
# print ">"
# user_selection = gets.strip.to_i
# end



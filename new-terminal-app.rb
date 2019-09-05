require 'pry'
require 'colorize'
require 'csv'
require 'terminal-table'

class Product
    attr_accessor :name, :price, :inventory, :description
    def initialize(name, price, inventory,description)
        @name = name
        @price = price
        @inventory = inventory
        @description = description
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
    Product.new("Water bottle", 10,1000,"amazing product"),
    Product.new("Travel mug", 15,1000,"amazing product"),
    Product.new("Power bank", 30,1000,"amazing product"),
    Product.new("Pencil case", 5,1000,"amazing product"),
    Product.new("Drone", 80,1000,"amazing product"),
    Product.new("Shirt", 30,1000,"amazing product"),
    Product.new("Chair", 30,1000,"amazing product"),
    Product.new("Phone holder", 10,1000,"amazing product"),
    Product.new("Phone case", 12,1000,"amazing product"),
    Product.new("Charger", 8,1000,"amazing product")
]


def display_products(all_products)
    table = all_products.map do |product|
        if product.inventory < 500
            inventory = product.inventory.to_s.colorize(:red)
        else 
            inventory = product.inventory.to_s
        end 
        [product.name, product.price, inventory]
    end 
    puts Terminal::Table.new({headings: ['Name', 'Price $', 'Inventory'], rows: table})
end 

def display_products_names(all_products)
    all_products.each do |product|
    puts product.name
    end
end

def find_one_item(all_products)

    product = nil
   
    while product == nil
        puts ""
        puts "Pick one of these items by typing its name and pressing enter:\n"
        display_products_names(all_products)
        print "> "
        item = gets.chomp.capitalize

        product = all_products.find do |product|
            product.name == item
        end
        
        puts "\n\nProduct not found\nPlease type one of the items from ths list and press enter"
    end
    
    puts """
    Name: #{product.name}
    Price: $#{product.price}
    Inventory: #{product.inventory} pieces
    Description: #{product.description}
    """
end

def process_order(product,quantity,all_products)

 all_products.each do |item|
    if item.name == product
        item.inventory_remaining(quantity)
        puts "\nThe order has been processed\n"
    end
end
    
end


loop do 
    puts """
    User Menu:
    1.View all Inventory
    2.View item description
    3.Process order
    4.View items to be ordered  
    5.Exit
    """
    puts "Make a selection between 1 and 5 and press enter"
    print "> "
    selection = gets.chomp.to_i
    case selection
    when 1
        display_products(all_products)
    when 2
        find_one_item(all_products)
    when 3
            puts """
            User Menu:
            1.Process an order
            2.exit
            \nMake a selecton between 1 and 2
            """
            print ">"
            selection = gets.strip.to_i

            while selection != 2 && selection != 1
                puts "\nwrong input\nPlease chose between 1 and 2"
                selection = gets.strip.to_i
            end

            until selection == 2
                display_products_names(all_products)
                puts "Enter the name of the product:"
                print ">"
                product = gets.strip.capitalize
                puts "Enter the quantity of the product you need:"
                print ">"
                quantity = gets.strip.to_i

                process_order(product,quantity,all_products)
            
                puts """
                User Menu:
                1.Process another order
                2.exit
                """
                print ">"
                selection = gets.strip.to_i
            end

    when 4
        all_products.each do |product|
            if product.inventory < 500
                    puts """
                    Product = #{product.name}
                    Inventory = #{product.inventory}
                    """
            end
        # name = product.name
        # inventory =  product.inventory
        # puts "#{name}= #{inventory}"
        end
    when 5
        break
    end  
end 



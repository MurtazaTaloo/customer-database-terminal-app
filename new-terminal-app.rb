require 'pry'
require 'colorize'
require 'csv'
require 'terminal-table'

require_relative 'product'
require_relative 'methods'

# database of products
all_products = [
  Product.new("Water bottle", 10, 1000, "amazing product","ABC supplier"),
  Product.new("Travel mug", 15, 1000, "amazing product", "MOJO supplier"),
  Product.new("Power bank", 30, 1000, "amazing product", "MAMA supplier"),
  Product.new("Pencil case", 5, 1000, "amazing product","ABC Supplier"),
  Product.new("Drone", 80, 1000, "amazing product", "DEF Supplier"),
  Product.new("Shirt", 30, 1000, "amazing product", "HHH supplier"),
  Product.new("Chair", 30, 1000, "amazing product", "KKK suppier"),
  Product.new("Phone holder", 10, 1000, "amazing product", "LLL supplier"),
  Product.new("Phone case", 12, 1000, "amazing product", "KKK supplier"),
  Product.new("Charger", 8, 1000, "amazing product", "TTT supplier")
]


loop do
  puts """
  User Menu:
  1.View all Inventory
  2.View details of each item.
  3.Process order
  4.Print items that need ordering.
  5.Exit
  """
  puts "Make a selection between 1 and 5 and press enter:"
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

      process_order(product, quantity, all_products)

      puts """
      User Menu:
      1.Process another order
      2.exit
      """
      print ">"
      selection = gets.strip.to_i
    end

  when 4
    CSV.open("Place-orders.csv","a+") do |csv|
        all_products.each do |product|
            if product.inventory < 500
                str = "Product name = #{product.name},  Product Supplier = #{product.supplier}, Current Inventory = #{product.inventory}"
                csv << [str]
                puts "\n\nProduct name = #{product.name} \n\nProduct supplier =  #{product.supplier} \n\nCurrent inventory = #{product.inventory}"
            end
        end
    end

  when 5
    break
  end
end

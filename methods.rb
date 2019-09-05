
def display_products(all_products)
    table = all_products.map do |product|
      if product.inventory < 500
        inventory = product.inventory.to_s.colorize(:red)
      else
        inventory = product.inventory.to_s
      end
      [product.name, product.price, inventory]
    end
    puts Terminal::Table.new({ headings: ['Name', 'Price $', 'Inventory'], rows: table })
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
      
    #   if product is nil, means it was not found; thus wee need an error msg
      if product == nil
        puts "\n\nProduct not found\nPlease type one of the items from ths list and press enter"
      end
    end
  
    puts """
    Name: #{product.name}
    Price: $#{product.price}
    Inventory: #{product.inventory} pieces
    Description: #{product.description}
    Supplier: #{product.supplier}
    """
  end
  
  def process_order(product, quantity, all_products)
    all_products.each do |item|
      if item.name == product
        item.inventory_remaining(quantity)
        puts "\nThe order has been processed\n"
      end
    end
  end
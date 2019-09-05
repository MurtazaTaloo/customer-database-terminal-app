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
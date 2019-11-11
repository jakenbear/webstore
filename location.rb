#LOCATION class
class Location
  attr_accessor :id,:name,:city,:product_list
  def initialize(id,name,city)
    @id = id
    @name = name
    @city = city
    @product_list = {}
    puts "NEW LOCATION ADDED - ID: #{@id}, NAME: #{@name}, CITY: #{@city}"
  end

  def to_s
    "Location Id: #{@id}, #{@name}, #{@city}, #{@product_list}"
  end

  def display_info
    puts "ID: #{@id}"
    puts "Name: #{@name}"
    puts "City: #{@city}"
    puts "Product List: #{@product_list}"
  end

  def add_product(prod,q)
    if @product_list[prod] == nil
     @product_list[prod] = q
    else
      newq = @product_list[prod] + q
      @product_list[prod] = newq
    end
  end

  def remove_product(prod,q)
    newq = @product_list[prod] - q
    if newq >= 0
      @product_list[prod] = newq
      puts "Removed #{q} items - #{@product_list[prod]}"
    else
      puts "Error: Not that many to remove!"
    end
  end

  def get_local_qauntity(id)
    qty = 0
      if @product_list[id] != nil
        qty += @product_list[id]
      end
    return qty
  end

  #Transfer a product from location to location
  def transfer(qty,id,from,to)
    #Ensure from location has product in Stock
    if (from.get_local_qauntity(from.id) >= qty)
      to.add_product(id,qty)
      #remove product from from Store
      from.remove_product(id,qty)
      #Report action
      puts "Moved #{qty} items from #{from.name} to #{to.name}"
    end
  end
end

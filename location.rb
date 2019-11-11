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
      #@product_list[prod]
      @product_list[prod] = newq
      return 99
    else
      puts "Error: Not that many to remove!"
      return 0
    end
  end

  def get_local_qauntity(id)
    qty = 0
      if @product_list[id] != nil
        qty += @product_list[id]
      end
    return qty
  end

end

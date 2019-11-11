#STORE CLASS
class Store
attr_accessor :id,:name,:description,:location_list
  def initialize(id,name,description)
    # Instance variables
    @id = id
    @name = name
    @description = description
    @location_list = []
    puts "NEW STORE CREATED: #{@name}, #{@description}"
  end

  def display_info
    puts "\n=======STORE INFO==========="
    puts "Store ID: #{@id}"
    puts "Store Name: #{@name}"
    puts "Description: #{@description}"
    puts print_location_list()
  end

  def add_location(id)
    @location_list.push id
    puts "Added Location ID: #{id.id}, #{id.name} to #{@name}"
  end

  def get_product_qauntity(id)
    qty = 0
    for item in @location_list
      plist = item.product_list
      if plist[id] != nil
        qty += plist[id]
      end
    end
    return qty
  end

  def display_all_inventory
    for item in @location_list
      plist = item.product_list
      plist.each do |key, value|
        puts "Store Id: #{item.id}, Product Id: #{key}, QTY: #{value}"
      end
    end
  end

  def print_location_list
    puts "\n=======LOCATION INFO==========="
    for item in @location_list
      puts "-----------------------"
      puts "Location Id: #{item.id}"
      puts "Location Name: #{item.name}"
      puts "Location City: #{item.city}"
    end
    puts "-----------------------"
  end

  #Helper functions
  def show_global_item_total_in_store(store,prod)
    puts "Total in Stock store wide: #{prod.name}: #{store.get_product_qauntity(prod.id)}"
  end

  def get_global_item_total_in_store(store,prod)
      return store.get_product_qauntity(prod.id)
  end

  def show_global_item_total_in_location(location,prod)
    puts "Total in Stock at Location #{location.id}: #{prod.name}: #{location.get_local_qauntity(prod.id)}"
  end

  def get_global_item_total_in_location(location,prod)
    return location.get_local_qauntity(prod.id)
  end
end #end SHOP class

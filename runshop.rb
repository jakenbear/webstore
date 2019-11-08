#INCLUDE CLASSES
class Runshop
require './store.rb'
require './location.rb'
require './product.rb'

#CREATE MY STORE
puts "CREATING TEST STORE!"
store = Store.new(1,"Jake's Store", "A fancy game store franchise!")
puts "STORE CREATED..."
#CREATE MY PHYSICAL LOCATIONS
puts "CREATING PHYSICAL LOCATIONS!"
location1 = Location.new(1,"EB Games","Toroto")
puts "LOCATION 1 CREATED..."
location2 = Location.new(2,"Jakes Games","New York")
puts "LOCATION 2 CREATED..."
location3 = Location.new(3,"Bikes and Horses","Calgary")
puts "LOCATION 3 CREATED..."
location4 = Location.new(4,"Retro Game Shop","Vancouver")
puts "LOCATION 4 CREATED..."

#CREATE MY PRODUCTS
prod1 = Product.new(1,"Coke",5,"A can of coke.")
prod2 = Product.new(2,"Apple",15,"An apple.")
prod3 = Product.new(3,"Toy Car",25,"A toy car.")
prod4 = Product.new(4,"Amiibo",3,"An amiibo.")
prod5 = Product.new(5,"Horse",56,"A horse.")

#LOAD MY LOCATIONS TO STORE
store.add_location(location1)
store.add_location(location2)
store.add_location(location3)
store.add_location(location4)
#store.add_location(location2.getId())
#store.add_location(location3.getId())

#Add Sample products to each location
location1.add_product(1,10)
location1.add_product(2,15)
location2.add_product(1,19)
location2.add_product(3,25)
location3.add_product(4,33)
location3.add_product(5,3)

#store.display_info()
store.display_info()
location3.add_product(5,378)
store.display_info()
#location1.display_info()
#location2.display_info()
#location3.display_info()

puts store.get_product_qauntity(1)
puts store.get_product_qauntity(2)
puts store.get_product_qauntity(3)
puts store.get_product_qauntity(4)
puts store.get_product_qauntity(5)

store.display_all_inventory()

store.show_global_item_total_in_store(store,prod1)
store.show_global_item_total_in_location(location1,prod1)
store.show_global_item_total_in_location(location2,prod1)

store.show_global_item_total_in_store(store,prod2)
store.show_global_item_total_in_location(location1,prod2)
store.show_global_item_total_in_location(location2,prod2)

test = store.get_global_item_total_in_store(store,prod1)
puts test
test2 = store.get_global_item_total_in_location(location1,prod2)
puts test2

puts store.location_list.to_s

#puts store.get_product_totals(1)
store.show_global_item_total_in_location(location1,prod1)
store.show_global_item_total_in_location(location2,prod1)
location1.transfer(5,1,location1,location2)
store.show_global_item_total_in_location(location1,prod1)
store.show_global_item_total_in_location(location2,prod1)
location1.remove_product(1,2)
store.show_global_item_total_in_location(location1,prod1)
store.display_all_inventory()
puts location1.to_s

end

#INCLUDE CLASSES
class Runshop
require './store.rb'
require './location.rb'
require './product.rb'

#CREATE MY STORE
puts "CREATING STORE......"
store = Store.new(1,"JAKE'S ARCADE GAMES AND STUFF", "Your number 1 source for classic video game machines.")
store.display_info()
#CREATE MY PHYSICAL LOCATIONS
puts "CREATING PHYSICAL LOCATIONS......"
location1 = Location.new(1,"The Cabinet Farm","Toroto")
location2 = Location.new(2,"Classic Retro Works","New York")
location3 = Location.new(3,"Gamerama and Phone repair","Calgary")
location4 = Location.new(4,"Sprockets and Sprongs","Vancouver")

puts "CREATING PRODUCTS......"
#CREATE MY PRODUCTS
prod1 = Product.new(1,"BURGER TIME",250,"Match the hamburgers to save the world.")
prod2 = Product.new(2,"GALAGA",375,"Space Aliens are coming for you.")
prod3 = Product.new(3,"PAPER BOY",425,"Deliver all of the newspapers")
prod4 = Product.new(4,"DIG DUG",300,"The classic digging classic.")
prod5 = Product.new(5,"DONKEY KONG",750,"Can you reach the top?")

puts "ASSIGNING PHYSICAL LOCATIONS TO STORE......"
#LOAD MY LOCATIONS TO STORE
store.add_location(location1)
store.add_location(location2)
store.add_location(location3)
store.add_location(location4)

#Show Store info again
store.display_info()

#Add Sample products to each location
location1.add_product(1,10)
location1.add_product(2,15)
location2.add_product(1,19)
location2.add_product(3,25)
location3.add_product(4,33)
location3.add_product(5,3)
location4.add_product(1,33)
location4.add_product(5,23)


puts store.get_product_qauntity(1)
puts store.get_product_qauntity(2)
puts store.get_product_qauntity(3)
puts store.get_product_qauntity(4)
puts store.get_product_qauntity(5)

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

#puts store.location_list.to_s

#puts store.get_product_totals(1)
store.show_global_item_total_in_location(location1,prod1)
store.show_global_item_total_in_location(location2,prod1)
store.transfer(7,1,location1,location2)
store.show_global_item_total_in_location(location1,prod1)
store.show_global_item_total_in_location(location2,prod1)
store.show_global_item_total_in_store(store,prod1)
store.display_all_inventory()
store.remove_location(location4)
store.display_info()
store.transfer(33,1,location4,location1)
store.transfer(2443,5,location4,location1)
store.transfer(13,5,location4,location1)
store.remove_location(location4)
store.transfer(10,5,location4,location1)
store.remove_location(location4)
store.purge_location(location1)
store.display_all_inventory()


#store.display_info()

#puts store.location_list

end

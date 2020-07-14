
require 'pry'
def find_item_by_name_in_collection(name, collection)
  collection.each do |item|
  if item[:item] == name
    return item
    end
  end
nil
end
    

def consolidate_cart(cart)
  new_cart = {}
  cart.each do |hash| #hash is the whole array
    hash.each do |name, describe| #name: avocado, cheese. describe: price, clearance
      #if new_cart has name and count already, increase the count
      if new_cart[name]
        new_cart[name][:count] += 1
      #new_cart is empty so set name as key and describe as value
      else
        new_cart[name] = describe
        new_cart[name][:count] = 1 #set count = 1 cuz we set name and describe for 1 item
      end
    end
  end
  new_cart
end

  
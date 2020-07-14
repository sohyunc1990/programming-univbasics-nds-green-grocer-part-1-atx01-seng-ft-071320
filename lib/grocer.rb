
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
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  newcart={}
    cart.each do |items|
     items.each do |name, value|
       if newcart[name]
         newcart[name][:count] += 1
       else
         newcart[name] = value
         newcart[name][:count] = 1
       end
     end
    end 
  newcart 
end


  
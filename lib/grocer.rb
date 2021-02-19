require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |item|
    item.each do |key, value|
      if value == name
        return item
      end
    end
  end
  nil
end

def consolidate_cart(cart)
  new_cart = []
  cart.each do |product|
    found_item = find_item_by_name_in_collection(product[:item], new_cart)
      if found_item
        found_item[:count] += 1
        #binding.pry
      else
        new_cart << {
          :item => product[:item],
          :price => product[:price],
          :clearance => product[:clearance],
          :count => 1
        }
      end
  end
  new_cart
end

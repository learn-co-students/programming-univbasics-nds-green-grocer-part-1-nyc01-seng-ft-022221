require 'pry'
def find_item_by_name_in_collection(name, collection)
  result = nil
  collection.each do |food_item|
    food_item.each do |k, v|
      if food_item[k] == name
        result = food_item
      end
    end
  end
  result
end

=begin 
def consolidate_cart(cart)
 consolidated_cart = []
 cart.each do |food_item|
  current_food_item = find_item_by_name_in_collection(food_item[:item], consolidated_cart)
  if current_food_item
    consolidated_cart.each do |new_food_item|
      if new_food_item[:item] == current_food_item[:item]
        binding.pry
        new_food_item[:count] += 1
      end
    end
  else
    food_item[:count] = 1
    consolidated_cart << food_item
  end
 end
 consolidated_cart
end
=end

def consolidate_cart(cart)
 consolidated_cart = []
 cart.each do |food_item|
  current_food_item = find_item_by_name_in_collection(food_item[:item], consolidated_cart)
  if current_food_item
    consolidated_cart.each do |new_food_item|
      if new_food_item[:item] == current_food_item[:item]
        new_food_item[:count] += 1
      end  
    end
  else
    food_item[:count] = 1
    consolidated_cart << food_item
  end
 end
 consolidated_cart
end

puts consolidate_cart([{:item => "AVOCADO", :price => 3.00, :clearance => true},
      {:item => "KALE", :price => 3.00, :clearance => false},
      {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
      {:item => "AVOCADO", :price => 3.00, :clearance => true}, {:item => "BLACK_BEANS", :price => 2.50, :clearance => false}, {:item => "Melville", :price => 2.50, :clearance => false}])

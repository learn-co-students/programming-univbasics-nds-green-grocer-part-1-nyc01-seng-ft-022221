def find_item_by_name_in_collection(name, collection)

collection.each do
  |item|
  if(item[:item] == name)
    return item
  end
end
return nil

end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

  final_cart = []

  cart.each do
    |item|

    if(find_item_by_name_in_collection(item[:item], final_cart) == nil)
      item[:count] = 1
      final_cart.push(item)
    else
      final_cart.each do
        |temp|
        if(item[:item] == temp[:item])
          temp[:count] +=1
        end
      end
    end
  end
  return final_cart
end


unconsolidated_cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
]

puts consolidate_cart(unconsolidated_cart)

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.length.times do |i|
    if(collection[i][:item]==name)
      return collection[i]
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  receipt =[];
  cart.length.times do |i|
    location_in_receipt = is_on_receipt(receipt,cart[i])
    if(location_in_receipt!=nil)
    #increment count on receipt
      receipt[location_in_receipt][:count]+=1
    else
      #add item to receipt
      new_item = cart[i]
      new_item[:count] = 1
      receipt.push(new_item)
    end
  end
end

def is_on_receipt(receipt,item)
  
end
  
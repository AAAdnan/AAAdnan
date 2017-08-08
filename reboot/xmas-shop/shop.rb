#has the logic to list, add, delete and mark elements as bought
## we should have methods for list, add, delete, mark
#

#list
#print all the user_list elements




def list(user_list)
puts "Items are:"
  user_list.each_with_index do |(item, boolean), index|
    puts "#{index +1} - [#{boolean ? "x" : " "}] #{item}"
  end
end

def add_method(user_list)
add = ""
puts "Which item would you like to add?"
add = gets.chomp
  if user_list.key?(add.to_sym)
    puts "#{add} already in list"
  else
    user_list[add.to_sym] = false
    puts "#{add} added \n"

    list(user_list)
  end
end

def mark(user_list)
  puts "Which item would you like to mark?"
  mark = gets.chomp
  if user_list.key?(mark.to_sym)
    if user_list[mark.to_sym]
    puts "#{mark} has already been marked"
    else
    user_list[mark.to_sym] = true
    puts "#{mark} has been marked"
    end
  else
    puts "Item not in list"
  end

  list(user_list)
end



def copy(user_list)
  puts "Which item would you like to copy?"
  copy = gets.chomp
  new_entry = "#{copy}_new"
  if user_list.key?(copy.to_sym)
    user_list[new_entry.to_sym] = false
  else
    puts "Item is not in the list. Please add "
  end

  list(user_list)
end

def delete(user_list)
  puts "Which item would you like to delete?"
  delete = gets.chomp
  if user_list.key?(delete.to_sym)
     user_list.delete(delete.to_sym)
    puts "#{delete} has been deleted"
  else
    puts "#{delete} is not in the list"
  end

  list(user_list)
end








# inventory assignment

# - push to github

# user can
  # o- add/remove
  # o- set # of items
  # - print out in table
  # x- zero out an item to delete it // i disagree. you should be able to have 0 of an item
  # o- not able to put in bs data
  # o- options list (help)
  # o- not able to break it



# initialize inventory hash
inventory = {}

# initial prompt
puts "Welcome to Tijo's inventory. What's your first item?"
first_item = gets.chomp
puts "How many #{first_item}s do you have?"
first_number = gets.chomp.to_i

# - set first value
if first_number >= 0
  inventory[first_item] = first_number
else
  puts "Can't have negative inventory."
end

# - whole program runs on a while loop until you type 'quit'
running = true
while running
  puts "What would you like to do? Type 'help' for options."
  action = gets.chomp.downcase

  case action
  when "help"
    puts "
      add     - add a new item
      remove  - remove an existing item
      update  - update the number of an item
      check   - check the number of an item
      print   - print a table of your inventory
      quit    - quit program
      "

  when "add"
    puts "What would you like to add?"
    item = gets.chomp
    if inventory[item]
      puts "Item already exists."
    else
      puts "How many #{item}s would you like to add?"
      number = gets.chomp.to_i
      if number >= 0
        inventory[item] = number
      else
        puts "Can't have negative inventory."
      end
    end


  when "remove"
    puts "What item would you like to remove?"
    item = gets.chomp
    if inventory[item]
      inventory.delete(item)
    else
      puts "Item not in inventory."
    end

  when "update"
    puts "What item would you like to update?"
    item = gets.chomp
    if inventory[item]
      puts "How many #{item}s do you have?"
      number = gets.chomp.to_i
      if number >= 0
        inventory[item] = number
      else
        puts "Can't have negative inventory."
      end
    else
      puts "Item not in inventory."
    end

  when "check"
    puts "What item would you like to check?"
    item = gets.chomp
    if inventory[item]
      puts "You have #{inventory[item]} #{item}s."
    else
      puts "Item not in inventory."
    end

  when "print"
    puts inventory

  when "quit"
    running = false

  else
    puts "Command not recognized."

  end

end

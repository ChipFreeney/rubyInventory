# inventory assignment

# user can
# - add/remove
# - set # of items
# - print out in table
# - zero out an item
# - not able to put in bs data
# - options list (help)
# - not able to break it
# - push to github


# initialize inventory hash
inventory = {}

# initial prompt
puts "Welcome to Tijo's inventory. What's your first item?"
first_item = gets.chomp

puts "How many #{first_item}s do you have?"
first_number = gets.chomp

inventory[first_item] = first_number

running = true
while running
  puts "What would you like to do? Type 'help' for options."
  action = gets.chomp.downcase

  case action
  when "help"
    puts "
      add - add a new item
      remove - remove an existing item
      update - update the number of an item
      check - check the number of an item
      print - print a table of your inventory
      quit - quits program
      "

  when "add"
    puts "What would you like to add?"
    item = gets.chomp
    if inventory[item]
      puts "item already exists"
    else
      puts "How many #{item}s would you like to add?"
      number = gets.chomp.to_i
      inventory[item] = number
    end


  when "remove"
    puts "# remove code"

  when "update"
    puts "# update code"

  when "print"
    puts inventory

  when "check"
    puts "# code that shows use how many of something"

  when "quit"
    running = false

  else
    puts "Command not recognized"

  end






end
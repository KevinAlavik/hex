def handle_command(user_input : String)
  case user_input
  when "help"
    # Implement the help command here
    puts "im lazzy"
  when "test"
    puts "test"
  when "exit"
    puts "Exiting..."
    break
  else
    puts "Invalid command. Type 'help' for a list of commands."
  end
end

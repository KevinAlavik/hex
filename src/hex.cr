require "./lib/commands"

module Hex
  VERSION = "0.1.0"
end

def main
  while 1
    print "> "
    user_input = gets
    Commands.handle_command(user_input)
  end
end

main

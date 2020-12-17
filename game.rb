class Menu 
    attr_accessor :menu_options_array
    # attr_reader
    # attr_writer

    def display_menu
        menu_options_array.each_with_index do | menu_item, index |
            print "#{index + 1}. #{menu_item}, \n"
        end
    end

    def initialize(menu_details)
        @menu_options_array = menu_details
    end
    def request_user_input
        puts "Please input your option"
        display_menu
        user_input = gets.chomp.to_i 
        user_input -=1
        return user_input
    end
end

class Main_menu < Menu
    def initialize ()
        # Super calls parent initialize function
        super (["Update Player 1 Name", "update Player 2 Name", "Play Game 1", "Play Game 2", "See Scoreboard"])
    end
end

menu = Main_menu.new 
# menu.display_menu
puts menu.request_user_input

# end

# display_menu
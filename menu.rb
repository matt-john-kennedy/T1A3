require "tty-prompt"
$prompt = TTY::Prompt.new


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


        # return $prompt.select ("Please select your option: ", [@menu_details]) #display_menu
        
        # tty prompt gem - makes this easier - download the gem (forces answer to be integer - can also use keyboard to select menu option) - Jairo used this and gave an example in the sports league
        # there are 5 features in this single gem, each counts as one if I use them.
        # while user_input >= @menu_options_array.length
        #     puts "invalid option, please try again"
        #     user_input = gets.chomp.to_i
        # end

        
    end
end


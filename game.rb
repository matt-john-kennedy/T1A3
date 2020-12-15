class Menu 
    attr_accessor :menu_options_array
    # attr_reader
    # attr_writer

    def display_menu
        puts menu_options_array
    end

    def initialize(menu_details)
        @menu_options_array = menu_details
        
    end
end

class Main_menu < Menu
    def initialize ()
        # Super calls parent initialize function
        super (["Update Player 1 Name", "update Player 2 Name", "Play Game 1", "Play Game 2", "See Scoreboard"])
    end
end

menu = Main_menu.new 
menu.display_menu

# end

# display_menu
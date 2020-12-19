require_relative("./menu.rb")
require_relative("./user_menu.rb")
# require_relative("./index.rb")

class Main_menu < Menu
    def initialize
        # Super calls parent initialize function
        # super (["Update Player 1 Name", "update Player 2 Name", 
        # "Play Game 1", "Play Game 2", "See Scoreboard", "Exit"])
        # @response = $prompt.select
        super ["Update Player Names", "Play Game 1", "Play Game 2", "See Scoreboard", "Exit"]
        # return @response
        
    end

    def option_selected(option)
        case option
            when "Update Player Names"
                User_menu.new.loop
            when "Play Game 1"
                game1
            when "Play Game 2"
                game2
            when "See Scoreboard"
            scoreboard
        end
    end 

    
end

# menu = Main_menu.new 
# # menu.display_menu
# menu.request_user_input


# use case for menu selection to progress

# end

# display_menu
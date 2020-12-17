# require_relative("./menu.rb")

class Main_menu < Menu
    def initialize ()
        # Super calls parent initialize function
        super (["Update Player 1 Name", "update Player 2 Name", "Play Game 1", "Play Game 2", "See Scoreboard", "Exit"])
    end
end

# menu = Main_menu.new 
# # menu.display_menu
# menu.request_user_input


# use case for menu selection to progress

# end

# display_menu
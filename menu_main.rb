require_relative("./menu.rb")
require_relative("./user_menu.rb")
# require_relative("./index.rb")
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

    def scoreboard
        print "#{$user1[:name]} Game 1: #{$user1[:g1_score]} Game 2: #{$user1[:g2_score]}\n" 
        print "#{$user2[:name]} Game 2: #{$user2[:g1_score]} Game 2: #{$user2[:g2_score]}\n" 
        # print "#{user1[:name]} game 1 score: #{user1[:g1_score]} game 2 score: #{user1[:g2_score]}"
        # print "#{user2[:name]} game 1 score: #{user2[:g1_score]} game 2 score: #{user2[:g2_score]}"
    end

    def option_selected(option)
        case option
            when "Update Player Names"
                userm = User_menu.new(2)
                userm.loop
                
            when "Play Game 1"
                initiate_game_1
            when "Play Game 2"
                initiate_game_2
            when "See Scoreboard"
                scoreboard
                # puts user1
                # puts user2
        end
    end 

    
end

# menu = Main_menu.new 
# # menu.display_menu
# menu.request_user_input


# use case for menu selection to progress

# end

# display_menu
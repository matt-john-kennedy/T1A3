require_relative("./menu.rb")

class User_menu < Menu
    

    def initialize
        super ["User 1", "User 2", "Exit"]
    end
    def update_players
        puts "please enter your name" #Come back to this
        name1 = gets.chomp()
        # return name1
    end

    def option_selected(option)
        case option
            when "User 1"
                update_players
            when "User 2"
                update_players
        end
    end
end
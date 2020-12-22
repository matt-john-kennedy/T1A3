require_relative("./menu.rb")

class User_menu < Menu
    attr_accessor :num_users
    attr_accessor :user1
    
    def initialize(num_users)
        @num_users = num_users
        user_array = (1..num_users)
        user_array = user_array.map do | user |
            "User " + user.to_s
        end
        super user_array.to_a + ["Exit"]
    end
    def option_selected(option)
        case option
            when "User 1"
                # update_players
                puts "Please enter your new name: "
                $user1[:name] = gets.chomp
                # puts $user1
            when "User 2"
                puts "Please enter your new name: "
                $user2[:name] = gets.chomp
        end
    end
end
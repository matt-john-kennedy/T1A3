require_relative("./menu.rb")
# require_relative("./index.rb")

class User_menu < Menu
    attr_accessor :num_users
    attr_accessor :user1
    # attr_accessor :user1
    # attr_accessor :user2

    def initialize(num_users)
        @num_users = num_users
        user_array = (1..num_users)
        user_array = user_array.map do | user |
            "User " + user.to_s
            # return = "user" []
            # puts user_array
            # sleep (3)
        end
        super user_array.to_a + ["Exit"]
    end
    def update_players
        puts "please enter your name" #Come back to this
        name = gets.chomp()
    #     $user1[:name] = gets.chomp
    #     $user2[:name] = gets.chomp
    #     # puts user1{:name}
    #     # sleep (3)
    #     # return name1
    end

    def option_selected(option)
        # hash.new {:player, :name, :game1 score, :game2 s}
        
        
        case option
            when "User 1"
                # update_players
                puts "Please enter your new name: "
                $user1[:name] = gets.chomp
                # puts $user1
            when "User 2"
                $user2[:name] = gets.chomp
        end
    end
end
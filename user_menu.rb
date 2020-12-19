require_relative("./menu.rb")

class User_menu < Menu
    

    def initialize
        super ["User 1", "User 2", "Exit"]
    end
    def update_players
        # Need a place to store user details but not here but can be here
    end

    def loop
        response = ""
        while response != "Exit"
            response = request_user_input
            system "clear"
            puts response
            case response
                when "User 1"
                    update_players
                when "User 2"
                    update_players
            end
            if response != "Exit" 
                print "Press Enter Key to continue..."
                gets  
            end 
            system "clear"
        end
        
    end
end
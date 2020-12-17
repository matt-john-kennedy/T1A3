# go to this site to add more TTY gems https://rubygems.org/search?utf8=%E2%9C%93&query=tty

=begin Bundler manages everything - needs to be commited into git

gem list bundler - checks if bundler is installed

bundle init - initialises bundler so it can manage gems

How to add a gem after initial izing bundler

bundle add colorize - adds colorize to the gem file in bundler 
=end

require "colorize"
require "tty-prompt"
require_relative("./menu.rb")
require_relative("./menu_main.rb")
require_relative("./users.rb")
require_relative("./leaderboard.rb")
# require_relative("./menu.rb")
# require_relative("./menu.rb")
# require_relative("./menu.rb")

# prompt 

menu = Main_menu.new 
# menu.display_menu
# menu.request_user_input
response = ""
while response != "Exit"
    response = menu.request_user_input
    system "clear"
    case response
    when "Update Player 1 Name"
        ladder
    when "update Player 2 Name"
        team = select_team
        show_team_info(team)
    when "Play Game 1"
        mode = game_mode
        play_game(mode)
    when "Play Game 2"
        training
    when "See Scoreboard"
        training
    else
        puts "See you next time"
        next
    end 
    print "Press Enter Key to continue..."
    gets 
    system "clear"
end
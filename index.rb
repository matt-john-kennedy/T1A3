# go to this site to add more TTY gems https://rubygems.org/search?utf8=%E2%9C%93&query=tty

=begin Bundler manages everything - needs to be commited into git

gem list bundler - checks if bundler is installed

bundle init - initialises bundler so it can manage gems

How to add a gem after initial izing bundler

bundle add colorize - adds colorize to the gem file in bundler 
=end
input_array = ARGV

# input_array.each do |argument|
#     values = argument
#     # values = values.to_a
#     name1 = values[0]
#     name2 = values[1]
#     puts "hello #{name1} and #{name2}"
# end
require "colorize"
require "tty-prompt"
require_relative("./menu.rb")
require_relative("./menu_main.rb")
require_relative("./users.rb")
require_relative("./leaderboard.rb")
require_relative("./user_menu.rb")
# require_relative("./menu.rb")
# require_relative("./menu.rb")

# prompt 
# attr_accessor :user1
# attr_accessor :user2
# $user1 = [name: "p1", g1score: 0, g2score: 0]
# $user2 = [name: "p2", g1score: 0, g2score: 0]

# @user1 = User_menu.new{name: "p1", g1_score: 1, g2_score: 2, self}

# @user2 = {name: "p2", g1_score: 1, g2_score: 2}



$user1 = {name: input_array[0], g1_score: 1, g2_score: 2}
$user2 = {name: input_array[1], g1_score: 1, g2_score: 2}
print "#{$user1[:name]} Game 1: #{$user1[:g1_score]} Game 2: #{$user1[:g2_score]}\n" 
        print "#{$user2[:name]} Game 2: #{$user2[:g1_score]} Game 2: #{$user2[:g2_score]}\n" 
# print $user2.keys 
puts ""
# print $user2.values

# menu.display_menu
# menu.request_user_input
# Main_menu.new.loop
menu = Main_menu.new
menu.loop

# create variable, make variable user data.

def game1
puts "Game 1 is "

push_users_into_array

def initiate_game_1
        create_max_num
                create_max_guesses
                create_max_
        play_game_1
        input_game_data_into_user1
        play_game_1
        input_game_data_into_user2
end

def initiate_game_2
        # while correct number not guessed
                # for each array, guess number, 
                        # if correct number, score =+1
                # or 
                # user 1 guess
                        # if not correct =+ 1 attempts / =-1 attempts remaining
                        # else score =+ 1
                # user 2 guess
                        # if not correct =+ 1 attempts / =-1 attempts remaining
                        # else score =+ 1
        play_game_2
        input_game_data_into_user1
        play_game_2
        input_game_data_into_user2
end
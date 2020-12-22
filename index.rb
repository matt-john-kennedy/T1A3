#!/usr/bin/ruby
# go to this site to add more TTY gems https://rubygems.org/search?utf8=%E2%9C%93&query=tty

=begin Bundler manages everything - needs to be commited into git

gem list bundler - checks if bundler is installed

bundle init - initialises bundler so it can manage gems

How to add a gem after initial izing bundler

bundle add colorize - adds colorize to the gem file in bundler 
=end
input_array = ARGV

input_array.each do |argument|
    values = argument
#     # values = values.to_a
    name1 = values[0].to_s
    name2 = values[1].to_s
end
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



$user1 = {name: "text", g1_score: 1, g2_score: 2}
$user2 = {name: "text", g1_score: 1, g2_score: 2}
$user1[:name] = input_array[0]
$user2[:name] = input_array[1]

print "#{$user1[:name]} Game 1: #{$user1[:g1_score]} Game 2: #{$user1[:g2_score]}\n".yellow
print "#{$user2[:name]} Game 2: #{$user2[:g1_score]} Game 2: #{$user2[:g2_score]}\n".red
# print $user2.keys 
puts ""
# print $user2.values

def initiate_game_1
        
        num_guesses = 1
        max_num = 1000
        min_num = 1
        num_valid = false
        score_1000 = 9
        score_100 = 7
        score_10 = 3
        attempts = 0
        guessed_number = 0

        
        while num_valid == false 
                puts "please enter max num either 10 (3 guesses), 100 (7 guesses) or 1000 (9 guesses)"
                max_num = gets.chomp()
                if max_num != "10" && max_num != "100" && max_num != "1000"
                                puts "invalid entry, please try again"
                                num_valid = false
                        else 
                                max_num = max_num.to_i
                                num_valid = true
                                if max_num == 10
                                        num_guesses = score_1000
                                elsif max_num == 100
                                        num_guesses = score_100
                                else 
                                        num_guesses = score_10
                                end
                end
                
        end  
        puts "Player 1 turn"       
        winning_number = rand(min_num..max_num)
        while guessed_number != winning_number && attempts <= num_guesses
                puts "#{$user1[:name]} guess the number between 1 and #{max_num}"
                guessed_number = gets.chomp().to_i
                if guessed_number > winning_number && guessed_number <= max_num
                        puts "#{$user1[:name]} I'm sorry, that number is too high \nplease guess again"
                        elsif guessed_number < winning_number && guessed_number >= min_num
                        puts "#{$user1[:name]} Sorry, I didn't see you there, that number was too low \nplease guess again"
                        else
                        puts "#{winning_number} was the correct number!"
                end
                attempts += 1
        end
                puts "#{$user1[:name]} CONGRATULATIONS!!!!! You've finished the game!!!!"
                puts ":)"
                $user1[:g1_score] += num_guesses - attempts
                print $user1[:g1_score] 
                puts " is your new current score"
                
        puts "Player 2 turn"
        
        # num_guesses = 0
        attempts = 0
        guessed_number = 0
        winning_number = rand(min_num..max_num)

        while guessed_number != winning_number && attempts <= num_guesses
                puts "#{$user2[:name]} guess the number between 1 and #{max_num}"
                guessed_number = gets.chomp().to_i
                if guessed_number > winning_number && guessed_number <= max_num
                                puts "#{$user2[:name]} I'm sorry, that number is too high \nplease guess again"
                        elsif guessed_number < winning_number && guessed_number >= min_num
                                puts "#{$user2[:name]} Sorry, I didn't see you there, that number was too low \nplease guess again"
                        elsif
                        puts "#{$user2[:name]} that is not between #{min_num} & #{max_num} please guess again"
                end
                attempts += 1
        end
                puts "CONGRATULATIONS!!!!! You've finished the game!!!!"
                puts ":)"
                $user2[:g1_score] += num_guesses - attempts
                print $user2[:g1_score] 
                puts " is your new current score"
end



def initiate_game_2
        num_guesses = 1
        max_num = 1000
        min_num = 1
        num_valid = false
        attempts = 0
        guessed_number = 0

        while num_valid == false 
                puts "please enter max num either 10 (3 guesses), 100 (7 guesses) or 1000 (9 guesses)"
                max_num = gets.chomp()
                puts max_num.class
                if max_num != "10" && max_num != "100" && max_num != "1000"
                                puts "invalid entry, please try again"
                                num_valid = false
                        else 
                                max_num = max_num.to_i
                                num_valid = true
                                if max_num == 10
                                                num_guesses = 3
                                        elsif max_num == 100
                                                num_guesses = 7
                                        else max_num = 9
                                end
                end             
        end

        winning_number = rand(min_num..max_num)
        puts winning_number

        while guessed_number != winning_number && attempts <= num_guesses
                puts "Player 1, guess a number between #{min_num} and #{max_num}"
                guessed_number = gets.chomp().to_i
                # player 1 turn
                if guessed_number > winning_number && guessed_number <= max_num
                                puts "I'm sorry, that number is too high \nplease guess again later"
                                
                        elsif guessed_number < winning_number && guessed_number >= min_num
                                puts "Sorry, I didn't see you there, that number was too low \nplease guess again later..."
                        elsif guessed_number == winning_number
                                $user1[:g2_score] +=1
                                puts "CONGRATULATIONS!!!!! You've WON the game!!!!"
                                puts ":)"
                        else
                                puts "that is not between #{min_num} & #{max_num} please guess again later, due to your error, we will move on for now"
                end
                # winning_number = rand(min_num..max_num)
                if guessed_number != winning_number
                        puts "Player 2 has to guess now! \n"
                        puts "Player 2, please guess a number between #{min_num} and #{max_num}"
                        guessed_number = gets.chomp().to_i
                        # player 2 turn
                        if guessed_number > winning_number && guessed_number <= max_num
                                        puts "I'm sorry, that number is too high \nplease guess again later"
                                        
                                elsif guessed_number < winning_number && guessed_number >= min_num
                                        puts "Sorry, I didn't see you there, that number was too low \nplease guess again later..."
                                elsif guessed_number == winning_number
                                        $user2[:g2_score] +=1
                                        puts "CONGRATULATIONS!!!!! You've WON the game!!!!"
                                        puts ":)"
                                else
                                        puts "that is not between #{min_num} & #{max_num} please guess again later, due to your error, we will move on for now"
                        end
                end
                attempts += 1
        end
        if guessed_number != winning_number
                puts "I'm sorry you did not finish the game"
        end


      

        # while num_guesses != true
        # puts "please enter max num either 10 (3 guesses), 100 (7 guesses) or 1,000 (9 guesses)"
        # num_guesses = gets.chomp()
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
        # play_game_2
        # input_game_data_into_user1
        # play_game_2
        # input_game_data_into_user2
        # end
end



        


# menu.display_menu
# menu.request_user_input
# Main_menu.new.loop
menu = Main_menu.new
menu.loop

# create variable, make variable user data.




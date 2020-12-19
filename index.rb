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




# menu.display_menu
# menu.request_user_input
Main_menu.new.loop

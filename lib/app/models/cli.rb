require 'rest-client' 
require 'json'
require 'pry'
require 'tty-prompt'

class Cli 
        def initialize()
            @prompt = TTY::Prompt.new  
        end
        
        def welcome
            puts "What is your name?"    
            name = gets
            p "Hello there #{name}!!"
            self.select
        end

        def select
            user_select = @prompt.select("What style would you like?") do |menu|
                    menu.choice "classic", 1
                    menu.choice "minimal", 2
                    menu.choice "streetwear", 3
                    menu.choice "abort!", 4
            end
            if user_select == 1
                puts Brand.all.select{|brand|brand.style == "classic"}.map{|n|n.brand}
                @prompt.keypress("Press any key to return")
                self.select
            elsif user_select == 2
                puts Brand.all.select{|brand|brand.style == "minimal"}.map{|n|n.brand}
                @prompt.keypress("Press any key to return")
                self.select
            elsif user_select == 3
                puts Brand.all.select{|brand|brand.style == "streetwear"}.map{|n|n.brand}
                @prompt.keypress("Press any key to return")
                self.select
            elsif user_select == 4
                p "leave this!"
                p "goodbye! :) "
                exit
                
            end
        end
end      

        
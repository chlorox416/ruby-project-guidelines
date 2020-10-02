require 'rest-client' 
require 'json'
require 'pry'
require 'tty-prompt'

class Cli 
        def initialize()
            @prompt = TTY::Prompt.new
            # pastel = Pastel.new.white.on_cyan.detach  
        end
        
        def welcome
            puts "What is your name?"    
            name = gets
            sleep(1)
            puts ''
            print "Hello there #{name}"
            puts ''
            sleep(1)
            self.select
        end

        def select
            
            user_select = @prompt.select("What would you like to do?") do |menu|
                    menu.choice "Browse by style", 1
                    menu.choice "Browse by price point", 2
                    menu.choice "See all brands", 3
                    menu.choice "Abort!", 4
            end

            if user_select == 1
                sleep(1)
                self.browse_by_styes
                sleep(1)
            elsif user_select == 2
                sleep(1)
                self.browse_by_price
                sleep(1)
            elsif user_select == 3
                sleep(1)
                puts Brand.all.map{|n|n.brand}
                @prompt.keypress("-- Press any key to return --")
                sleep(1)
                self.select
                sleep(1)
            elsif user_select == 4
                sleep(1)
                p "goodbye! :) "
                exit
                sleep(2)
            end
        end


        def browse_by_styes
            user_select = @prompt.select("What style would you like?") do |menu|
                    menu.choice "classic", 1
                    menu.choice "minimal", 2
                    menu.choice "streetwear", 3
                    menu.choice "go back!", 4
            end
            if user_select == 1
                sleep(1)
                puts Brand.all.select{|brand|brand.style == "classic"}.map{|n|n.brand}
                @prompt.keypress("-- Press any key to return --")
                self.browse_by_styes
                sleep(1)
            elsif user_select == 2
                sleep(1)
                puts Brand.all.select{|brand|brand.style == "minimal"}.map{|n|n.brand}
                @prompt.keypress("-- Press any key to return --")
                self.browse_by_styes
                sleep(1)
            elsif user_select == 3
                sleep(1)
                puts Brand.all.select{|brand|brand.style == "streetwear"}.map{|n|n.brand} #&& n.price
                @prompt.keypress("-- Press any key to return --")
                self.browse_by_styes
                sleep(1)
            elsif user_select == 4
                sleep(1)
                p "leave this!"
                self.select
                sleep(1)
            end
        end  
        
        
        def browse_by_price
            user_select = @prompt.select("What price point would you like?") do |menu|
                    menu.choice "$", 1
                    menu.choice "$$", 2
                    menu.choice "$$$", 3
                    menu.choice "nevermind!", 4
            end
            if user_select == 1
                sleep(1)
                puts Brand.all.select{|brand|brand.price_point == "$"}.map{|n|n.brand}
                @prompt.keypress("-- Press any key to return --")
                self.browse_by_price
                sleep(1)
            elsif user_select == 2
                sleep(1)
                puts Brand.all.select{|brand|brand.price_point == "$$"}.map{|n|n.brand}
                @prompt.keypress("-- Press any key to return --")
                self.browse_by_price
                sleep(1)
            elsif user_select == 3
                sleep(1)
                puts Brand.all.select{|brand|brand.price_point == "$$$"}.map{|n|n.brand}
                @prompt.keypress("-- Press any key to return --")
                self.browse_by_price
                sleep(1)
            elsif user_select == 4
                sleep(1)
                p "leave this!"
                self.select
                sleep(1)
                
            end
        end  
       
   


        
end      

        
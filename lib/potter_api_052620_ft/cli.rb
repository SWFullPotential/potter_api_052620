class Cli 
    #service class because it's going to do something.
    
        def run
            puts "Hello and welcome to Hogwarts' Library of Spells. Congratulations on being accepted to the greatest wizarding school in the world!"
    
            puts "Please hold while our house elves gather and categorize the spells you'll be learning during your time here..."
            puts "..."
            puts "..."
            API.get_spells

            
            #loads data
            puts "Your patience is appreciated, and the spells have been assembled for your browsing pleasure."
    
            print_main_menu
    
        end
    
        def print_main_menu
            puts "*--*--*--*--*--*"
            puts "Please choose a category."
            puts "1. Charm"
            puts "2. Curse"
            puts "3. Enchantment"
            puts "4. Hex"
            puts "5. Jinx"
            puts "6. Spell"
            puts "7. List all."
            puts "Type 'Mischief Managed' to exit program."
            puts "*--*--*--*--*--*"
            category
        end
        
        def category
            user_input = gets.strip
            
            if user_input == "1"
                puts " "
                puts "*--*--*--*--*--*"
                Spells.all.each.select do |spells|
                    puts "##{spells.type}"
                end
                puts "*--*--*--*--*--*"
                print_main_menu
                binding.pry
                elsif user_input == "Mischief Managed" 
                exit_program
                exit
            else
                invalid_input
                print_main_menu
            end

        end

        # def print_spell_categories
        #     puts " "
        #     puts "*--*--*--*--*--*"
        #     Spells.all.each.with_index(1) do |spells, index|
        #         puts "" #for a space between
        #         puts "#{index}. #{spells.type}"
        #         # binding.pry
        #     end
        # end

        
        def exit_program
            puts "*---*---*   Nox   *---*---*"
        end


        def invalid_input
            puts "Category does not exist yet, please try again!"
        end

 end
    
            # puts "Choose a category of spell to browse, or list all. 
            #     1. Charm 
            #     2. Curse   
            #     3. Enchantment
            #     4. Hex 
            #     5. Jinx
            #     6. Spell
            #     7. List all. "
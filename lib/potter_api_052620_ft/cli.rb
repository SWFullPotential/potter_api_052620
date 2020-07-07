class Cli 
    #service class because it's going to do something.
    
        def run
            puts "
            ▄  █ ████▄   ▄▀    ▄ ▄   ██   █▄▄▄▄    ▄▄▄▄▀ ▄▄▄▄▄   
            █   █ █   █ ▄▀     █   █  █ █  █  ▄▀ ▀▀▀ █   █     ▀▄ 
            ██▀▀█ █   █ █ ▀▄  █ ▄   █ █▄▄█ █▀▀▌      █ ▄  ▀▀▀▀▄   
            █   █ ▀████ █   █ █  █  █ █  █ █  █     █   ▀▄▄▄▄▀    
               █         ███   █ █ █     █   █     ▀              
              ▀                 ▀ ▀     █   ▀                     
                                       ▀                        "
            puts "Hello and welcome to Hogwarts' Library of Spells. Congratulations on being accepted to the greatest wizarding school in the world!"
    
            puts "Please hold while our house elves gather and categorize the spells you'll be learning during your time here..."
            sleep(2)
            puts "..."
            sleep(2)
            puts "..."
            API.get_spells
            sleep(2)
            
            #loads data
            puts "Your patience is appreciated, and the spells have been assembled for your browsing pleasure."
    
            print_main_menu
    
        end
    
        def print_main_menu
            puts "*--*--*--*--*--*"
            puts "Please choose a category(number)."
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
        
        def charms
            puts "
    ▄█▄     ▄  █ ██   █▄▄▄▄ █▀▄▀█    ▄▄▄▄▄   
    █▀ ▀▄  █   █ █ █  █  ▄▀ █ █ █   █     ▀▄ 
    █   ▀  ██▀▀█ █▄▄█ █▀▀▌  █ ▄ █ ▄  ▀▀▀▀▄   
    █▄  ▄▀ █   █ █  █ █  █  █   █  ▀▄▄▄▄▀    
    ▀███▀     █     █   █      █             
                ▀     █   ▀      ▀              
                    ▀                         "
            Spells.charms.each do |charm|
                puts "#{charm.spell} - #{charm.effect}."
            end
            print_main_menu

        end


        def category
            user_input = gets.strip
            
            if user_input == "1"
                charms
            elsif user_input == "2"
                puts " 
        ▄█▄      ▄   █▄▄▄▄   ▄▄▄▄▄   ▄███▄     ▄▄▄▄▄   
        █▀ ▀▄     █  █  ▄▀  █     ▀▄ █▀   ▀   █     ▀▄ 
        █   ▀  █   █ █▀▀▌ ▄  ▀▀▀▀▄   ██▄▄   ▄  ▀▀▀▀▄   
        █▄  ▄▀ █   █ █  █  ▀▄▄▄▄▀    █▄   ▄▀ ▀▄▄▄▄▀    
        ▀███▀  █▄ ▄█   █             ▀███▀             
                ▀▀▀   ▀                                
                                                        "
                Spells.curses.each do |curse|
                    puts "#{curse.spell} - #{curse.effect}."
                end
                print_main_menu
            elsif user_input == "3"
                puts "
▄███▄      ▄   ▄█▄     ▄  █ ██      ▄     ▄▄▄▄▀ █▀▄▀█ ▄███▄      ▄     ▄▄▄▄▀ ▄▄▄▄▄   
█▀   ▀      █  █▀ ▀▄  █   █ █ █      █ ▀▀▀ █    █ █ █ █▀   ▀      █ ▀▀▀ █   █     ▀▄ 
██▄▄    ██   █ █   ▀  ██▀▀█ █▄▄█ ██   █    █    █ ▄ █ ██▄▄    ██   █    █ ▄  ▀▀▀▀▄   
█▄   ▄▀ █ █  █ █▄  ▄▀ █   █ █  █ █ █  █   █     █   █ █▄   ▄▀ █ █  █   █   ▀▄▄▄▄▀    
▀███▀   █  █ █ ▀███▀     █     █ █  █ █  ▀         █  ▀███▀   █  █ █  ▀              
        █   ██          ▀     █  █   ██           ▀           █   ██                 
                                ▀                                                      "
                Spells.enchantments.each do |enchantment|
                    puts "#{enchantment.spell} - #{enchantment.effect}."
                end
                print_main_menu
            elsif user_input == "4"
                puts " 
    ▄  █ ▄███▄      ▄  ▄███▄     ▄▄▄▄▄   
    █   █ █▀   ▀ ▀▄   █ █▀   ▀   █     ▀▄ 
    ██▀▀█ ██▄▄     █ ▀  ██▄▄   ▄  ▀▀▀▀▄   
    █   █ █▄   ▄▀ ▄ █   █▄   ▄▀ ▀▄▄▄▄▀    
        █  ▀███▀  █   ▀▄ ▀███▀             
        ▀           ▀                       
                                            "
                Spells.hexes.each do |hex|
                    puts "#{hex.spell} - #{hex.effect}."
                end
                print_main_menu
            elsif user_input == "5"
                puts " 
                ▄▄▄▄▄ ▄█    ▄       ▄  ▄███▄     ▄▄▄▄▄   
                ▄▀  █   ██     █  ▀▄   █ █▀   ▀   █     ▀▄ 
                    █   ██ ██   █   █ ▀  ██▄▄   ▄  ▀▀▀▀▄   
                 ▄ █    ▐█ █ █  █  ▄ █   █▄   ▄▀ ▀▄▄▄▄▀    
                  ▀      ▐ █  █ █ █   ▀▄ ▀███▀             
                           █   ██  ▀                       
                                                                                                    "
                Spells.jinxes.each do |jinx|
                    puts "#{jinx.spell} - #{jinx.effect}."
                end
                print_main_menu
            elsif user_input == "6"
                puts " 
   ▄▄▄▄▄   █ ▄▄  ▄███▄   █    █      ▄▄▄▄▄   
  █     ▀▄ █   █ █▀   ▀  █    █     █     ▀▄ 
▄  ▀▀▀▀▄   █▀▀▀  ██▄▄    █    █   ▄  ▀▀▀▀▄   
 ▀▄▄▄▄▀    █     █▄   ▄▀ ███▄ ███▄ ▀▄▄▄▄▀    
            █    ▀███▀       ▀    ▀          
             ▀                               
                                            "
            
                Spells.spellType.each do |spellType|
                    puts "#{spellType.spell} - #{spellType.effect}."
                end
                print_main_menu
            elsif user_input == "7"
                puts "
                ██   █    █     
                █ █  █    █     
                █▄▄█ █    █     
                █  █ ███▄ ███▄  
                   █     ▀    ▀ 
                  █             
                 ▀              "
                Spells.all.each do |all_spells|
                    puts "#{all_spells.type}: #{all_spells.spell} - #{all_spells.effect}."
                end
                print_main_menu
            elsif user_input == "Mischief Managed" 
                exit_program
            else
                invalid_input
                print_main_menu
            end

        end

        def exit_program
            puts "
                                                                        
            ##### #     ##                                
            ######  /#    #### /                             
           /#   /  / ##    ###/                              
          /    /  /  ##    # #                               
              /  /    ##   #                                 
             ## ##    ##   #    /###     /##    ###          
             ## ##     ##  #   / ###  / / ###  #### /        
             ## ##     ##  #  /   ###/     ### /###/         
             ## ##      ## # ##    ##       ##/  ##          
             ## ##      ## # ##    ##        /##             
             #  ##       ### ##    ##       / ###            
                /        ### ##    ##      /   ###           
            /##/          ## ##    ##     /     ###          
           /  #####           ######     /       ### /       
          /     ##             ####     /         ##/        
          #                                                  
           ##                                                
                       "
            exit
        end


        def invalid_input
            puts "Category does not exist yet, please try again!"
        end

 end

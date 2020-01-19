class HoopsCli::CLI
  
  def call 
     puts "Welcome to the Heat Nation experience!"
     puts
     HoopsCli::Scraper.scrape
     puts "Please enter a number for you favorite player!"
     puts
     players
     roster
  end
    
  def players
    arr = HoopsCli::Player.all.uniq { |player| player.name }
    arr.each.with_index(1) do |object, index|
    puts "#{index}. #{object.name}"
    end
  end
  
  def roster
    puts
    puts "Type the number of your favorite player here!:"
    puts 
    puts "You can type exit at anytime to leave the program"
    input = ""
    while input != "exit"
      input = gets.chomp
      
        
      if (1..17).include?(input.to_i)
        @chosen_player = HoopsCli::Player.all[input.to_i - 1]
        puts
        puts "You entered player #{@chosen_player.name}"
        puts "His jersey number is #{@chosen_player.pl_num}"
        puts "His position is a #{@chosen_player.pl_pos}"
        puts "For #{@chosen_player.name}'s game statistics go to:"
        puts "#{@chosen_player.url}"
        puts
        puts "Type 'r' to view the roster again:"
        puts "Or type the number of another player:"
        puts
        puts "You can type 'exit' at any time to leave the program"
        elsif input.downcase == "r"
          players
          roster
        elsif input.downcase == "exit"
           puts
           puts "I hope you enjoyed yourself!."
           break
        else
          puts
          puts "Sorry! Please enter a specific number from the roster!"
          players
          roster
        end
      end
       puts "Adios!"
       exit
    end 
end


        
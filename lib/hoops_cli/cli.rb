class HoopsCli::CLI

  def call
     puts
     puts "Welcome to the Heat Nation experience!"
     puts
     HoopsCli::Scraper.scrape
     puts "Please enter a number for info on any player from the roster below!"
     puts
     players
     team
  end

  def players
    arr = HoopsCli::Nba.all.uniq { |player| player.name }
    arr.each.with_index(1) do |object, index|
    puts "#{index}. #{object.name}"
    end
  end


  def team
    puts
    puts "You can type exit at anytime to leave the program"
    input = ""
    while input != "exit"
      input = gets.chomp


       if (1..14).include?(input.to_i)
        display_player(input)

        # @chosen_player = HoopsCli::Nba.all[input.to_i - 1]
        # puts
        # puts "You entered player #{@chosen_player.name}"
        # puts "His jersey number is #{@chosen_player.pl_num}"
        # puts "His position is a #{@chosen_player.pl_pos}"
        # puts "For #{@chosen_player.name}'s game statistics go to:"
        # puts "#{@chosen_player.url}"
        # puts
        puts "Type 'roster' to view the roster again:"
        puts "Or type the number of another player:"
        puts
        puts "You can type 'exit' at any time to leave the program"
        elsif input.downcase == "roster"
          players
          team
        elsif input.downcase == "exit"
           puts
           puts "And thats the way it is!"
          break
        else
          puts
          puts "Sorry! Please enter a specific number from the choices given!"
          players
          team
        end
      end
       puts "Signing off!"
      exit
    end

    def display_player(input)

      @chosen_player = HoopsCli::Nba.all[input.to_i - 1]
        puts
        puts "You entered player #{@chosen_player.name}"
        puts "His jersey number is #{@chosen_player.pl_num}"
        puts "His position is a #{@chosen_player.pl_pos}"
        puts "For #{@chosen_player.name}'s game statistics go to:"
        puts "#{@chosen_player.url}"
        puts

    end



    
end

# def team
#   puts
#   puts "You can type exit at anytime to leave the program"
#   input = ""
#   while input != "exit"
#     input = gets.chomp
#   if input == 'exit'
#     puts 'See you next time!'
#   elsif input.to_i.is_a? Numeric
#     if input.to_i.between?(1, 14)
#       # scrape(input.to_i)
#     else
#       puts 'Please info on one of these players!'

#     end
#     menu
#   else
#     puts 'Select a number or type exit'

#     menu
#   end
# end

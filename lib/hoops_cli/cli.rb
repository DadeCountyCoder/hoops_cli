module HoopsCli
    class CLI

        def call
            puts "Welcome Heat Nation!"
            dade
            roster
        end

        def dade
            puts 'The Miami Heat will always be home to WADE county!!
            A 13-time NBA All-Star,
            Wade is Miamis all-time leader in points,
            games, assists, steals, shots made and shots taken.'
        end

        def roster
            puts
            puts 'starting_lineup
            pg_kendrick_nunn
            sg_Jimmy Butler
            sf_Duncan Robinson
            pf_Meyers Leonard
            c_Bam Adebayo'
            # puts
            # puts 'Please enter a number for you favorite player! or type exit:'
            # input = gets.chomp
        
            # if input == 'exit'
            #   puts 'Have a wonderful night! from the National Basketball Association!'
            # elsif input.to_i.is_a? Numeric
            #   if input.to_i.between?(1, 14)
            #     get_data(input.to_i)
            #   else
            #     puts 'Please enjoy'
            #     list
            #   end
            #   menu
            # else
            #   puts 'Select a number or type exit'
            #   list
            #   menu
            # end


        end


    end
end
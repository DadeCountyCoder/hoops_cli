module HoopsCli
    class CLI

        def call
            puts "Welcome Heat Nation!"
            current_standing
            roster
        end

        def current_standing
            puts 'record 27-12, currently 3rd place eastern conference'
        end

        def roster
            puts 'starting_lineup
            pg_kendrick_nunn
            sg_Jimmy Butler
            sf_Duncan Robinson
            pf_Meyers Leonard
            c_Bam Adebayo'

        end


    end
end
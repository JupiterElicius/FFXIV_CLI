
class CLI

    def start
        puts "Hey there! Welcome to my FC search app."
        input = ""
        while input !=  "exit!"
        puts "Please enter a name to search"
        input = gets.strip
        break if input == "exit!"
            if temp = check_search(input) == true
                response(temp)
            elsif input == ""
                puts "Please enter a valid name."
            else
                response(API.get_fcs(input))
            end
        end

    end

    def check_search(input)
        FC.all.find do |v|
            v.search == input
            # binding.pry
        end
    end

    def response(fc)
        # binding.pry
        puts "Your search results for #{fc.search} are: \n#{check_length(fc.names)}"
    end
    
    def check_length(fc)
        if fc.length > 0 
            fc.join(", \n")
        else
            phrase = "There are currently no search results available."
            phrase
        end

    end
end
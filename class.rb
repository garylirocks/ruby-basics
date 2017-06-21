# an Ruby class example from: https://www.ruby-lang.org/en/documentation/quickstart

class MegaGreeter
    # NOTE: make some some class properties accessible outside of it
    attr_accessor :names

    # create the object
    def initialize(names = "World")
        # NOTE: '@' indicates an instance variable
        @names = names
    end

    # say hi to everybody
    def say_hi
        if @names.nil?
            puts "..."

        # NOTE: test whether the variable is a list,
        # this is an example of 'Duck Typing', it doesn't care what the type of the variable, only check whether a method is supported
        elsif @names.respond_to?("each")

            # NOTE: use '.each' to iterate over a list
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
            puts "Hello #{@names}!"
        end
    end

    # say bye to everybody
    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            puts "Goodbye #{@names.join(", ")}. Come back soon!"
        else
            puts "Goodbye #{@names}. Come back soon!"
        end
    end
end

# NOTE: only run this if this file is executed directly
if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    mg.names = "Gary"
    mg.say_hi
    mg.say_bye

    mg.names = ["Jon", "Arya", "Dany"]
    mg.say_hi
    mg.say_bye

    mg.names = nil
    mg.say_hi
    mg.say_bye
end

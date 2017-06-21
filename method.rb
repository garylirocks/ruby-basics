# this file shows how to define and call a method

def hi(name)
    # NOTE
    # '#{variable}' this is the way to inserting a variable in a string
    puts "Hello #{name.capitalize} !"
end

hi('gary')


def self_intro(name, age)
    puts "Hello, I am #{name}, #{age} years old"
end

# NOTE
# parenthesis is not absolutely needed for a method call
self_intro "gary", 26

#1 write a program that prints a greeting message. should contain a method called greeting that takes a name as its parameter and returns a string

def greeting(name)
  puts "Hi, " + name + ". How's it going?"
end

puts "what is your name?"
name = gets.chomp

greeting(name)







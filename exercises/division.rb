# ask user for two integers, print results of dividing first number by second number
# second number must not be zero
# error message if not an integer

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
num = nil
den = nil

loop do

  loop do
    p ">> Please enter the numerator:"
    num = gets.chomp

    break if valid_number?(num)
    p ">> Invalid input. Only integers are allowed."
  end

  loop do
    p ">> Please enter the denominator:"
    den = gets.chomp

    if den == "0"
      p ">>Invalid input. A denominator of 0 is not allowed."
    else
      break if valid_number?(den) 
      p ">> Invalid input. Only integers are allowed."
    end
  end

  answer = num.to_i / den.to_i

  p "#{num} / #{den} is #{answer}"

  p "Are you done dividing? (y/n)"
    done = gets.chomp

  break if done.downcase == "y"
  
end

puts "Goodbye!"
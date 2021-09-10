def add_three(n)
  n + 3
end

add_three(5)    # returns 8 (not printed)

add_three(5).times { puts 'this should print 8 times' }
# the times method is being called on the returned value of add_three
# also returns the number 8


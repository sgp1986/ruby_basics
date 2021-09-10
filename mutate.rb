a = [1, 2, 3]

# Example of a method def that mutates its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"

b = [1, 2, 3]

# Example of a method def that does not mutates its argument permanently
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{b}"
p no_mutate(a)
p "After no_mutate method: #{b}"
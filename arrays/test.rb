array = [ 'Bob', 'Steve', 'Andy', 'Zeke', 'Paul' ]

array.sort.each_with_index { |name, index| puts "#{index}) #{name}" }


a = [1, 2, 3]
b = a.map { |n| n + 2 }

p a
p b
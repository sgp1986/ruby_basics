#1
array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array1.each { |e| puts e }
puts "-----"
#2
array2 = array1.each { |e| puts e if e > 5 }
puts "-----"
#3
array2.select { |e| puts e if e % 2 != 0 }
puts "-----"
#4
array1.push(11)
array1.unshift(0)
p array1
puts "-----"
#5
array1.pop
array1 << 3
p array1
puts "-----"
#6
array1.uniq!
p array1
puts "-----"
#7
#array is an ordered list, hash is a set of k/v pairs
#8
hash1 = { one: 1 }
hash2 = { "key" => "value" }
#9
h = { a:1, b:2, c:3, d:4 }
p h
p h.fetch(:b)
h[:e] = 5
p h
h.delete_if { |k, v| v < 3.5 }
p h
puts "-----"
#10
#you can have an array with hashes, and also a hash with arrays
# hash = { names: ['bob', 'joe', 'susan'] }
# array = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'} ]
#11
contact_data = [["joe@email.com", "123 Main St.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123'234'3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {} }

#contacts["Joe Smith"][:email] = contact_data[0][0]
#contacts["Joe Smith"][:address] = contact_data[0][1]
#contacts["Joe Smith"][:number] = contact_data[0][2]
#contacts["Sally Johnson"][:email] = contact_data[1][0]
#contacts["Sally Johnson"][:address] = contact_data[1][1]
#contacts["Sally Johnson"][:number] = contact_data[1][2]
#p contacts
puts "-----"
#12
p "Joe's email is #{contacts["Joe Smith"][:email]}"
p "Sally's email is #{contacts["Sally Johnson"][:email]}"
puts "-----"
#13
edmonton = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p edmonton
edmonton.delete_if { |element| element.start_with?("s", "w") }
p edmonton
puts "-----"
#14
array = [ 'white snow', 'winter wonderland', 'melting ice',
      'slippery sidwalk', 'salted roads', 'white trees' ]
p array
new_array = array.map { |w| w.split }
new_array.flatten!
p new_array      
puts "-----"
#15
# => "These hashes are the same!"
#16
fields = [:email, :address, :number]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end
puts contacts
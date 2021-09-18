# Each player starts with the same basic stats.

player = {
  strength: 10,
  dexterity: 10,
  charisma: 10,
  stamina: 10
}

# Then the player picks a character class and gets an upgrade

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { scout:     20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge!(character_classes[input.to_sym])

puts 'Your character stats:'
puts player

puts 'Where would you like to go?'
puts 'forest, villiage, mountains, valley'
go_to = gets.chomp

puts "your #{input} walks towards the #{go_to}"
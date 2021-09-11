# merge creates a new hash and merge! replaces the old hash

hash = {
  one: 1,
  two: 2
}

new_hash = {
  three: 3,
  four: 4
}

p hash.merge(new_hash)
p hash
p hash.merge!(new_hash)
p hash
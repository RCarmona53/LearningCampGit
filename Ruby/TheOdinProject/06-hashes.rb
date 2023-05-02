# Learning Outcomes
# By the end of this lesson, you should be able to do the following:

# Explain what a hash is.
# Describe how to create a new hash and how to add information to it.
# Explain what keys and values are.
# Describe how to change and delete data inside a hash.
# Describe how to merge two hashes.

my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}

shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}
  
  shoes["summer"]   #=> "sandals"

# Adding and Changing Data
shoes["fall"] = "sneakers"
shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}
shoes["summer"] = "flip-flops"
shoes     #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}

# Symbols as Hash Keys
# 'Rocket' syntax
american_cars = {
    :chevrolet => "Corvette",
    :ford => "Mustang",
    :dodge => "Ram"
  }
  # 'Symbols' syntax
  japanese_cars = {
    honda: "Accord",
    toyota: "Corolla",
    nissan: "Altima"
  }
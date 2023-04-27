# LITERALS
# Quoted string
def quoted_string(to_be_quoted)
    "Suuuure. You were just \"#{to_be_quoted}\"."
  end

# Multiline String
def multi_line_string(*lines)
    "Here are your lines!\n\n#{lines.join("\n")}"
end

# Big Q sintax
def big_q_string(numerator, denominator)
	%Q[This %Q syntax is the ugliest one.
#{numerator} out of #{denominator} "dentists" agree.]
end

# Collections
def repetitive_array_of_strings
    ["Wow,", "this", "is", "a", "pretty", "long", "list", "of", "words", "and", "it", "took", "me", "a", "long", "time", "to", "type", "because", "of", "all", "those", "darn", "quote", "characters.", "Geez."]
end

def array_of_words_literal
    %w[With this double-u shorthand it wasn't very hard at all to type out this list of words. Heck, I was even able to use double-quotes like "these"!]
end

puts repetitive_array_of_strings
puts array_of_words_literal

# One less syntax
def one_less
    1...10
end

# Range
def range_of_characters
    'a'..'z'
  end

# CONSTANTS
def awkward_sheep
	sheep = Class.new do
  	def speak
    	"Bah."
 		end
	end
end

# Try namespacing it as you would normally in this next exercise. You'll find you run into a new issue.
module Fence
    Sheep = Class.new do
    def speak
      "Bah."
    end
  end
end
 
def call_sheep
  Fence::Sheep.new.speak
end
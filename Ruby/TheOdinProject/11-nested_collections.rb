# Learning Outcomes
# By the end of this lesson, you should be able to do the following:

# Describe a nested array and hash.
# Explain what data is useful to store in a nested array and hash.
# Explain how to access data in a nested array and hash.
# Explain why the #dig method is useful.
# Explain how to add data to a nested array and hash.
# Explain how to delete data in a nested array and hash.
# Explain how to create a new nested array that is not mutable.
# Explain how to iterate over a nested array and hash.


# Nested Arrays
test_scores = [
    [97, 76, 79, 93],
    [79, 84, 76, 79],
    [88, 67, 64, 76],
    [94, 55, 67, 81]
  ]
  
  teacher_mailboxes = [
    ["Adams", "Baker", "Clark", "Davis"],
    ["Jones", "Lewis", "Lopez", "Moore"],
    ["Perez", "Scott", "Smith", "Young"]
  ]
  
# Accsesing elements
teacher_mailboxes[0][-1]
#=> "Davis"
teacher_mailboxes[-1][0]
#=> "Perez"
teacher_mailboxes[-1][-2]
#=> "Smith"

# Dig to use, even if doesnt exist
teacher_mailboxes.dig(3, 0)
#=> nil
teacher_mailboxes.dig(0, 4)
#=> nil

# Iterating over a nested array
teacher_mailboxes.each_with_index do |row, row_index|
    row.each_with_index do |teacher, column_index|
      puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
    end
  end
  #=> Row:0 Column:0 = Adams
  #=> Row:0 Column:1 = Baker
  #=> Row:0 Column:2 = Clark
  #=> Row:0 Column:3 = Davis

# Nested hashes
vehicles = {
    alice: {year: 2019, make: "Toyota", model: "Corolla"},
    blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
    caleb: {year: 2020, make: "Honda", model: "Accord"}
  }

# Accesing data (hash[:x][:y], where :x is the key of the hash and :y is the key of the nested hash.)
vehicles[:alice][:year]
#=> 2019
vehicles[:blake][:make]
#=> "Volkswagen"
vehicles[:caleb][:model]
#=> "Accord"


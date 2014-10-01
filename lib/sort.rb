require 'pry'
Dir['./services/**/*.rb'].each { |f| require f }
Dir['./models/**/*.rb'].each { |f| require f }

if ARGV[0]
  puts "Usage: ruby lib/sort.rb <input_file> <input_file> <input_file>"
  puts "Only insert an <input_file> for the ones you wish to include"
  exit
end

parser = FileParser.new( Dir['./data/*.txt'] )

puts parser.sort_on { campus:'asc', last_name:'asc' }
puts parser.sort_on { date_of_birth:'asc' }
puts parser.sort_on { last_name:'desc' }

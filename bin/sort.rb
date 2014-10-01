require 'pry'
Dir['./models/**/*.rb'].each { |f| require f }
Dir['./services/**/*.rb'].each { |f| require f }

if ARGV[0]
  puts "Usage: ruby lib/sort.rb <input_file> <input_file> <input_file>"
  puts "Only insert an <input_file> for the ones you wish to include"
  exit
end

#Our input
parser = FileParser.new( Dir['./data/*.txt'] )

#Our output
puts parser.output_based_on_sort { campus:'asc', last_name:'asc' }
puts parser.output_based_on_sort { date_of_birth:'asc' }
puts parser.output_based_on_sort { last_name:'desc' }

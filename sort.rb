require 'pry'
Dir['./models/**/*.rb'].each { |f| require f }
Dir['./services/**/*.rb'].each { |f| require f }

if ARGV[0]
  puts "Usage: ruby sort.rb"
  exit
end

FileParser.new( Dir['./data/*.txt'] ).process_each_file

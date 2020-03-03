# frozen_string_literal: true

Dir['./parsers/**/*.rb'].sort.each { |f| require f }
Dir['./services/**/*.rb'].sort.each { |f| require f }

if ARGV[0]
  puts 'Usage: ruby sort.rb'
  exit
end

students = []

students << DollarFileParser.new().process
students << CommaFileParser.new().process
students << PipeFileParser.new().process

sorted_data = Sorter.new(students).sort

OutputFormatter.new(sorted_data).display

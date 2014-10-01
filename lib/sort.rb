require 'pry'
Dir['./services/**/*.rb'].each { |f| require f }

ARGV.each do |input|
  SortInputFile.new(input.chomp).call
end

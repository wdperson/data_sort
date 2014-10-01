require 'pry'
Dir['./services/**/*.rb'].each { |f| require f }

ARGV.each do |input|
  puts SortInputFile.call input
end

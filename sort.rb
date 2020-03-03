# frozen_string_literal: true

Dir['./services/**/*.rb'].sort.each { |f| require f }

if ARGV[0]
  puts 'Usage: ruby sort.rb'
  exit
end

FileProcessor.new(Dir['./data_files/*.txt']).process_each_file

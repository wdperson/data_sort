require 'pry'

class FileParser
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def process_each_file
    @parsed_output = []
    @input.each do |input|
      @file = input
      determine_type
      @parsed_output << parse_the_data
    end
    sort_the_data
    display_the_data
  end

  def determine_type
    @type = DelimitedString.new(@file).type
  end

  def parse_the_data
    DelimitedString.new(@file).parse_file_data
  end

  def sort_the_data
    @sorted_output = DelimitedString.new(@parsed_output.flatten).sort
  end

  def display_the_data
    OutputFormatter.new(@sorted_output).display
  end
end

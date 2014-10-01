require 'pry'

class FileParser
  attr_reader :input

  def initialize(input)
    @input = input
    initialize_strings
  end

  def output_based_on_sort
    Sorter.new(@output).sort
  end

  def initialize_strings
    @output = []
    @input.each do |input|
      type = DelimitedString.new(input).determine_type
      @output = OutputFormatter.new(type, input).output_initializer
    end
    @output
  end

end

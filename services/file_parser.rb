require 'pry'

class FileParser
  attr_reader :input

  def initialize(input)
    @input = input
    get_the_output_from_each_file
    output_based_on_sort
  end

  def output_based_on_sort
    Sorter.new(@output).sort
  end

  def get_the_output_from_each_file
    @output = []
    @input.each do |input|
      type = DelimitedString.new(input).determine_type
      @output = OutputFormatter.new(type, input).output_initializer
    end
    @output
  end
end

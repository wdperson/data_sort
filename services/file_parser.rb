require 'pry'

class FileParser
  attr_reader :input

  def initialize(input)
    # We have a number of text files as our inputs
    @input = input
    @output = []
    @type = ""
    get_the_output_from_each_file
    output_based_on_sort
  end

  def output_based_on_sort
    Sorter.new(@output).sort
  end

  def get_the_output_from_each_file
    @input.each do |input|
      @type = DelimitedString.new(input).determine_type
      @output = OutputFormatter.new(@type, input).output_initializer
    end
    @output
  end
end

# frozen_string_literal: true

# Parses, sorts and displays the data
class FileProcessor
  attr_reader :input
  attr_accessor :parsed_output, :sorted_output

  def initialize(input)
    @input = input
  end

  def process_each_file
    output
  end

  private

  def parsed_output
    @parsed_output ||= FileParser.new(@input).parse
  end

  def sorted_output
    @sorted_output ||= Sorter.new(parsed_output).sort
  end

  def output
    OutputFormatter.new(sorted_output).display
  end
end

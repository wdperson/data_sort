require 'pry'

class FileParser
  attr_reader :input

  def initialize(input)
    @input = input
    process_file
  end

  def process_file
    @input.each do |input|
      get_the_data_from_each_file(input)
      sort_the_data
      display_the_data
    end
  end

  def get_the_data_from_each_file(input)
    type = DelimitedString.new(input).type
    initialize_object(type, input)
  end

  def initialize_object(type, input)
    @output = PipeDelimitedString.new(input).open_file if type == "|"
    @output = CommaDelimitedString.new(input).open_file if type == ","
    @output = DollarDelimitedString.new(input).open_file if type == "$"
  end

  def sort_the_data
    @campus_last_name = Sorter.new(@output).sorted_by_campus_and_last_name
    @date_of_birth = Sorter.new(@output).sorted_by_date_of_birth
    @last_name_desc = Sorter.new(@output).sorted_by_last_name_desc
  end

  def display_the_data
    @campus_last_name.flatten.each {|o| puts "#{o.values}" }
    @date_of_birth.flatten.each {|o| puts "#{o.values}" }
    @last_name_desc.flatten.each {|o| puts "#{o.values}" }
  end
end

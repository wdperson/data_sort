require File.expand_path('../delimited_string.rb', __FILE__)

class PipeDelimitedString < DelimitedString

  def initialize(input)
    @input = input
  end

  def keys
    ['last_name', 'first_name', 'middle_initial', 'campus', 'favorite_color', 'date_of_birth']
  end
end

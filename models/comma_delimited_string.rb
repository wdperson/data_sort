require File.expand_path('../delimited_string.rb', __FILE__)

class CommaDelimitedString < DelimitedString

  def initialize(input)
    @input = input
  end

  def keys
    ['last_name', 'first_name', 'campus', 'favorite_color', 'date_of_birth']
  end

end

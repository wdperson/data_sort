require File.expand_path('../delimited_string.rb', __FILE__)

class DollarDelimitedString < DelimitedString

  def initialize(input)
    @input = input
  end

  def keys
    ['last_name', 'first_name', 'middle_initial', 'campus', 'date_of_birth', 'favorite_color']
  end
end

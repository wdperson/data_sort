require File.expand_path('../delimited_string.rb', __FILE__)

class DollarDelimitedString < DelimitedString

  def initialize(input)
    @input = input
  end

end

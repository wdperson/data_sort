require File.expand_path('../delimited_string.rb', __FILE__)

class CommaDelimitedString < DelimitedString

  def initialize(input)
    @input = input
  end

end

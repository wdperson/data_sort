# frozen_string_literal: true

class FileParser
  def initialize(input)
    @input = input
  end

  def parse
    @input.map do |input|
      File.open(input, 'r').map do |line|
        LineParser.new(line).parse
      end
    end
  end
end

class InputData

  def initialize(input)
    @input = input
  end

  def sort
    parsed_data = []
    File.open(@input, 'r').each do |line|
      parsed_data << ParseLine.call(line)
    end
    SortData.new(parsed_data).order
  end


end

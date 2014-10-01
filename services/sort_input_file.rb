class SortInputFile

  def initialize(input)
    @input = input
  end

  def call
    parsed_data = []
    File.open(@input, 'rb').each do |line|
      parsed_data << ParseLine.call(line)
    end
    SortData.new(parsed_data).order
  end

end

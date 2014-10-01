class SortInputFile

  def self.call(input)
    sorted_data = InputData.new(input).sort
    OutputData.new(sorted_data).to_terminal
  end

end

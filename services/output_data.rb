class OutputData

  def initialize(sorted_data)
    @sorted_data = sorted_data
  end

  def to_terminal
    @sorted_data.to_s
  end

end

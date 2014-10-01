class InputData

  def initialize(path)
    @path = path
  end

  def sort
    sorted_data = []
    File.open(@path, 'r').each do |line|
      sorted_data << ParseLine.call(line)
    end
    sorted_data
  end
end

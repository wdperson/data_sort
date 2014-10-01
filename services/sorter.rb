class Sorter

  def initialize(parsed_data)
    @parsed_data = parsed_data
  end

  def sort
    binding.pry
    @parsed_data.sort_by
  end

end

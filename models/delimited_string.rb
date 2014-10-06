class DelimitedString

  DELIMITERS = /[,$|]/
  KEYS = {
    "$" => ['last_name', 'first_name', 'middle_initial', 'campus', 'date_of_birth', 'favorite_color'],
    "," => ['last_name', 'first_name', 'campus', 'favorite_color', 'date_of_birth'],
    "|" => ['last_name', 'first_name', 'middle_initial', 'campus', 'favorite_color', 'date_of_birth']
  }

  DATATYPES = {
    '$' => "dollar",
    ',' => "comma",
    '|' => "pipe"
  }

  def initialize(input)
    @input = input
  end

  def type
    file_data = File.open(@input, &:readline)
    file_data.match(DELIMITERS).to_s
  rescue
    raise NotImplementedError, "This type is not implemented."
  end

  def parse_file_data
    @parsed_data = []
    File.open(@input, 'r').each do |line|
      @parsed_data << ParseLine.new(line).create_hash
    end
    @parsed_data
  end

  def sort
    @sorted_output = []
    @sorted_output << Sorter.new(@input).sorted_by_campus_and_last_name
    @sorted_output << Sorter.new(@input).sorted_by_date_of_birth
    @sorted_output << Sorter.new(@input).sorted_by_last_name_desc
    @sorted_output
  end

end

class DelimitedString

  DELIMITERS = /[,$|]/
  KEYS = {
    "$" => ['last_name', 'first_name', 'middle_initial', 'campus', 'date_of_birth', 'favorite_color'],
    "," => ['last_name', 'first_name', 'campus', 'favorite_color', 'date_of_birth'],
    "|" => ['last_name', 'first_name', 'middle_initial', 'campus', 'favorite_color', 'date_of_birth']
  }

  def initialize(input)
    @input = input
  end

  def determine_type
    file_data = File.open(@input, &:readline)
    file_data.match(DELIMITERS).to_s
  end

  def open_file
    @input.each do |input|
      File.open(input, 'r').each do |line|
        @parsed_data << ParseLine.call(line)
      end
    end
  end

end

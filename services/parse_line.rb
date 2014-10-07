class ParseLine
  attr_reader :input

  CAMPUSES = {
    "LA" => "Los Angeles",
    "NYC" => "New York City",
    "SF" => "San Francisco"
  }

  def initialize(line)
    @unparsed_line = line
    @line = line.split(delimiter).collect(&:strip)
  end

  def create_hash
    @pd = Hash[keys_for_data.zip @line]
    correct_campuses
    correct_date
    @pd
  end

  def keys_for_data
    DelimitedString::KEYS[delimiter]
  end

  def delimiter
    @unparsed_line.match(DelimitedString::DELIMITERS).to_s
  end

  def correct_campuses
    @pd["campus"] = CAMPUSES[@pd["campus"]] if CAMPUSES.has_key?(@pd["campus"])
  end

  def correct_date
    format = @pd["date_of_birth"].include?('/') ? '%m/%d/%Y' : '%m-%d-%Y'
    @pd["date_of_birth"] = Date.strptime (@pd["date_of_birth"]), format
  end
end

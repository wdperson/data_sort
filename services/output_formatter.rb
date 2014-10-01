class OutputFormatter

  def initialize(type, input)
    @type = type
    @input = input
    @output = []
  end

  def output_initializer
    @output = DollarDelimitedString.new(@input).open_file if @type == "$"
    @output = PipeDelimitedString.new(@input).open_file if @type == "|"
    @output = CommaDelimitedString.new(@input).open_file if @type == ","
    @output
  end

end

describe FileParser do

  describe 'type' do
    subject { described_class.new(file).determine_type }

    let(:file) { "spec/fixtures/comma.txt" }

    it "calls type on DelimitedString correctly" do
      expect(DelimitedString).to receive(:type)
    end
  end

  describe "parse_the_data" do
    context 'when comma delimited file' do
      subject { described_class.new(file).parse_type_comma }
      let(:file) { "spec/fixtures/comma.txt" }

      it "calls type on DelimitedString correctly" do
        expect(DelimitedString).to receive(:parse_file_data)
      end
    end

    context 'when dollar delimited file' do
      subject { described_class.new(file).parse_type_dollar }
      let(:file) { "spec/fixtures/dollar.txt" }

      it "calls type on DelimitedString correctly" do
        expect(DelimitedString).to receive(:parse_file_data)
      end
    end

    context 'when pipe delimited file' do
      subject { described_class.new(file).parse_type_pipe }
      let(:file) { "spec/fixtures/pipe.txt" }

      it "calls type on DelimitedString correctly" do
        expect(DelimitedString).to receive(:parse_file_data)
      end
    end
  end

  describe "sort_the_data" do
    context 'when comma delimited file' do
      subject { described_class.new(file).sort_type_comma }
      let(:file) { "spec/fixtures/comma.txt" }

      it "calls type on DelimitedString correctly" do
        expect(CommaDelimitedString).to receive(:sort)
      end
    end

    context 'when dollar delimited file' do
      subject { described_class.new(file).sort_type_dollar }
      let(:file) { "spec/fixtures/dollar.txt" }

      it "calls type on DelimitedString correctly" do
        expect(DollarDelimitedString).to receive(:sort)
      end
    end

    context 'when pipe delimited file' do
      subject { described_class.new(file).sort_type_pipe }
      let(:file) { "spec/fixtures/pipe.txt" }

      it "calls type on DelimitedString correctly" do
        expect(PipeDelimitedString).to receive(:sort)
      end
    end
  end

  describe "display_the_data" do
    context 'when there is output' do
      subject { described_class.new(file).display_the_data }
      let(:sorted_data) do
        [
          {"last_name"=>"Kirlin", "first_name"=>"Mckayla", "campus"=>"Atlanta", "favorite_color"=>"Maroon", "date_of_birth"=>"5/29/1986"},
          {"last_name"=>"Parker", "first_name"=>"Matteo", "campus"=>"Melbourne", "favorite_color"=>"Burnt Sienna", "date_of_birth"=>"2/14/1962"},
          {"last_name"=>"Cummerata", "first_name"=>"Elliot", "campus"=>"New York City", "favorite_color"=>"Neon Carrot", "date_of_birth"=>"4/3/1947"}
        ]
      end

      it "calls type on DelimitedString correctly" do
        expect(OutputFormatter.new(sorted_data)).to receive(:display)
      end
    end
  end
end

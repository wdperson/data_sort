describe FileParser do

  describe 'determine_type' do
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
end

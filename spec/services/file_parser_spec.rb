describe FileParser do

  describe 'type' do
    let(:file) { "spec/fixtures/invalid_type.txt" }

    it "calls type on DelimitedString correctly" do
      expect { described_class.new(file).determine_type }.to raise_error(NotImplementedError)
    end
  end
end

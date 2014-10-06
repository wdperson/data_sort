describe FileParser do

  describe 'deterine_type' do
    let(:file) { "spec/fixtures/invalid_type.txt" }

    it "raises an error if the type is not yet implemented" do
      expect { described_class.new(file).determine_type }.to raise_error(NotImplementedError)
    end
  end
end

describe SortInputFile do

  let(:input) { "dollar.txt" }
  let(:second_input) { "pipe.txt" }
  let(:sorted_data) {


  }

  subject { described_class.call input }

  describe '.call' do

    context "call input data service" do
      it { expect(InputData).to receive(:sort).with(input).exactly(1).times }
    end

    context "call output data service" do
      it { expect(OutputData).to receive(:to_terminal).with(sorted_data).exactly(1).times }
    end

  end

end

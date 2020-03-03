# frozen_string_literal: true

describe FileProcessor do
  describe '.process_each_file' do
    let(:input) { [
      'spec/fixtures/comma.txt',
      'spec/fixtures/pipe.txt',
      'spec/fixtures/dollar.txt'
    ] }

    subject { described_class.new(input).process_each_file }

    it { is_expected.to eq "" }
  end
end

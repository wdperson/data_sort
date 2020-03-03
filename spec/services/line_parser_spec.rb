# frozen_string_literal: true

describe LineParser do
  describe '.parse' do
    subject { described_class.new(line).parse }

    context 'when we have a comma delimiter' do
      let(:line) { "Kirlin, Mckayla, Atlanta, Maroon, 2/14/1962\n" }
      let(:comma_parsed_hash) do
        { 'last_name' => 'Kirlin', 'first_name' => 'Mckayla',
          'campus' => 'Atlanta', 'date_of_birth' => Date.new(1962, 2, 14),
          'favorite_color' => 'Maroon' }
      end

      it { is_expected.to eq comma_parsed_hash }
    end

    context 'when we have a dollar delimiter' do
      let(:line) { "Nolan $ Rhiannon $ O $ LA $ 10-4-1974 $ Vivid Tangerine\n" }
      let(:dollar_parsed_hash) do
        { 'last_name' => 'Nolan', 'first_name' => 'Rhiannon',
          'middle_initial' => 'O', 'campus' => 'Los Angeles',
          'favorite_color' => 'Vivid Tangerine',
          'date_of_birth' => Date.new(1974, 10, 4) }
      end

      it { is_expected.to eq dollar_parsed_hash }
    end

    context 'when we have a pipe delimiter' do
      let(:line) do
        "Goyette | Timmothy | E | London | Pacific Blue | 10-2-1964\n"
      end
      let(:pipe_parsed_hash) do
        { 'last_name' => 'Goyette', 'first_name' => 'Timmothy',
          'middle_initial' => 'E', 'campus' => 'London',
          'date_of_birth' => Date.new(1964, 10, 2),
          'favorite_color' => 'Pacific Blue' }
      end

      it { is_expected.to eq pipe_parsed_hash }
    end
  end

  describe '.hash_keys' do
    subject { described_class.new(line).hash_keys }

    context 'when we have a comma delimiter' do
      let(:line) { "Kirlin, Mckayla, Atlanta, 5/29/1986, Maroon\n" }
      let(:keys) do
        %w[last_name first_name campus favorite_color date_of_birth]
      end

      it { is_expected.to eq keys }
    end

    context 'when we have a dollar delimiter' do
      let(:line) { "Nolan $ Rhiannon $ O $ LA $ 10-4-1974 $ Vivid Tangerine\n" }
      let(:keys) do
        %w[last_name first_name middle_initial
           campus date_of_birth favorite_color]
      end

      it { is_expected.to eq keys }
    end

    context 'when we have a pipe delimiter' do
      let(:line) do
        "Goyette | Timmothy | E | London | Pacific Blue | 10-2-1964\n"
      end
      let(:keys) do
        %w[last_name first_name middle_initial
           campus favorite_color date_of_birth]
      end

      it { is_expected.to eq keys }
    end
  end

  describe '.matched_line_delimiter' do
    subject { described_class.new(line).matched_line_delimiter }

    context 'when we have a comma delimited line' do
      let(:line) { "Kirlin, Mckayla, Atlanta, 5/29/1986, Maroon\n" }
      let(:delimiter) { ',' }

      it { is_expected.to eq delimiter }
    end

    context 'when we have a dollar delimited line' do
      let(:line) { "Nolan $ Rhiannon $ O $ LA $ 10-4-1974 $ Vivid Tangerine\n" }
      let(:delimiter) { '$' }

      it { is_expected.to eq delimiter }
    end

    context 'when we have a pipe delimited line' do
      let(:line) do
        "Goyette | Timmothy | E | London | Pacific Blue | 10-2-1964\n"
      end
      let(:delimiter) { '|' }

      it { is_expected.to eq delimiter }
    end
  end

  describe 'correct parsed data values' do
    subject { described_class.new(line).parse }

    context 'when campuses' do
      let(:line) { "Nolan $ Rhiannon $ O $ LA $ 10-4-1974 $ Vivid Tangerine\n" }
      let(:corrected_parsed_data) do
        { 'last_name' => 'Nolan', 'first_name' => 'Rhiannon',
          'middle_initial' => 'O', 'campus' => 'Los Angeles',
          'date_of_birth' => Date.new(1974, 10, 4),
          'favorite_color' => 'Vivid Tangerine' }
      end

      it { is_expected.to eq corrected_parsed_data }
    end

    context 'when dates' do
      let(:line) { "Nolan $ Rhiannon $ O $ LA $ 10/4/1974 $ Vivid Tangerine\n" }
      let(:corrected_parsed_data) do
        { 'last_name' => 'Nolan', 'first_name' => 'Rhiannon',
          'middle_initial' => 'O', 'campus' => 'Los Angeles',
          'date_of_birth' => Date.new(1974, 10, 4),
          'favorite_color' => 'Vivid Tangerine' }
      end

      it { is_expected.to eq corrected_parsed_data }
    end
  end
end

describe ParseLine do

  subject { described_class.new(line).parse_and_create_hash }

  context "when we have a comma delimiter" do
    let(:line) { "Kirlin, Mckayla, Atlanta, 5/29/1986, Maroon\n" }
    let(:comma_parsed_hash) { {"last_name"=>"Kirlin", "first_name"=>"Mckayla", "campus"=>"Atlanta", "favorite_color"=>"5/29/1986", "date_of_birth"=>"Maroon"} }
    it { is_expected.to eq comma_parsed_hash }
  end

  context "when we have a dollar delimiter" do
    let(:line) { "Nolan $ Rhiannon $ O $ LA $ 10-4-1974 $ Vivid Tangerine\n" }
    let(:dollar_parsed_hash) { {"last_name"=>"Nolan", "first_name"=>"Rhiannon", "middle_initial"=>"O", "campus"=>"LA", "date_of_birth"=>"10-4-1974", "favorite_color"=>"VividTangerine"} }
    it { is_expected.to eq dollar_parsed_hash }
  end

  context "when we have a pipe delimiter" do
    let(:line) { "Goyette | Timmothy | E | London | Pacific Blue | 10-2-1964\n" }
    let(:pipe_parsed_hash) { {"last_name"=>"Goyette", "first_name"=>"Timmothy", "middle_initial"=>"E", "campus"=>"London", "favorite_color"=>"PacificBlue", "date_of_birth"=>"10-2-1964"} }
    it { is_expected.to eq pipe_parsed_hash }
  end

end

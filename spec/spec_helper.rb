# frozen_string_literal: true

Dir['./lib/*.rb'].sort.each { |file| require file }
Dir['./services/*.rb'].sort.each { |file| require file }
Dir['./models/*.rb'].sort.each { |file| require file }

def capture_stdout
  original_stdout = $stdout
  $stdout = fake = StringIO.new
  begin
    yield
  ensure
    $stdout = original_stdout
  end
  fake.string
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end

require('rspec')
require('numbers_to_words')

describe('words#numbers_to_words') do
  it("writes out number based on input numeral") do
    expect((25).numbers_to_words()).to(eq("twentyfive"))
  end
end

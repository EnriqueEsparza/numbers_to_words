require('rspec')
require('numbers_to_words')

describe('words#numbers_to_words') do
  it("writes out number based on input numeral") do
    expect((15).numbers_to_words()).to(eq("fifteen"))
  end

  it("writes out number based on input numeral") do
    expect((313).numbers_to_words()).to(eq("three-hundredthirteen"))
  end

  it("writes out number based on input numeral") do
    expect((1508).numbers_to_words()).to(eq("onethousandfive-hundredeight"))
  end

end

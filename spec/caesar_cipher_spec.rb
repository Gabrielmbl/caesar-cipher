#spec/caesar_cipher_spec.rb
require './caesar_cipher'

describe "#caesar_cipher" do
  it "returns the same string for factor 0" do
    expect(caesar_cipher('What a string!', 0)).to eql('What a string!')
  end

  it "shifts characters by the given factor" do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end

  it "wraps from Z to A for uppercase characters" do
    expect(caesar_cipher('Zebra', 1)).to eql('Afcsb')
  end

  it "wraps from z to a for lowercase characters" do
    expect(caesar_cipher('zebra', 1)).to eql('afcsb')
  end

  it "handles factors larger than 26" do
    expect(caesar_cipher('What a string!', 30)).to eql('Alex e wxvmrk!')
  end
  
  it "handles factors that wrap around multiple times" do
    expect(caesar_cipher('What a string!', 78)).to eql('What a string!')
  end
end

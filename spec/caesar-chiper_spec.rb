require "./script.rb"

describe "#caesar_cipher" do
  it "shifts correctly depending on how much user wanna shift" do
    expect(caesar_cipher("h", 5)).to eql("m")
  end
end

describe "#caesar_cipher" do
  it "works with capital letters" do
    expect(caesar_cipher("A", 3)).to eql("D")
  end
end

describe "#caesar_cipher" do
    it "make all the letters join together without spaces" do
      expect(caesar_cipher("hello", 3)).to_not eql("k, h, o, o, r")
    end
end

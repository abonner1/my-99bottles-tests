require "bottle.rb"

describe Bottle do
  it "returns the first verse" do
    verse = "99 bottles of beer on the wall, " +
            "99 bottles of beer.\n" +
            "Take one down and pass it around, " +
            "98 bottles of beer on the wall.\n"

    expect(Bottle.new.verse(99)).to eq(verse)
  end

  it "returns another verse" do
    
  end
end

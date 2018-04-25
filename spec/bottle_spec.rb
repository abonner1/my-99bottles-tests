require "bottle.rb"

describe Bottle do
  let(:bottle) { Bottle.new }

  it "returns a verse" do
    verse = "99 bottles of beer on the wall, 99 bottles of beer.\n" +
            "Take one down and pass it around, 98 bottles of beer on the wall.\n"

    expect(bottle.verse(99)).to eq(verse)
  end

  it "returns another verse" do
    another_verse = "3 bottles of beer on the wall, 3 bottles of beer.\n" +
                    "Take one down and pass it around, 2 bottles of beer on the wall.\n"

    expect(bottle.verse(3)).to eq(another_verse)
  end

  it "returns the verse for 2 bottles" do
    second_verse = "2 bottles of beer on the wall, 2 bottles of beer.\n" +
                   "Take one down and pass it around, 1 bottle of beer on the wall.\n"

    expect(bottle.verse(2)).to eq(second_verse)
  end
end

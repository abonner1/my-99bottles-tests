require "bottle.rb"

describe Bottle do
  let(:bottle) { Bottle.new }
  let(:two_bottle_verse) {
    "2 bottles of beer on the wall, 2 bottles of beer.\n" +
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  }
  let(:one_bottle_verse) {
    "1 bottle of beer on the wall, 1 bottle of beer.\n" +
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  }
  let(:no_bottle_verse) {
    "No more bottles of beer on the wall, no more bottles of beer.\n" +
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  }

  context "#verse" do
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
      expect(bottle.verse(2)).to eq(two_bottle_verse)
    end

    it "returns the verse for 1 bottle" do
      expect(bottle.verse(1)).to eq(one_bottle_verse)
    end

    it "returns the verse for 0 bottles" do
      expect(bottle.verse(0)).to eq(no_bottle_verse)
    end
  end

  context "#verses" do
    it "returns the first two verses" do
      verses = "99 bottles of beer on the wall, 99 bottles of beer.\n" +
              "Take one down and pass it around, 98 bottles of beer on the wall.\n" +
              "98 bottles of beer on the wall, 98 bottles of beer.\n" +
              "Take one down and pass it around, 97 bottles of beer on the wall.\n"

      expect(bottle.verses(99, 98)).to eq(verses)
    end

    it "returns the last three verses" do
      last_three_verses = two_bottle_verse + one_bottle_verse + no_bottle_verse

      expect(bottle.verses(2, 0)).to eq(last_three_verses)
    end
  end
end

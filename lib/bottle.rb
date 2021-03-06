class Bottle
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map { |num| verse(num) }.join
  end

  def verse(number)
    case number
    when 1
      "#{number} bottle of beer on the wall, #{number} bottle of beer.\n" +
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" +
      "Take one down and pass it around, #{number-1} #{container(number-1)} of beer on the wall.\n"
    end
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end
end

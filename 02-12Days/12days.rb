class Xmas

  def initialize
  end # initialize

  def self.sing
    whole_song = ""
    11.times do |verse_num|
      whole_song << self.verse(verse_num) + "\n\n"
    end
    whole_song << self.verse(11)
    return whole_song
  end # self.sing

  def self.verse(param)
    days = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh",
    "eighth", "ninth", "tenth", "eleventh", "twelfth"]
    if param == 0
      verse_gift_array = [self.gifts(param)[0]]
    else
      verse_gift_array = self.gifts(param)
    end
    verse_gift = ""
    verse_gift_array.each { |gift| verse_gift << "\n" + gift }
    return "On the #{ days[param] } day of Christmas my true love gave to me#{ verse_gift }"
  end # self.verse

  def self.gifts(param)
    thegifts = [
      "twelve drummers drumming",
      "eleven pipers piping",
      "ten lords-a-leaping",
      "nine ladies dancing",
      "eight maids-a-milking",
      "seven swans-a-swimming",
      "six geese-a-laying",
      "FIVE GOLDEN RINGS",
      "four calling birds",
      "three french hens",
      "two turtle doves",
      ["a partridge in a pear tree", "and"]
    ]
    gifts_for_return = []
    start_index = thegifts.length - 1 - param
    (param + 1).times do |num|
      gifts_for_return << thegifts[ start_index + num ]
    end
    if param == 0
      gifts_for_return = gifts_for_return.first
    else
      gifts_for_return[-1] = gifts_for_return.last.reverse.join(' ')
    end
    return gifts_for_return
  end # gifts method

end # Xmas class

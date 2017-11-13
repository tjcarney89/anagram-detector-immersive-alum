# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(words)
    matched_words = []
    word_character_array = word.split("").sort { |a, b| a <=> b }
    words.each do |word|
      character_array = word.split("").sort { |a, b| a <=> b }
      if character_array == word_character_array
        matched_words << word
      end
    end
    matched_words
  end

end

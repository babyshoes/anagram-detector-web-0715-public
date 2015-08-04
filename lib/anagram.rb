require 'pry'

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array_of_possibles)
    anagrams_list = []
    array_of_possibles.each do |possibility|
      anagrams_list << possibility if possibility.split(//).sort == @word.split(//).sort 
      # binding.pry
    end
    anagrams_list
  end

end

allergy = Anagram.new("allergy")
allergy.match(%w(gallery ballerina regally clergy largely leading))
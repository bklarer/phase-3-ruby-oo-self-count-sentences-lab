require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences

    #split the string with "." , "?", "!". Filter out empty strings. Grabs on the strings that have something in them. Take the  size of the array
    self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
  end
end
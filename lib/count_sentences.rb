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
      # Split the string into an array of substrings based on sentence delimiters
      sentences = self.split(/\.|\?|!/)

      # Remove any empty or whitespace-only substrings from the array
      sentences.reject! { |s| s.strip.empty? }
  
      # Return the count of the remaining substrings
      sentences.count

  end
end
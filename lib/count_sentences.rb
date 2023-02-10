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
    split = self.split(/[.!?]+/)
    split.reject! { |word| word.strip.empty? }
    split.count

    #binding.pry


  end
end
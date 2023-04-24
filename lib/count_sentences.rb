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
  #  count = 0;
  #  self.chars.each.with_index  { |char|
  #    if (char =~ /[.?!]/)
  #      count = count + 1
  #    end
  #  }
  #  count
    self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
    end
end

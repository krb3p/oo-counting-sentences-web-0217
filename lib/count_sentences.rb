require 'pry'

class String

  def sentence?
    punctuation = "." || "!" || "?"
    self.end_with? (punctuation)
  end

  def question?
    question_mark = "?"
    self.end_with? (question_mark)

  end

  def exclamation?
    exclamation = "!"
    self.end_with? (exclamation)
  end


  def count_sentences
    x = self.split(/\.|\!|\?/).delete_if {|word| word.size < 2}
    x.size

  end
end

# x = "one! , two. three?".split(/\.|\!|\?/)

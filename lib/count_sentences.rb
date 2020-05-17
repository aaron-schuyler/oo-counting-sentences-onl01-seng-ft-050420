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
    temp = self.split(/[\w'-]+|[[:punct:]]+/)
    temp.delete_if{|e| e.length == 0}
    temp.length
  end
end
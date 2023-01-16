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

  # note: this RegEx isn't perfect. Would have to exclude sentence markers that occur inside quotes for example.
  def count_sentences
    self.split(/[.!?]/).filter{|sentence| sentence != ""}.count
  end
end
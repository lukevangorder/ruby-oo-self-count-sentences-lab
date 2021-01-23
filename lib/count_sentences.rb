require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    array = self.split(/[.?!]/)
    array.collect do |sentence|
      if sentence.length == 0
        array.delete_at(array.index(sentence))
      end
    end
    array.count
  end
end
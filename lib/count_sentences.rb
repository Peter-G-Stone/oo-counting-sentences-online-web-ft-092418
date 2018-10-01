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
    
    
    arr = self.split(/[!?.]/).compact 
    arr.select do |w|
      w != (/[!.?\s]/) && w != nil  
    end 
    arr.count 
    
  end
end
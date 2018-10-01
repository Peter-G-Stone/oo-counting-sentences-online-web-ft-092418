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
    
    #binding.pry 
    arr = self.split(/[!?.]/).compact.count 
    arr.select do |w|
      w != (/[!.?]/) && w != nil  
    end 
    
  end
end
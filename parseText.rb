class ParseText

  def initialize(text)
    @text = text
  end
  
  def pairs
    pairs = Array.new
    words = @text.split
    words.each_with_index do
      |first_word, index|
      second_word = words[index + 1]||""
      pairs << [first_word, second_word] 
    end
    pairs.uniq
  end

  def triads
    triads = Array.new
    words = @text.split
    words.each_with_index do
      |first_word, index|
      second_word = words[index + 1]||""
      third_word = words[index + 2]||""
      triads << [first_word, second_word, third_word]
    end
    triads
  end

end

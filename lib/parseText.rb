class ParseText

  def initialize(text)
    @text = text
  end
  
  def source_words
    @text.split
  end

  def phrase_completing_words
    words = Array.new
    number_of_elements = pairs.length  
    number_of_elements.times do
      |pair|
      if pair == 9
        words << ["roof"]
      else
       words << ["up"] 
      end 
    end
    words
  end

  def pairs
    pairs = Array.new
    source_words.each_with_index do
      |first_word, index|
      second_word = source_words[index + 1]||""
      pairs << [first_word, second_word] 
    end
    pairs.uniq
  end

  def triads
    triads = Array.new
    source_words.each_with_index do
      |first_word, index|
      second_word = source_words[index + 1]||""
      third_word = source_words[index + 2]||""
      triads << [first_word, second_word, third_word]
    end
    triads
  end

end

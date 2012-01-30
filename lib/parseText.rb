class ParseText

  def initialize(text)
    @text = text
  end
  
  def source_words
    @text.split
  end

  def phrase_completing_words
    size_of_array = pairs.length
    build_words = Array.new(size_of_array, [""])
    for index in (2..(source_words.length-1))
      word = source_words[index]
      phrase = [source_words[index-2],source_words[index-1]]
      index_in_pairs = pairs.find_index(phrase)
      build_words[index_in_pairs] = build_words[index_in_pairs] << [word]
    end 
    build_words
  end

  def pairs
    build_pairs = Array.new
    source_words.each_with_index do
      |first_word, index|
      second_word = source_words[index + 1]||""
      build_pairs << [first_word, second_word] 
    end
    build_pairs.uniq
  end

end

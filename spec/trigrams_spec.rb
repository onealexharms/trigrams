require 'parseText'
require 'sampleText'

describe "something" do

  before(:all) do
    @sample = SampleText.new
    @parsed_text = ParseText.new(@sample.story)
  end


  it "gets a pair of words from the book text" do
    @parsed_text.pairs[1].should == ["hot","evening"]
  end

  it "gets triads of words from the book text" do
    @parsed_text.triads[1].should == ["hot", "evening", "in"]
  end
 
  it "identifies the unique pairs of keys" do
    @parsed_text.pairs.should == @parsed_text.pairs.uniq
  end

  it "identifies a specific word from the source" do
    sample_word = "roof"
    @parsed_text.source_words[11].should == sample_word
  end
  
  it "tells us that 'roof' follows 'onto the'" do
    sample_word = "roof" 
    expected_phrase = ["onto", "the"]
    index_in_pairs = @parsed_text.pairs.find_index(expected_phrase) 
    @parsed_text.phrase_completing_words[index_in_pairs].should include sample_word 
  end
 
  it "tells us that 'up' follows 'carried him' and 'to get'" do
    sample_word = "up"
    first_expected_phrase = ["carried", "him"]
    second_expected_phrase = ["to", "get"]
    index_of_first_pair = @parsed_text.pairs.find_index(first_expected_phrase)
    index_of_second_pair = @parsed_text.pairs.find_index(second_expected_phrase)
    @parsed_text.phrase_completing_words[index_of_first_pair].should include sample_word
    @parsed_text.phrase_completing_words[index_of_first_pair].should include sample_word
  end
  
  it "can find a word that follows a phrase" 
  it "discounts capital letters when looking for third words"
  it "discounts punctuation when looking for third words"
  it "can find all words that follow a phrase"

end

class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagram(vocab)
    a = vocab.downcase.split(//).sort
    match = []
    Word.all.each do |vocab|
      if a == vocab.word.downcase.split(//).sort
       match << vocab
      end
    end
     match
  end
end

# {|word| @answer = word.word if word.word.downcase.split(//).sort == a}
#   b << a

#create an array to store anagrams
#take out all the words in database
  #for each word, if the sorted is same as original word sorted
  #put into the array
#return array
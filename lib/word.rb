class Word
  @@all_words=[]

  attr_reader(:word)

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @id = @@all_words.length().+(1)
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_method(:save) do
    @@all_words.push(self)
  end

  define_singleton_method(:clear) do
     @@all_words = []
   end

  define_singleton_method(:find) do |identification|
    found_word = nil
    @@words.each() do |word|
      if word.id().eql?(identification.to_i())
        found_word = word
      end
    end
        found_word
  end

end

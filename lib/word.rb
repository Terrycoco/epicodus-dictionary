class Word
  @@words = []

  define_method(:initialize) do |word|
    @word = word
    @@words.push(word)
  end

  define_method(:word) do
    @word
  end

  define_singleton_method(:all) do
    @@words
  end
end

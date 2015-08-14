class Word
  @@words = []

  define_method(:initialize) do |word|
    @word = word
    @@words.push(word)
    @definitions = []
  end

  define_method(:word) do
    @word
  end

  define_method(:definitions) do
    @definitions
  end

  define_method(:add_def) do |definition|
    @definitions.push(definition)
  end

  define_singleton_method(:all) do
    @@words
  end
end

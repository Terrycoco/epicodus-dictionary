class Word
  @@words = []

  define_method(:initialize) do |wordstr|
    @word = wordstr
    @@words.push(self)
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

  define_method(:remove_def) do |definition|
    @definitions.delete(definition)
  end


#class methods
  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:sort) do
    @@words.sort_by! { |w| w.word.downcase }
  end

  define_singleton_method(:find) do |wordstr|
    @@words.each() do |w|
      if w.word == wordstr
        return w
      end
    end
  end


end

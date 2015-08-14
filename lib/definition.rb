class Definition
  @@definitions = []

  define_method(:initialize) do |word_type, definition|
    @word_type = word_type
    @definition = definition
  end

  define_method(:word_type) do
    @word_type
  end

  define_method(:definition) do
    @definition
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_method(:remove) do
    @@definitions.delete(self)
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

end

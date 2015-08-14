class Definition

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


end

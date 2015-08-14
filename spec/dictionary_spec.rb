require('rspec')
require('definition')
require('word')

describe(Definition) do

  describe('#initialize') do
    it("accepts a word type and definition") do
      @def = Definition.new('n', 'a rodent')
      expect(@def.word_type()).to(eq('n'))
    end
  end

end

describe(Word) do

  describe('#initialize') do
    it("accepts a word and adds it to the dictionary") do
      @word = Word.new('rat')
      expect(@word.word()).to(eq('rat'))
    end
  end

  describe('#add_def') do
    it("adds a definition to a definitions collection in the word") do
      @word = Word.new('rat')
      new_def = Definition.new('n','a hair snarl')
      @word.add_def(new_def)
      expect(@word.definitions().include? (new_def)).to(eq(true))
    end
  end
end

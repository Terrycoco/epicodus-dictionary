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

  describe('clear') do
    it('deletes all words from words collection') do
      Word.clear()
      expect(Word.all().length()).to(eq(0))
    end
  end

  describe('#remove_def') do
    it('removes a definition from the list of definitions') do
      Word.clear()
      @word = Word.new('rat')
      new_def = Definition.new('n','a hair snarl')
      @word.add_def(new_def)
      @word.remove_def(new_def)
      expect(@word.definitions().include? (new_def)).to(eq(false))
    end
  end
end

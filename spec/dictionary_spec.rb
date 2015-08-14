require('rspec')
require('definition')

describe(Definition) do

  describe('#initialize') do
    it("accepts a word type and definition") do
      @def = Definition.new('n', 'a rodent')
      expect(@def.word_type()).to(eq('n'))
    end
  end

  describe('.all') do
    it("creates a new instance and adds it to the Definition collection") do
      @def = Definition.new('v', 'to tell on someone')
      @def.save()
      expect(Definition.all().include? (@def)).to(eq(true))
    end
  end

  describe('.clear') do
    it('removes all definitions from the collection') do
      Definition.clear()
      expect(Definition.all().length()).to(eq(0))
    end
  end
end

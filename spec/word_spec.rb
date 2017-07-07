require('rspec')
  require('word')
  require('definition')

  describe('Word') do
    before() do
     Word.clear()
   end

   describe("#word") do
     it("returns the inputted word") do
       test_word = Word.new({:word=> "Cow"})
       expect(test_word.word()).to(eq("Cow"))
     end
   end

   describe("#meanings") do
     it("initially returns an empty array of definitions for the words") do
       test_word = Word.new({:word=> "Cow"})
       expect(test_word.meanings()).to(eq([]))
     end
   end

   describe(".all") do
      it("is empty at first") do
        expect(Word.all()).to(eq([]))
      end
    end

  describe("#save") do
    it("adds a word to the array of saved words") do
      test_word = Word.new({:word=> "Cow"})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved words") do
      Word.new({:word=> "Cow"}).save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a word by its id number") do
    test_word = Word.new({:word=> "Cow"})
      test_word.save()
      test_word2 = Word.new({:word=> "Apple"})
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end

  describe('#add_definition') do
     it("adds a new definition to a word") do
       test_word = Word.new({:word=> "Cow"})
       test_definition = Definition.new("a fully grown female animal of a domesticated breed of ox, used as a source of milk or beef")
       test_word.add_definition(test_definition)
       expect(test_word.meanings()).to(eq([test_definition]))
     end
   end

  end

require('rspec')
  require('word')

  describe('Word') do
    before() do
     Word.clear()
   end

   describe("#word") do
     it("returns the inputted word") do
       test_word = Word.new("Cow")
       expect(test_word.word()).to(eq("Cow"))
     end
   end

   describe(".all") do
      it("is empty at first") do
        expect(Word.all()).to(eq([]))
      end
    end

  describe("#save") do
    it("adds a word to the array of saved words") do
      test_word = Word.new("Cow")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved words") do
      Word.new("Cow").save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  end

require('rspec')
  require('definition')

  describe(Definition) do
    before() do
      Definition.clear()
    end

    describe("#definition") do
      it("returns the definition of a word") do
        test_definition = Definition.new("a fully grown female animal of a domesticated breed of ox, used as a source of milk or beef.")
        expect(test_definition.definition()).to(eq("a fully grown female animal of a domesticated breed of ox, used as a source of milk or beef."))
      end
    end

    describe("#save") do
      it("adds a definition to a word") do
        test_definition = Definition.new("a fully grown female animal of a domesticated breed of ox, used as a source of milk or beef.")
        test_definition.save()
        expect(Definition.all()).to(eq([test_definition]))
      end
    end

    describe(".all") do
      it("is empty at first") do
        expect(Definition.all()).to(eq([]))
      end
    end

    describe(".clear") do
      it("empties out all the saved definitions") do
        Definition.new("a fully grown female animal of a domesticated breed of ox, used as a source of milk or beef.").save()
        Definition.clear()
        expect(Definition.all()).to(eq([]))
      end
    end

    describe(".find") do
     it("returns a definition by its id number") do
       test_definition = Definition.new("a fully grown female animal of a domesticated breed of ox, used as a source of milk or beef.")
       test_definition.save()
       test_definition2 = Definition.new("the round fruit of a tree of the rose family, which typically has thin red or green skin and crisp flesh")
       test_definition2.save()
       expect(Definition.find(test_definition.id())).to(eq(test_definition))
     end
   end
  end

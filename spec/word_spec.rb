require('rspec')
require('word')

describe('Word') do
  
  before(:each) do
    Word.clear
  end

  describe('.find') do
    it('searches for a word by id') do
      word1 = Word.new('bubble',nil)
      word1.save
      expect(Word.find(word1.id)).to(eq(word1))
    end
  end

end
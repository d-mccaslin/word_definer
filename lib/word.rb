class Word
  attr_accessor :name, :id

  @@words = {}
  @@rows = 0

  def initialize(name, id)
    @name = name
    @id = id || @@rows += 1
  end

  def save
    @@words[self.id] = Word.new(self.name,self.id)
  end

  def self.clear
    @@words = {}
    @@rows = 0
  end

  def self.find(id)
    @@words[id]
  end

end
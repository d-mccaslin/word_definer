class Word
  attr_accessor :name, :id

  @@words = {}
  @@rows = 0

  def initialize(name, id)
    @name = name
    @id = id || @@rrows += 1
  end

  def self.clear
    @@words = {}
    @@rows = 0
  end

end
class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(name:,type:, id:, db:)
    @name = name 
    @type = type 
    @id = id
    @db = db
  end
  
  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?)
      
    SQL
    db.execute(sql, name, type)
  end
  
  def self.find(id, db)
    sql = <<-SQL 
      SELECT * FROM pokemon 
      WHERE id =?
    SQL

    pokemon = db.execute(sql, id)
    
    new_pokemon = Pokemon.new(id: id, name: pokemon[0][1], type: pokemon[0][2], db: db)
    new_pokemon
  end
  
end

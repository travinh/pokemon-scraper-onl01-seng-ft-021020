class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
<<<<<<< HEAD
  def initialize(name:,type:, id:, db:)
=======
  def initialize(name,type, id= nil, db)
>>>>>>> 778a08ebc9a462be1e84ae08ddf8de98f171a79b
    @name = name 
    @type = type 
    @id = id
    @db = db
  end
  
<<<<<<< HEAD
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
=======
  def self.save 
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES name = ?, type = ?
      
    SQL
    db.execute(sql, self.name, self.type)
  end
  
  def self.find 
>>>>>>> 778a08ebc9a462be1e84ae08ddf8de98f171a79b
  end
  
end

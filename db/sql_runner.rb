require('pg')
class SqlRunner

  def self.run( sql )
    begin
      db = PG.connect(ENV['DATABASE_URL'])
      result = db.exec( sql )
    ensure
      db.close
    end
    return result
  end

end

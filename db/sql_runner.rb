require('pg')
class SqlRunner

  def self.run( sql )

    begin
      if ENV['RACK_ENV'] == 'development'
        db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
      else
        db = PG.connect(ENV['DATABASE_URL'])
      end
      result = db.exec( sql )
    ensure
      db.close
    end
    return result
  end

end

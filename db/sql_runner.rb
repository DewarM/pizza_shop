require('pg')
class SqlRunner

  def self.run( sql )
    begin
      db = PG.connect({ dbname: 'dlcaih0192iou', host: ENV['DATABASE_URL'] || 'localhost' })
      result = db.exec( sql )
    ensure
      db.close
    end
    return result
  end

end

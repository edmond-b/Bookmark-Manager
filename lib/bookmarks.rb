require 'pg'

class Bookmarks
  def self.all
    con = PG.connect :dbname => 'bookmark_manager', :user => 'student'
    rs = con.exec "SELECT url FROM bookmarks"
    array = []
    
    rs.each do |row|
      array << row['url']
    end

    array
  end
end

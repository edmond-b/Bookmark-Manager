require 'pg'

class Bookmarks
  def self.all

    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test', :user => 'student'
    else
      con = PG.connect :dbname => 'bookmark_manager', :user => 'student'
    end
    
    rs = con.exec "SELECT url FROM bookmarks"
    array = []

    rs.each do |row|
      array << row['url']
    end

    array
  end
end

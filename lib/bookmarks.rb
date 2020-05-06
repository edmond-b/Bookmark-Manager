require 'pg'

class Bookmarks
  TEST_ADD_URL = "www.twitter.com"
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test', :user => 'postgres', :password => 'Pg5429671'
    else
      con = PG.connect :dbname => 'bookmark_manager', :user => 'postgres', :password => 'Pg5429671'
    end

    rs = con.exec "SELECT url FROM bookmarks"
    array = []

    rs.each do |row|
      array << row['url']
    end

    array
  end

  def self.create(url)
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test', :user => 'postgres', :password => 'Pg5429671'
    else
      con = PG.connect :dbname => 'bookmark_manager', :user => 'postgres', :password => 'Pg5429671'
    end
    rs = con.exec "INSERT INTO bookmarks (url) VALUES ('#{url}')"
  end
end

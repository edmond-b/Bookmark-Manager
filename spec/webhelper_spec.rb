def empty_and_fill_table
    con = PG.connect :dbname => 'bookmark_manager_test', :user => 'postgres', :password => 'Pg5429671'
    rs = con.exec "TRUNCATE TABLE bookmarks;"
    rs = con.exec "INSERT INTO bookmarks (url) VALUES ('www.google.com'), ('www.facebook.com'), ('www.netflix.com');"
end

feature 'User can view list of bookmarks' do
  scenario 'User views homepage' do
    visit('/bookmarks')
    con = PG.connect :dbname => 'bookmark_manager', :user => 'student'
    rs = con.exec "SELECT url FROM bookmarks"

    rs.each do |row|
      expect(page).to have_content row['url']
    end

    # expect(page).to have_content("youtube.com")
    # expect(page).to have_content("google.com")
    # expect(page).to have_content("makersacademy.com")
  end
end

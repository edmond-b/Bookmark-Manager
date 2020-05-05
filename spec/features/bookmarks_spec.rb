feature 'User can view list of bookmarks' do
  scenario 'User views homepage' do
    visit('/bookmarks')
    empty_and_fill_table
    # con = PG.connect :dbname => 'bookmark_manager', :user => 'student'
    # rs = con.exec "SELECT url FROM bookmarks"

    # rs.each do |row|
    #   expect(page).to have_content row['url']
    # end

    expect(page).to have_content("www.google.com")
    expect(page).to have_content("www.facebook.com")
    expect(page).to have_content("www.netflix.com")
  end
end

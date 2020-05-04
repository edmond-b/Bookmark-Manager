feature 'User can view list of bookmarks' do
  scenario 'User views homepage' do
    visit('/bookmarks')
    expect(page).to have_content("youtube.com") 
    expect(page).to have_content("google.com")
    expect(page).to have_content("twitter.com")
  end
end

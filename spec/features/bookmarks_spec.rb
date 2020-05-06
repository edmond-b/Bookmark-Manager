feature 'User can view list of bookmarks' do
  scenario 'User views homepage' do
    visit('/bookmarks')
    empty_and_fill_table

    expect(page).to have_content("www.google.com")
    expect(page).to have_content("www.facebook.com")
    expect(page).to have_content("www.netflix.com")
  end

  scenario 'Add a bookmark' do
    visit('/bookmarks')
    click_button('Add Bookmark')
    fill_in 'URL', with: 'www.youtube.com'
    click_button('Submit')
    expect(page).to have_content('www.youtube.com')
  end
end

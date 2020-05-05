require 'bookmarks'
require 'pg'

describe Bookmarks do
  it "shows a list of URL's" do
    empty_and_fill_table
    # con = PG.connect :dbname => 'bookmark_manager', :user => 'student'
    # rs = con.exec "SELECT url FROM bookmarks"
    # array = []
    # rs.each do |row|
    #   array << row['url']
    # end
    # expect(Bookmarks.all).to eq(array)
    bookmarks = ["www.google.com", "www.facebook.com", "www.netflix.com"]
    expect(Bookmarks.all).to eq(bookmarks)
  end
end

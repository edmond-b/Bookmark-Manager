require 'bookmarks'
require 'pg'

describe Bookmarks do
  it "shows a list of URL's" do
    empty_and_fill_table
    bookmarks = ["www.google.com", "www.facebook.com", "www.netflix.com"]
    expect(Bookmarks.all).to eq(bookmarks)
  end

  describe ".create" do
    it "adds a new bookmark" do
       Bookmarks.create(Bookmarks::TEST_ADD_URL)
       bookmarks = [ \
                     "www.google.com", "www.facebook.com", \
                     "www.netflix.com", Bookmarks::TEST_ADD_URL \
                   ]
       expect(Bookmarks.all).to eq(bookmarks)
    end
  end
end

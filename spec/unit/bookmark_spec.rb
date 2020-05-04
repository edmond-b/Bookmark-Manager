require 'bookmarks'

describe Bookmarks do
  it "shows a list of URL's" do
    bookmarks = ["youtube.com", "google.com", "twitter.com"]
    expect(Bookmarks.all).to eq(bookmarks)
  end
end

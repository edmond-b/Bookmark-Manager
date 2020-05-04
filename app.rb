require 'sinatra/base'
require_relative './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb(:index)
  end

  run! if app_file == $0
end

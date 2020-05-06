require 'sinatra/base'
require_relative './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb(:index)
  end

  get '/add_bookmark' do
    "<form action='/add_bookmark' method='post'> \
    <input type='text' name='URL'> \
    <input type='submit' value='Submit'> \
    </form>"
  end

  post '/add_bookmark' do
    Bookmarks.create(params[:URL])
    Bookmarks.all
  end

  run! if app_file == $0
end

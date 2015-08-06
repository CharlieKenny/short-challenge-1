require 'sinatra/base'
require 'sinatra'

set :views, proc { File.join(root, '', './app/views') }

class MrSporter < Sinatra::Base
  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

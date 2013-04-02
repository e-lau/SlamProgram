require 'sinatra'
require 'slim'
require 'sass'


set :public_folder, File.dirname(__FILE__) + '/public'
set :views, File.dirname(__FILE__) + '/views/'


get '/' do
  slim :index
end

get '/stylesheets/*' do
  content_type 'text/css'
  sass '../stylesheets/'.concat(params[:splat].join.chomp('.css')).to_sym
end

not_found do
  slim :error404
end

require 'sinatra'
require 'sinatra/activerecord'


class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  set :database, "sqlite3:///development.sqlite3"

  post '/events' do
    
  end


end
require 'sinatra/activerecord'
require 'sinatra/base'
require './models/event.rb'
require './models/event_property.rb'


class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  set :database, "sqlite3:///development.sqlite3"

  set :views, settings.root + '/../views'
  set :public_folder, settings.root + '/../public'

  get '/events' do
    #create an instance of the event
    event = Event.new(name: params[:name])
    event.save
    # name and value are already defined
    # they are just being passed in
    params.each do |name, value|
      # create an instance
      ep = event.event_properties.new
      # save the passed variables to the new object
      ep.name = name
      ep.value = value
      ep.save
    end
    ''
  end

  get '/admin' do 

    events = Event.all
    event_names = ""

    events.each do |event|
      name = event.name
      event_names << "#{name}"
    end
    event_names
  end

  get '/info' do

    @events = Event.all
    erb :index

  end

end
require 'bundler'

require_relative 'gossip.rb'

class Applicationcontroller < Sinatra::Base

  get '/' do
  
   erb :index

   end

  get '/gossips/new/' do

   erb :new_gossip

   end

   
  post '/gossips/new/' do

  	Gossip.new("alex", "salut")

  	
 end   


   end

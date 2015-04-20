require 'bundler'
Bundler.require()

# ** Connection **
ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :database => "vacations_db")

# ** Models **
require './models/visit.rb'

get '/' do
  erb :index
end

get '/api/users' do
  content_type :json
  users = User.all
  users.to_json
end

get '/api/users/:id' do
  content_type :json
  user = User.find(params[:id])
  user.to_json
end

post '/api/users' do
  content_type :json
  user = User.create(params[:user])
  user.to_json
end

put '/api/users/:id' do
  content_type :json
  user = User.find(params[:id])
  user.update(paraams[:user])
  user.to_json
end

patch '/api/users/:id' do
  content_type :json
  user = User.find(params[:id])
  user.update(paraams[:user])
  user.to_json
end

delete '/api/users/:id' do
  content_type :json
  user = User.find(params[:id])
  user.destroy
end

get '/api/locations' do
  content_type :json
  loc = Location.all
  loc.to_json
end

get '/api/locations/:id' do
  content_type :json
  loc = Location.find(params[:id])
  loc.to_json
end

post '/api/locations' do
  content_type :json
  loc = Location.create(params[:location])
  loc.to_json
end

put '/api/locations/:id' do
  content_type :json
  loc = Location.find(params[:id])
  loc.update(params[:location])
  loc.to_json
end

patch '/api/locations/:id' do
  content_type :json
  loc = Location.find(params[:id])
  loc.update(params[:location] )
  loc.to_json
end

delete '/api/locations/:id' do
  content_type :json
  loc = Location.find(params[:id])
  loc.destroy
end

get '/api/visits' do
  content_type :json
  visits = Visit.all
  visits.to_json
end

get '/api/visits/:id' do
  content_type :json
  visit = Visit.find(params[:id])
  visit.to_json
end

post '/api/visits' do
  content_type :json
  visit = Visit.create(params[:visit])
  visit.to_json
end

put '/api/visits/:id' do
  content_type :json
  visit = Visit.find(params[:id])
  visit.update(params[:visit])
  visit.to_json
end

patch '/api/visits/:id' do
  content_type :json
  visit = Visit.find(params[:id])
  visit.update(params[:user])
  visit.to_json
end

delete '/api/visits/:id' do
  content_type :json
  visit = Visit.create(params[:visit])
  visit.destroy
end

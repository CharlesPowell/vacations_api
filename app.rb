require 'bundler'
Bundler.require()

# ** Connection **
ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :database => "todo_list")

# ** Models **
require './models/visit.rb'

get '/get/users' do
  content_type :json
  User.all.to_json
end

get '/get/users/:id' do
  content_type :json
  User.find(params[:id]).to_json
end

post '/get/users' do
  content_type :json
  User.create(params[:user]).to_json
  #user =
  # user.to_json
end

put '/get/users' do
  content_type :json
  user = User.find(:id)
  user.update(paraams[:user])
  user.to_json
end

patch '/get/users' do
  content_type :json
  user = User.find(:id)
  user.update(paraams[:user])
  user.to_json
end

delete '/get/users' do
  content_type :json
  user = User.find(:id)
  user.destroy
end

get '/get/locations' do
  content_type :json
  Location.all.to_json
end

get '/get/locations/:id' do
  content_type :json
  Location.find(params[:id]).to_json
end

post '/get/locations' do
  content_type :json
  Location.create(params[:location]).to_json
end

put '/get/locations' do
  content_type :json
  loc = Location.find(:id)
  loc.update(params[:location])
  loc.to_json
end

patch '/get/locations' do
  content_type :json
  loc = Location.find(:id)
  loc.update(params[:location] )
  loc.to_json
end

delete '/get/locations' do
  content_type :json
  loc = User.find(:id)
  loc.destroy
end

get '/get/visits' do
  content_type :json
  Visit.all.to_json
end

get '/get/visits/:id' do
  content_type :json
  Visit.find(params[:id]).to_json
end

post '/get/visits' do
  content_type :json
  Visit.create(params[:visit]).to_json
end

put '/get/visits' do
  content_type :json
  visit = Visit.find(:id)
  visit.update(params[:visit])
  visit.to_json
end

patch '/get/visits' do
  content_type :json
  visit = Visit.find(:id)
  visit.update(params[:user])
  visit.to_json
end

delete '/get/visits' do
  content_type :json
  visit = Visit.create(params[:visit])
  visit.destroy
end

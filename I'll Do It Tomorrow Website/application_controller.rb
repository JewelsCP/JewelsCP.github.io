require 'bundler'
Bundler.require
class MyApp < Sinatra::Base

  get '/' do
    erb :tasks
  end
  post '/' do

  @user_task= params[:name]
  @user_time= params[:TimeDue]
  @user_class= params[:Class]

  erb :tasks
  end
end

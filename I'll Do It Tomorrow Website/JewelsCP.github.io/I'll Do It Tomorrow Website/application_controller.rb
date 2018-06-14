
# class Time_mangment
require 'bundler'
Bundler.require
require_relative
class MyApp < Sinatra::Base
get '/' do
  erb :index
end

post '/index' do

  @user_task= params[:name]
  @user_time= params[:TimeDue]
  @user_class= params[:Class]

erb :index
end

end



# get "/Hello/:name" do
#   @user_name = params[:name]
#   "Hello
#   #{@user_name}!"
# end
#
#https://github.com/plataformatec/devise/wiki/How-To:-Allow-users-to-sign-in-using-their-username-or-email-address
#
# class ApplicationController < ActionController::Base
#   before_action :configure_permitted_parameters, if: :devise_controller?
#
#   protected
#
#   def configure_permitted_parameters
#     added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
#     devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
#     devise_parameter_sanitizer.permit :account_update, keys: added_attrs
#   end
#
#
#   config.authentication_keys = [ :login ]
#
# attr_writer :login
#
#   def login
#     @login || self.username || self.email
#   end
#
#
#   validate :validate_username
#
#   def validate_username
#     if User.where(email: username).exists?
#       errors.add(:username, :invalid)
#     end
#   end

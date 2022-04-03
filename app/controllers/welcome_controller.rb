class WelcomeController < ApplicationController
  def homepage
    pp session[:user_id]
    @user = User.find(session[:user_id]) if session[:user_id]
  end
end

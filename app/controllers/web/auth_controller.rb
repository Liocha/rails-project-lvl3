class Web::AuthController < ApplicationController
  def callback
    email = auth[:info][:email].downcase
    nickname = auth[:info][:nickname]
    @user = User.find_by(email: email)

    unless  @user
      @user = User.new(email: email, name: nickname)
      @user.save
    end

    session[:user_id] = @user.id
    redirect_to root_url, flash: { success: 'Вы успешно вошли!' }
  end

  def sign_out
    session.delete(:user_id)
    session.clear
    redirect_to root_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end

# frozen_string_literal: true

module AuthConcern
  def sign_in(_user)
    session[:user_id] = user_id
  end

  def sign_out
    session.delete(:user_id)
    session.clear
  end
end

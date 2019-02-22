# coding: utf-8
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    # ユーザーログイン後にユーザー情報のページにリダイレクトする
      user_url user
    else
      flash[:danger] = 'Invalid email/password combination' # 本当は正しくない

      render 'new'
    end
  end
end

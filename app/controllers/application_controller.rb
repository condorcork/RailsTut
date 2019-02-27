# coding: utf-8
class ApplicationController < ActionController::Base
#  protect_from_forgery with: :exception    自動で　セットされない
  protect_from_forgery with: :exception
## 
  include SessionsHelper

end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :new_form
  before_action :new_post

  def new_form
    @post = Post.new
  end

  def new_post
    @posts = Post.all
  end
end

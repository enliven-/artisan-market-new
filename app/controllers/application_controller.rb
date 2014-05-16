class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end


  def tasks
    render 'static/tasks'
  end


  def inbox
    render 'static/inbox'
  end

  def compose
    render 'static/compose'
  end

  def read
    render 'static/single_mail'
  end

end

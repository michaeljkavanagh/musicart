class UserController < ApplicationController
  def login
  end

  def admin_login
    session[:login] = 1
    session[:cart] = nil
    flash[:notice] = "Admin user successfully logged in, cart reset."
    redirect_to :controller => :items
  end

  def logout
    session[:login] = nil
    session[:cart] = nil
    flash[:notice] = "User logged out, cart reset."
    redirect_to :controller => :welcome
  end
  
  def purchase
    session[:login] = nil
    session[:cart] = nil
    flash[:notice] = "Thanks for purchasing, cart reset."
    redirect_to :controller => :site, :action => :thanks
  end
end
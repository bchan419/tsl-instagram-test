require 'instagram'

class FeedController < ApplicationController 
  
  def index    
    if session[:access_token] 
      redirect_to :controller=>'feed', :action=>'home'
    end
  end
    
  def home  
    client = Instagram.client(:access_token => session[:access_token])
    @user = client.user
    @user_recent_media = client.user_recent_media  
  end
  
  
end
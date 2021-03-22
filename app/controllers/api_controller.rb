class ApiController < ApplicationController
  def index
  end

  def users
    url = "https://api.github.com/users"
    client_id = 'Iv1.18206e9ce3d902e7'
    client_secret = 'cf0d5b46bf68a2167d4b2515cf7ad1c2dbd1d447'
    
      #@list2 = HTTParty.get "#{url}?client_id=#{client_id}&client_secret=#{client_secret}"
      @list2 = HTTParty.get "https://api.github.com/users?since=0&per_page=100"
        
      respond_to do |format|
        format.html 
        format.json 
      end
    
  end

  def repositories
    url = "https://api.github.com/repositories"
    client_id = 'Iv1.18206e9ce3d902e7'
    client_secret = 'cf0d5b46bf68a2167d4b2515cf7ad1c2dbd1d447'
    
    @repo = HTTParty.get "#{url}?client_id=#{client_id}&client_secret=#{client_secret}"
         
    respond_to do |format|
      format.html 
      format.json 
    end
  end

  def show
    url = "https://api.github.com/users"
    client_id = 'Iv1.18206e9ce3d902e7'
    client_secret = 'cf0d5b46bf68a2167d4b2515cf7ad1c2dbd1d447'
        
    @user = HTTParty.get "#{url}/#{params[:id]}?client_id=#{client_id}&client_secret=#{client_secret}"
       
    respond_to do |format|
      format.html 
      format.json 
    end
  end
end

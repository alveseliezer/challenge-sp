class ApiController < ApplicationController
  require 'octokit'
  def index
  end

  def users
    client = Octokit::Client.new :access_token => ENV['MY_CODE']   
    @page = params.fetch(:page, 1).to_i
    @list_users  = client.search_users('users', :per_page => 5, :page => @page)
    
    @total_count = @list_users.total_count    
     
    last_response = client.last_response
    @number_of_pages = last_response.rels[:last].href.match(/page=(\d+).*$/)[1]
      
  end

  def repositories
   
    client = Octokit::Client.new :access_token => ENV['MY_CODE']   
    @page = params.fetch(:page, 1).to_i
    @repo  = client.search_users('repositories', :per_page => 5, :page => @page)
    
    @total_count = @repo.total_count
        
    last_response = client.last_response
    @number_of_pages = last_response.rels[:last].href.match(/page=(\d+).*$/)[1]
   
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
    
    @public_repositories = HTTParty.get "#{url}/#{params[:id]}/#{"repos"}?client_id=#{client_id}&client_secret=#{client_secret}"
    
    #@list_repos = HTTParty.get "#{@public_repositories}?client_id=#{client_id}&client_secret=#{client_secret}"
    #client = Octokit::Client.new :access_token => ENV['MY_CODE']   
  
   #@user  = client.search_users("#{params[:id]}?client_id=#{client_id}")
  end
end

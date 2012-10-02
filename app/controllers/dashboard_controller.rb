class DashboardController < ApplicationController
  protect_from_forgery

  def show
    if logged_in?
      redirect_to films_path
    end
	end

  def auth
    Netflix::Client.consumer_key = 'ugzaqgu56xxaupgtmbsbknep'
    Netflix::Client.consumer_secret = 'czaqTdmUu4'

    request_token, auth_url = Netflix::Client.new.oauth_via_callback('http://localhost:3000/films')
    session[:request_token] = request_token
    redirect_to auth_url
  end

  def logged_in?
    session[:request_token].present?
  end

end

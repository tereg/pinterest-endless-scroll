require 'httparty'

module PinsHelper
  include HTTParty

  def remote_file_exists?(url)
    p "*" * 80
    p url
    p "&" * 80
    response = HTTParty.get(url)
    response.code == 200 
  end
end 
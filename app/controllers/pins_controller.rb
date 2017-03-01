class PinsController < ApplicationController
  include PinsHelper
  @@pins = JSON.parse(File.read("app/assets/javascripts/pins_formatted.json"))

  def index
    @pins = @@pins.paginate(:page => params[:page], :per_page => 10)
  end 
end

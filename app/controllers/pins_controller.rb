class PinsController < ApplicationController
  @@pins = JSON.parse(File.read("app/assets/javascripts/pins_formatted.json"))

  def index
    @pins = @@pins
  end 
end

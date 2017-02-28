class PinsController < ApplicationController
  @@pins = File.read("app/assets/javascripts/pins_formatted.json")

  def index
    @pins = @@pins
  end 
end

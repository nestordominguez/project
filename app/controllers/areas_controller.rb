class AreasController < ApplicationController
  before_action :set_area, only: [:show, :edit, :update, :destroy]
  
  def new
  	@area = Area.new  	
  end
end

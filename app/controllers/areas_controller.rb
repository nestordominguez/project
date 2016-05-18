class AreasController < ApplicationController
  before_action :set_area, only: [:show, :edit, :update, :destroy]
  
  def new
  	@area = Area.new  	
  end
  def create
    @area = current_user.area.build(area_params) ##cahnge this code

    respond_to do |format|
      if @area.save
        format.html { redirect_to incident_path(@area.incident), notice: 'area was successfully created.' }
        format.json { render :show, status: :created, location: @area }
      else
        format.html { render :new }
        format.json { render json: @area.errors, status: :unprocessable_entity }
      end
    end
  end
end

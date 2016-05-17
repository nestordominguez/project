class IncidentsController < ApplicationController
  before_action :set_incident, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_any!
  include ApplicationHelper

  # GET /incidents
  # GET /incidents.json
  def index
    @incidents = Incident.all
    @users = User.all
  end

  # GET /incidents/1
  # GET /incidents/1.json
  def show
    @comments = Comment.all
  end

  # GET /incidents/new
  def new
    @incident = Incident.new
  end

  # GET /incidents/1/edit
  def edit
  end

  # POST /incidents
  # POST /incidents.json
  def create
    #@incident = Incident.new(incident_params)
    if current_user
      @incident = current_user.incidents.build(incident_params)
    else
      @incident = current_admin.incidents.build(incident_params)
    end
    

    respond_to do |format|
      if @incident.save
        format.html { redirect_to @incident, notice: 'Incident was successfully created.' }
        format.json { render :show, status: :created, location: @incident }
      else
        format.html { render :new }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidents/1
  # PATCH/PUT /incidents/1.json
  def update
    respond_to do |format|
      if @incident.update(incident_params)
        format.html { redirect_to @incident, notice: 'Incident was successfully updated.' }
        format.json { render :show, status: :ok, location: @incident }
      else
        format.html { render :edit }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidents/1
  # DELETE /incidents/1.json
  def destroy
    @incident.destroy
    respond_to do |format|
      format.html { redirect_to incidents_url, notice: 'Incident was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update_user
    if current_user
      @user = User.find(current_user.id)
    else
      @user = Admin.find(current_admin.id)
    end
    @user.showall =  !@user.showall
    respond_to do |format|
      if @user.save
        format.html { redirect_to incidents_path }
        format.json { render :index, status: :ok}
      else
        format.html { render :edit }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incident
      @incident = Incident.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incident_params
      params.require(:incident).permit(:priority, :title, :content)
    end
end

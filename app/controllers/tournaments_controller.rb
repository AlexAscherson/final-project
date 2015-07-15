class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :edit, :update, :destroy]

  def jointournament
    @group = Group.find(params['group_id'])
    @tournament = Tournament.find(params[:id])

    # @group.join
    if @tournament.users.exists?(current_user.id)
      @tournament.users.delete(current_user)
    else
      @tournament.users << current_user
    end
    respond_to do | format |
      format.js
    end
    
  end

  # GET /tournaments
  # GET /tournaments.json
  def index
    @group = Group.find(params['group_id'])
    @tournaments = Tournament.all
  end

  # GET /tournaments/1
  # GET /tournaments/1.json
  def show
    @group = Group.find(params['group_id'])

  end

  # GET /tournaments/new
  def new
    @tournament = Tournament.new
    @group = Group.find(params['group_id'])
  end

  # GET /tournaments/1/edit
  def edit
        @group = Group.find(params['group_id'])

  end

  # POST /tournaments
  # POST /tournaments.json
  def create
    @tournament = Tournament.new(tournament_params)
    @group = Group.find(params['group_id'])

    respond_to do |format|
      if @tournament.save
        format.html { redirect_to group_tournament_path(@group, @tournament), notice: 'Tournament was successfully created.' }
        format.json { render :show, status: :created, location: @tournament }
      else
        format.html { render :new }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tournaments/1 
  # PATCH/PUT /tournaments/1.json
  def update
    @group = Group.find(params['group_id'])
    respond_to do |format|  
      if @tournament.update(tournament_params)
        format.html { redirect_to group_tournament_path(@group, @tournament), notice: 'Tournament was successfully updated.' }
        format.json { render :show, status: :ok, location: @tournament }
      else
        format.html { render :edit }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tournaments/1
  # DELETE /tournaments/1.json
  def destroy
    @tournament.destroy
    respond_to do |format|
      format.html { redirect_to tournaments_url, notice: 'Tournament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament
      @tournament = Tournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_params
      params.require(:tournament).permit(:name, :creator_id, :event_description, :imageurl, :start_date, :end_date, :group_id, :stake, user_id:[])
    end
end

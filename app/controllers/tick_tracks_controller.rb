class TickTracksController < ApplicationController
  # GET /tick_tracks
  # GET /tick_tracks.json
  def index
    @tick_tracks = TickTrack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tick_tracks }
    end
  end

  # GET /tick_tracks/1
  # GET /tick_tracks/1.json
  def show
    @tick_track = TickTrack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tick_track }
    end
  end

  # GET /tick_tracks/new
  # GET /tick_tracks/new.json
  def new
    @tick_track = TickTrack.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tick_track }
    end
  end

  # GET /tick_tracks/1/edit
  def edit
    @tick_track = TickTrack.find(params[:id])
  end

  # POST /tick_tracks
  # POST /tick_tracks.json
  def create
    @tick_track = TickTrack.new(params[:tick_track])

    respond_to do |format|
      if @tick_track.save
        format.html { redirect_to tick_tracks_url }
        format.json { render json: @tick_track, status: :created, location: @tick_track }
      else
        format.html { render action: "new" }
        format.json { render json: @tick_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tick_tracks/1
  # PUT /tick_tracks/1.json
  def update
    @tick_track = TickTrack.find(params[:id])

    respond_to do |format|
      if @tick_track.update_attributes(params[:tick_track])
        format.html { redirect_to tick_tracks_url }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tick_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tick_tracks/1
  # DELETE /tick_tracks/1.json
  def destroy
    @tick_track = TickTrack.find(params[:id])
    @tick_track.destroy

    respond_to do |format|
      format.html { redirect_to tick_tracks_url }
      format.json { head :no_content }
    end
  end

  #PUT /tick_tracks/1/incTick
  def incTick
    @tick_track = TickTrack.find(params[:id])
    @tick_track.increment (:tick)
    @tick_track.save

    respond_to do |format|
      format.html { redirect_to tick_tracks_url }
      format.json { head :no_content }
    end
  end

  #PUT /tick_tracks/1/decTick
  def decTick
    @tick_track = TickTrack.find(params[:id])
    @tick_track.decrement (:tick) if @tick_track.tick > 0
    @tick_track.save

    respond_to do |format|
      format.html { redirect_to tick_tracks_url }
      format.json { head :no_content }
    end
  end

  def decAll
    @tick_tracks = TickTrack.all
    @tick_tracks.each do |tick_track|
      tick_track.decrement(:tick) if tick_track.tick > 0
      tick_track.save
    end
    respond_to do |format|
      format.html { redirect_to tick_tracks_url }
      format.json { head :no_content }
    end
  end

  #Lazy lazy numbers
  def incOne
    @tick_track = TickTrack.find(params[:id])
    @tick_track.tick += 1
    @tick_track.save

    respond_to do |format|
      format.html { redirect_to tick_tracks_url }
      format.json { head :no_content }
    end
  end

  def incTwo
    @tick_track = TickTrack.find(params[:id])
    @tick_track.tick += 2
    @tick_track.save

    respond_to do |format|
      format.html { redirect_to tick_tracks_url }
      format.json { head :no_content }
    end
  end

  def incThree
    @tick_track = TickTrack.find(params[:id])
    @tick_track.tick += 3
    @tick_track.save

    respond_to do |format|
      format.html { redirect_to tick_tracks_url }
      format.json { head :no_content }
    end
  end

  def incFour
    @tick_track = TickTrack.find(params[:id])
    @tick_track.tick += 4
    @tick_track.save

    respond_to do |format|
      format.html { redirect_to tick_tracks_url }
      format.json { head :no_content }
    end
  end

  def incFive
    @tick_track = TickTrack.find(params[:id])
    @tick_track.tick += 5
    @tick_track.save

    respond_to do |format|
      format.html { redirect_to tick_tracks_url }
      format.json { head :no_content }
    end
  end
end

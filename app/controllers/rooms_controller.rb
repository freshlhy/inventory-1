class RoomsController < ApplicationController
  before_filter :get_site
  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = @site.rooms.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rooms }
    end
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
    @room = @site.rooms.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @room }
    end
  end

  # GET /rooms/new
  # GET /rooms/new.json
  def new
    @room = @site.rooms.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @room }
    end
  end

  # GET /rooms/1/edit
  def edit
    @room = @site.rooms.find(params[:id])
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = @site.rooms.new(params[:room])

    respond_to do |format|
      if @room.save
        format.html { redirect_to site_room_path(@site, @room), notice: 'Room was successfully created.' }
        format.json { render json: @room, status: :created, location: @room }
      else
        format.html { render action: "new" }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rooms/1
  # PUT /rooms/1.json
  def update
    @room = @site.rooms.find(params[:id])

    respond_to do |format|
      if @room.update_attributes(params[:room])
        format.html { redirect_to [@site, @room], notice: 'Room was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room = @site.rooms.find(params[:id])
    @room.destroy

    respond_to do |format|
      format.html { redirect_to site_rooms_path(@site) }
      format.json { head :ok }
    end
  end
  
  private
  def get_site
    @site = Site.find(params[:site_id]) if params[:site_id]
  end 
end

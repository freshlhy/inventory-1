class ScansController < ApplicationController
  # GET /scans
  # GET /scans.json
  before_filter :get_item
  
  def index
    @scans = @item.scans.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scans }
    end
  end

  # GET /scans/1
  # GET /scans/1.json
  def show
    @scan = @item.scans.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scan }
    end
  end

  # GET /scans/new
  # GET /scans/new.json
  def new
    @scan = @item.scans.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scan }
    end
  end

  # GET /scans/1/edit
  def edit
    @scan = @item.scans.find(params[:id])
  end

  # POST /scans
  # POST /scans.json
  def create
    @scan = @item.scans.new(params[:scan])
    @scan.archived = false
    respond_to do |format|
      if @scan.save
        if @item.serial? && @item.model
          format.html { redirect_to(item_path(@item), notice: 'Scan was successfully created.') }
          format.json { render json: @scan, status: :created, location: @scan }
        else
          format.html { redirect_to(edit_item_path(@item), notice: 'Scan was successfully created, item details missing!') }
          format.json { render json: @scan, status: :created, location: @scan }
        end
      else
        format.html { render action: "new" }
        format.json { render json: @scan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scans/1
  # PUT /scans/1.json
  def update
    @scan = @item.scans.find(params[:id])

    respond_to do |format|
      if @scan.update_attributes(params[:scan])
        format.html { redirect_to item_path(@item), notice: 'Scan was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @scan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scans/1
  # DELETE /scans/1.json
  def destroy
    @scan = @item.scans.find(params[:id])
    @scan.destroy

    respond_to do |format|
      format.html { redirect_to item_url(@item) }
      format.json { head :ok }
    end
  end
  
  private
  def get_item
    @item = Item.find_or_create_by_tag(params[:item_id].parameterize)
  end
end

class ModelsController < ApplicationController
  
  before_filter :get_manufacturer
  
  # GET /models
  # GET /models.json
  def index
    if @manufacturer
      @models = @manufacturer.models.all
    else
      @models = Model.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @models }
    end
  end

  # GET /models/1
  # GET /models/1.json
  def show
    @model = @manufacturer.models.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @model }
    end
  end

  # GET /models/new
  # GET /models/new.json
  def new
    @model = @manufacturer.models.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @model }
    end
  end

  # GET /models/1/edit
  def edit
    @model = @manufacturer.models.find(params[:id])
  end

  # POST /models
  # POST /models.json
  def create
    @model = @manufacturer.models.new(params[:model])

    respond_to do |format|
      if @model.save
        format.html { redirect_to manufacturer_model_path(@manufacturer, @model), notice: 'Model was successfully created.' }
        format.json { render json: @model, status: :created, location: @model }
      else
        format.html { render action: "new" }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /models/1
  # PUT /models/1.json
  def update
    @model = @manufacturer.models.find(params[:id])

    respond_to do |format|
      if @model.update_attributes(params[:model])
        format.html { redirect_to [@manufacturer, @model], notice: 'Model was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /models/1
  # DELETE /models/1.json
  def destroy
    @model = @manufacturer.models.find(params[:id])
    @model.destroy

    respond_to do |format|
      format.html { redirect_to manufacturer_models_path(@manufacturer) }
      format.json { head :ok }
    end
  end

  private
  
  def get_manufacturer
    @manufacturer = Manufacturer.find(params[:manufacturer_id]) if params[:manufacturer_id]
  end
end

class AttributeLayersController < ApplicationController
  before_action :set_attribute_layer, only: [:show, :edit, :update, :destroy]

  # GET /attribute_layers
  # GET /attribute_layers.json
  def index
    @attribute_layers = AttributeLayer.all
  end

  # GET /attribute_layers/1
  # GET /attribute_layers/1.json
  def show
  end

  # GET /attribute_layers/new
  def new
    @attribute_layer = AttributeLayer.new
  end

  # GET /attribute_layers/1/edit
  def edit
  end

  # POST /attribute_layers
  # POST /attribute_layers.json
  def create
    @attribute_layer = AttributeLayer.new(attribute_layer_params)

    respond_to do |format|
      if @attribute_layer.save
        format.html { redirect_to @attribute_layer, notice: 'Attribute layer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attribute_layer }
      else
        format.html { render action: 'new' }
        format.json { render json: @attribute_layer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attribute_layers/1
  # PATCH/PUT /attribute_layers/1.json
  def update
    respond_to do |format|
      if @attribute_layer.update(attribute_layer_params)
        format.html { redirect_to @attribute_layer, notice: 'Attribute layer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attribute_layer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_layers/1
  # DELETE /attribute_layers/1.json
  def destroy
    @attribute_layer.destroy
    respond_to do |format|
      format.html { redirect_to attribute_layers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute_layer
      @attribute_layer = AttributeLayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attribute_layer_params
      params.require(:attribute_layer).permit(:label, :palette_id)
    end
end

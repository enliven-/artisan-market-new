class AttributeLayersController < ApplicationController
  before_action :set_attribute_layer, only: [:show, :edit, :update, :destroy]
  before_action :set_palette

  # GET /attribute_layers
  # GET /attribute_layers.json
  def index
    @attribute_layers = @palette.attribute_layers.all
  end

  # GET /attribute_layers/1
  # GET /attribute_layers/1.json
  def show
    # @attribute_layer = @palette.attribute_layers.find(attribute_layer_params[:id])
  end

  # GET /attribute_layers/new
  def new
    @attribute_layer = @palette.attribute_layers.new
  end

  # GET /attribute_layers/1/edit
  def edit
    # @attribute_layer = @palette.attribute_layers.find(attribute_layer_params[:id])
  end

  # POST /attribute_layers
  # POST /attribute_layers.json
  def create
    @attribute_layer = @palette.attribute_layers.new(attribute_layer_params)

    respond_to do |format|
      if @attribute_layer.save
        format.html { redirect_to [@palette, @attribute_layer], notice: 'Attribute layer was successfully created.' }
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
    # @attribute_layer = @palette.attribute_layers.find(attribute_layer_params[:id])
    respond_to do |format|
      if @attribute_layer.update(attribute_layer_params)
        format.html { redirect_to [@palette, @attribute_layer], notice: 'Attribute layer was successfully updated.' }
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
    # @attribute_layer = @palette.attribute_layers.find(attribute_layer_params[:id])
    @attribute_layer.destroy
    respond_to do |format|
      format.html { redirect_to palette_attribute_layers_url(@palette) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palette
      @palette = Palette.find(params[:palette_id])
    end
    
    def set_attribute_layer
      @attribute_layer = AttributeLayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attribute_layer_params
      params.require(:attribute_layer).permit(:label, :palette_id)
    end
end

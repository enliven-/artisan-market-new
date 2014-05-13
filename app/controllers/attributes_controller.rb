class AttributesController < ApplicationController
  before_action :set_attribute, only: [:show, :edit, :update, :destroy]
  before_action :set_palette
  before_action :set_attribute_layer


  # GET /attributes
  # GET /attributes.json
  def index
    @attributes = @attribute_layer.palette_attributes.all
  end

  # GET /attributes/1
  # GET /attributes/1.json
  def show
  end

  # GET /attributes/new
  def new
    @attribute = @attribute_layer.palette_attributes.new
  end

  # GET /attributes/1/edit
  def edit
  end

  # POST /attributes
  # POST /attributes.json
  def create
    @attribute = @attribute_layer.palette_attributes.new(attribute_params)

    respond_to do |format|
      if @attribute.save
        format.html { redirect_to [@palette, @attribute_layer, @attribute], notice: 'Attribute was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attribute }
      else
        format.html { render action: 'new' }
        format.json { render json: @attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attributes/1
  # PATCH/PUT /attributes/1.json
  def update
    respond_to do |format|
      if @attribute.update(attribute_params)
        format.html { redirect_to @attribute, notice: 'Attribute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attributes/1
  # DELETE /attributes/1.json
  def destroy
    @attribute.destroy
    respond_to do |format|
      format.html { redirect_to palette_attribute_layer_attributes_url(@palette, @attribute_layer) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palette
      @palette = Palette.find(params[:palette_id])
    end

    def set_attribute_layer
      @attribute_layer = AttributeLayer.find(params[:attribute_layer_id])
    end

    def set_attribute
      @attribute = Attribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attribute_params
      params.require(:attribute).permit(:label, :attribute_layer_id)
    end
end

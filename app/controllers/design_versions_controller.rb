class DesignVersionsController < ApplicationController
  before_action :set_design_version, only: [:show, :edit, :update, :destroy]

  # GET /design_versions
  # GET /design_versions.json
  def index
    @design_versions = DesignVersion.all
  end

  # GET /design_versions/1
  # GET /design_versions/1.json
  def show
  end

  # GET /design_versions/new
  def new
    @design_version = DesignVersion.new
  end

  # GET /design_versions/1/edit
  def edit
  end

  # POST /design_versions
  # POST /design_versions.json
  def create
    @design_version = DesignVersion.new(design_version_params)

    respond_to do |format|
      if @design_version.save
        format.html { redirect_to @design_version, notice: 'Design version was successfully created.' }
        format.json { render action: 'show', status: :created, location: @design_version }
      else
        format.html { render action: 'new' }
        format.json { render json: @design_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /design_versions/1
  # PATCH/PUT /design_versions/1.json
  def update
    respond_to do |format|
      if @design_version.update(design_version_params)
        format.html { redirect_to @design_version, notice: 'Design version was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @design_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /design_versions/1
  # DELETE /design_versions/1.json
  def destroy
    @design_version.destroy
    respond_to do |format|
      format.html { redirect_to design_versions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design_version
      @design_version = DesignVersion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def design_version_params
      params.require(:design_version).permit(:project_id, :html, :comment_thread_count)
    end
end

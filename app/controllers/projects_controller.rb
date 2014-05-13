class ProjectsController < ApplicationController
  before_action :set_project,         only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!,  only: [:new,  :edit, :update, :create, :design]

  # GET /projects
  # GET /projects.json
  def index
    @projects = current_user.projects
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project              = Project.new(project_params)
    @project.artisan_id   = current_user.id

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @project }
      else
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end

  # GET /projects/1/design
  def design
    @design_version_id  = lambda { 
                            design_version = @project.design_versions.last
                            design_version.nil? ? 0 : design_version.id
                          }.call
    @palette            = @project.palettes.first
    @attribute_layers   = @palette.attribute_layers
    
    session[:design_version_id] = @design_version_id
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:label, :description, :artisan_id, :design_versions_count, :parent_project_id, :show_in_catalog, :product_category_id, :customer_id)
    end
end

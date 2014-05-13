class CommentThreadsController < ApplicationController
  before_action :set_comment_thread, only: [:show, :edit, :update, :destroy]

  # GET /comment_threads
  # GET /comment_threads.json
  def index
    @comment_threads = CommentThread.all
  end

  # GET /comment_threads/1
  # GET /comment_threads/1.json
  def show
  end

  # GET /comment_threads/new
  def new
    @comment_thread = CommentThread.new
  end

  # GET /comment_threads/1/edit
  def edit
  end

  # POST /comment_threads
  # POST /comment_threads.json
  def create
    @comment_thread = CommentThread.new(comment_thread_params)

    respond_to do |format|
      if @comment_thread.save
        format.html { redirect_to @comment_thread, notice: 'Comment thread was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comment_thread }
      else
        format.html { render action: 'new' }
        format.json { render json: @comment_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_threads/1
  # PATCH/PUT /comment_threads/1.json
  def update
    respond_to do |format|
      if @comment_thread.update(comment_thread_params)
        format.html { redirect_to @comment_thread, notice: 'Comment thread was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comment_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_threads/1
  # DELETE /comment_threads/1.json
  def destroy
    @comment_thread.destroy
    respond_to do |format|
      format.html { redirect_to comment_threads_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_thread
      @comment_thread = CommentThread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_thread_params
      params.require(:comment_thread).permit(:pin_x, :pin_y, :design_version_id)
    end
end

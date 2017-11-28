class ViewthreadsController < ApplicationController
  before_action :set_viewthread, only: [:show, :edit, :update, :destroy]

http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :create]
  # GET /viewthreads
  # GET /viewthreads.json

  def index
    @viewthreads = Viewthread.all
  end

  # GET /viewthreads/1
  # GET /viewthreads/1.json
  def show
  end

  # GET /viewthreads/new
  def new
    @viewthread = Viewthread.new
  end

  # GET /viewthreads/1/edit
  def edit
  end

  # POST /viewthreads
  # POST /viewthreads.json
  def create
    @viewthread = Viewthread.new(viewthread_params)

    respond_to do |format|
      if @viewthread.save
        format.html { redirect_to @viewthread, notice: 'Viewthread was successfully created.' }
        format.json { render action: 'show', status: :created, location: @viewthread }
      else
        format.html { render action: 'new' }
        format.json { render json: @viewthread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /viewthreads/1
  # PATCH/PUT /viewthreads/1.json
  def update
    respond_to do |format|
      if @viewthread.update(viewthread_params)
        format.html { redirect_to @viewthread, notice: 'Viewthread was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @viewthread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viewthreads/1
  # DELETE /viewthreads/1.json
  def destroy
    @viewthreads = Viewthread.find(params[:id])
    @viewthreads.destroy

    redirect_to viewthread_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viewthread
      @viewthread = Viewthread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def viewthread_params
      params.require(:viewthread).permit(:Subject, :Text, :CreatedBy)
    end

end

class DxidepanelController < ApplicationController
  before_action :set_viewthread, only: [:show, :edit, :update, :destroy]

  def index
    @viewthreads = Viewthread.all
  end

  def show
  end

  def edit
  end

  def destroy
    @viewthreads = Viewthread.find(params[:id])
    @viewthreads.destroy

    redirect_to dxidepanels_path
  end

  private
    def set_viewthread
      @viewthread = Viewthread.find(params[:id])
    end

    def viewthread_params
      params.require(:dxidepanel).permit(:Subject, :Text, :CreatedBy)
    end
end

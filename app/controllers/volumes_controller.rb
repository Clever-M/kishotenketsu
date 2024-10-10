class VolumesController < ApplicationController
  def new
    @novel = Novel.find(params[:novel_id])
    @volume = @novel.volumes.build
  end

  def create
    @volume = Volume.new volume_params

    respond_to do |format|
      if @volume.save
        format.html { redirect_to novel_url(@volume.novel), notice: "Volume was successfully created." }
        format.json { render :show, status: :created, location: @volume }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @volume.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  private

  def volume_params
    params.require(:volume).permit(:title, :description, :novel_id)
  end
end

class VolumesController < ApplicationController
  def new
    @novel = Novel.find(params[:novel_id])
    @volume = @novel.volumes.build
  end

  def create
  end

  def update
  end
end

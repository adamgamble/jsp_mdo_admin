class VolumesController < ApplicationController
  before_filter :load_volumes, :only => [:index]
  before_filter :load_volume, :only => [:show, :toggle_visibility]

private

  def load_volumes
    @volumes = Volume.submitted.order("DateSubmitted DESC").page(params[:page]).per(10)
  end

  def load_volume
    @volume = Volume.find params[:id]
  end

public

  def index
  end

  def show
  end

  def toggle_visibility
    @volume.toggle_visibility!
    redirect_to url_for(@volume)
  end
end

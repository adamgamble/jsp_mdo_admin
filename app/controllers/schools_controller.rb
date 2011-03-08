class SchoolsController < ApplicationController
  before_filter :load_school, :only => [:show]
  before_filter :load_volumes, :only => [:show]
private
  def load_school
    @school = School.find params[:id]
  end
  def load_volumes
    @volumes = @school.volumes
  end

public

  def show
  end
end

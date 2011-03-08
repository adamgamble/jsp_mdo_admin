class Volume < ActiveRecord::Base
  set_table_name "Volume"
  set_primary_key "ID_Volume"

  belongs_to :school, :foreign_key => "id_School"
  has_many :pages, :foreign_key => "id_Volume"

  def name
    self.NameVolume
  end

  def created_at
    self.DateCreated
  end

  def submitted_at
    self.DateSubmitted
  end

  def issue_name
    self.NameIssue
  end

  def number_of_pages
    self.NumberPages
  end

  def visible
    self.Visible
  end

  def visible= is_visible
    self.Visible = is_visible
  end

  def job_number
    self.id_Job
  end

  def visible?
    !!visible
  end

  def toggle_visibility!
    self.update_attribute(:Visible,!visible)
  end
end

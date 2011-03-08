class School < ActiveRecord::Base
  set_table_name "Schools"
  set_primary_key "ID_School"
  has_many :volumes, :foreign_key => "id_School"

  def name
    self.NameSchool
  end
end
